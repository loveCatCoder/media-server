
#include "RtspConnection.h"
#include <regex>

void RtspConnection::start() 
{
    do_read();
}

void RtspConnection::do_read() 
{
    auto self(shared_from_this());
    socket_.async_read_some(asio::buffer(data_, max_length),
    [this, self](std::error_code ec, std::size_t length)
    {
        if (!ec)
        {
            std::string st = data_;
            std::vector<string> param_all;
            split(st,param_all,"\r\n");
            // for(auto key:param_all)
            // {
            //     std::cout << key << std::endl;
            // }
            // std::cout << "------------------" << std::endl;
            std::vector<string> param_line;
            split(param_all[0],param_line," ");
            std::vector<string> param_cseq_line;
            split(param_all[1],param_cseq_line,":");
            REQUEST_INFO req_info;
            if(param_line[0] =="OPTIONS")
            {
                char res[1000] = {0};
                sprintf(res, "RTSP/1.0 200 OK\r\n"
                "CSeq: %s\r\n"
                "Public: OPTIONS, DESCRIBE, SETUP, PLAY\r\n"
                "\r\n",
                param_cseq_line[1].c_str());
                do_write(res,strlen(res));

            }
            else if (param_line[0] == "DESCRIBE")
            {
                char sdp[500] = {0};
                char res[1000] = {0};

                sprintf(sdp, "v=0\r\n"
                "o=- 9%ld 1 IN IP4 %s\r\n"
                "t=0 0\r\n"
                "a=control:*\r\n"
                "m=video 0 RTP/AVP 96\r\n"
                "a=rtpmap:96 H264/90000\r\n"
                "a=control:track0\r\n",
                time(NULL), "127.0.0.1");

                sprintf(res, "RTSP/1.0 200 OK\r\n"
                "CSeq: %s\r\n"
                "Content-Base: %s\r\n"
                "Content-type: application/sdp\r\n"
                "Content-length: %d\r\n\r\n"
                "%s",
                param_cseq_line[1].c_str(),
                param_line[1].c_str(),
                strlen(sdp),
                &sdp);
                do_write(res,strlen(res));
            }
            else if(param_line[0] == "SETUP")
            {
                char res[1000] = {0};
                regex pattern(".*=(\\d*)-(\\d*)");
                smatch result;
                std::string clientRtpPort,clientRtcpPort;
                if(regex_match(param_all[2],result,pattern))
                {
                    std::cout << "match success " << std::endl;
                    clientRtpPort = result[1].str();
                    clientRtcpPort = result[2].str();
                    std::cout << clientRtpPort << "  " << clientRtcpPort << std::endl;
                }
                sprintf(res, "RTSP/1.0 200 OK\r\n"
                "CSeq: %s\r\n"
                "Transport: RTP/AVP;unicast;client_port=%s-%s;server_port=%d-%d\r\n"
                "Session: 66334873\r\n"
                "\r\n",
                param_cseq_line[1].c_str(),
                clientRtpPort.c_str(),
                clientRtcpPort.c_str(),
                5678,
                5679);
                do_write(res,strlen(res));
            }
            else if(param_line[0] == "PLAY")
            {
                char res[1000] = {0};
                sprintf(res, "RTSP/1.0 200 OK\r\n"
				"CSeq: %s\r\n"
				"Range: npt=0.000-\r\n"
				"Session: 66334873; timeout=60\r\n\r\n",
				param_cseq_line[1].c_str());

                do_write(res,strlen(res));
            }

        }
    });
}

void RtspConnection::do_write(const char* buf,std::size_t length) 
{
    auto self(shared_from_this());
    asio::async_write(socket_, asio::buffer(buf, length),
    [this, self](std::error_code ec, std::size_t /*length*/)
    {
        if (!ec)
        {
            do_read();
        }
    });
}

RtspConnection::RtspConnection(tcp::socket socket) : socket_(std::move(socket))
{
}



void split(const string& s, vector<string>& tokens, const string& delimiters) 
{
    string::size_type lastPos = s.find_first_not_of(delimiters, 0);
    string::size_type pos = s.find_first_of(delimiters, lastPos);
    while (string::npos != pos || string::npos != lastPos) {
            tokens.push_back(s.substr(lastPos, pos - lastPos));
            lastPos = s.find_first_not_of(delimiters, pos);
            pos = s.find_first_of(delimiters, lastPos);
    }
}
