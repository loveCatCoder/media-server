#include <iostream>
#include "RtspServer.h"


int main(int, char**) {
    try
  {

    asio::io_context io_context;

    RtspServer s(io_context, 6666);

    io_context.run();
  }
  catch (std::exception& e)
  {
    std::cerr << "Exception: " << e.what() << "\n";
  }

  return 0;
}
