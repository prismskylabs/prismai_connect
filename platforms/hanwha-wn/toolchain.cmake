# Copyright (C) 2017-2018 PrismAI

# this is Prism-specific to handle platforms easier
SET(PRISM_PLATFORM hanwha-wn)

# this one is important
SET(CMAKE_SYSTEM_NAME Linux)
#this one not so much
SET(CMAKE_SYSTEM_VERSION 1)

# specify the cross compiler
# WN env.variable is set, when installing OpenSDK 
SET(CMAKE_C_COMPILER   $ENV{WN}/arm-linux-gnueabi-gcc)
SET(CMAKE_CXX_COMPILER $ENV{WN}/arm-linux-gnueabi-g++)

# where is the target environment 
SET(CMAKE_FIND_ROOT_PATH  $ENV{WN}/arm-linux-gnueabi/)

# search for programs in the build host directories
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# for libraries and headers in the target directories
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
