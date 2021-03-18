
#include "RtspServer.h"

void RtspServer::do_accept()   
{
    acceptor_.async_accept(
    [this](std::error_code ec, tcp::socket socket)
    {
        if (!ec)
        {
        std::make_shared<RtspConnection>(std::move(socket))->start();
        }

        do_accept();
    });
}

RtspServer::RtspServer(asio::io_context& io_context, short port) : acceptor_(io_context, tcp::endpoint(tcp::v4(), port))
{
    do_accept();
}
