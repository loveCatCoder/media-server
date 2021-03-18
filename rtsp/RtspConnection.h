#ifndef  _RTSP_CONNECTION_H_
#define  _RTSP_CONNECTION_H_

#include <cstdlib>
#include <iostream>
#include <memory>
#include <utility>
#include <map>
#include "asio.hpp"

using asio::ip::tcp;
using namespace std;


void split(const string& s, vector<string>& tokens, const string& delimiters = " ");



class RtspConnection :public std::enable_shared_from_this<RtspConnection>
{
public:
  struct REQUEST_INFO
  {
      std::string method="";
      std::string cseq = "";
      std::map<std::string,std::string> paramMap;
  };

  RtspConnection(tcp::socket socket);
    
  void start();
  

private:
  void do_read();
  void do_write(const char* buf,std::size_t length);

private:
    tcp::socket socket_;
    enum { max_length = 1024 };
    char data_[max_length];
};


#endif