# Copyright (C) 2017-2018 PrismAI
findOpencvCommon()

include_directories(
    ${CONNECT_INCLUDE_DIRS}
    ${OpenCV_INCLUDE_DIRS}
)

set (TEST_CLIENT_LIBS
    ${OpenCV_LIBRARIES}
    connect
    ${Boost_LIBRARIES}
)

add_executable(test-client main.cpp testArtifactUploader.cpp testUtils.cpp)
target_link_libraries(test-client ${TEST_CLIENT_LIBS})
