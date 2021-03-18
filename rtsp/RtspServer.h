

#ifndef  _RTSP_SERVER_H_
#define  _RTSP_SERVER_H_

#include "RtspConnection.h"

class RtspServer
{
public:
  RtspServer(asio::io_context& io_context, short port);

private:
  void do_accept();

private:
  tcp::acceptor acceptor_;
};




















#endif
