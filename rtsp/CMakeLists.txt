cmake_minimum_required(VERSION 3.0.0)
project(rtsp-server VERSION 0.1.0)

include(CTest)
enable_testing()

include_directories(/home/zn/media-server/thirdparty/asio)

add_executable(rtsp-server main.cpp
    RtspConnection.h
    RtspServer.h       

    RtspConnection.cpp
    RtspServer.cpp
)
target_link_libraries(rtsp-server -pthread)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
