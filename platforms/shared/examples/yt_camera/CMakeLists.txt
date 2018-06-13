# Copyright (C) 2017-2018 PrismAI
findOpencvCommon()

include_directories(
    ${CONNECT_INCLUDE_DIRS}
    ${OpenCV_INCLUDE_DIRS}
)

set (YT_CAMERA_LIBS
    ${OpenCV_LIBRARIES}
    connect
    boost_system
    boost_filesystem
)

add_executable(yt_camera main.cpp)
target_link_libraries(yt_camera ${YT_CAMERA_LIBS})
