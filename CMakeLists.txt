cmake_minimum_required(VERSION 3.1)


#set(CMAKE_C_COMPILER "/home/zain/tool/android-ndk-r25c/toolchains/llvm/prebuilt/linux-x86_64/bin/clang")
set(CMAKE_C_COMPILER "/home/zain/tool/android-ndk-r25c/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android31-clang")
#set(CMAKE_CXX_COMPILER "/home/zain/tool/android-ndk-r25c/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++")
set(CMAKE_CXX_COMPILER "/home/zain/tool/android-ndk-r25c/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android31-clang++")


project(elfparse VERSION 0.1.0)

set(CMAKE_EXPORT_COMPILE_COMMANDS on)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=c11 -Wall")
set(CMAKE_LD_FLAGS "${CMAKE_LD_FLAGS} -pie -fPIE")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} --std=c++11")



include(GNUInstallDirs)

set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/build)
#set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/${CMAKE_INSTALL_LIBDIR})
SET(EXECUTABLE_OUTPUT_PATH ${CMAKE_SOURCE_DIR})

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/${CMAKE_INSTALL_LIBDIR})
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/${CMAKE_INSTALL_LIBDIR})
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/${CMAKE_INSTALL_BINDIR})




#if(CMAKE_CXX_COMPILE_IDMATCHES GNU)
if (CMAKE_CXX_COMPILER_ID MATCHES "GNU")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fporfile-arcs -ftest-coverage")
endif()

include_directories(${PROJECT_SOURCE_DIR}/includes)
include_directories(${PROJECT_SOURCE_DIR}/Elfparse/includes)
include_directories(${PROJECT_SOURCE_DIR}/Arparse/includes)


#add_subdirectory(src)
add_subdirectory(Elfparse)
add_subdirectory(Arparse)
add_subdirectory(Nm)
add_subdirectory(Objdump)



