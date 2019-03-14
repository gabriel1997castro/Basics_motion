cmake_minimum_required(VERSION 3.0)

set(CMAKE_BUILD_TYPE debug)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++14")

project(Basics_motion)

include(ExternalProject)
ExternalProject_Add(serialcom
    GIT_REPOSITORY https://github.com/Gastd/serialcom
    GIT_TAG master
    # PREFIX ${CMAKE_CURRENT_BINARY_DIR}/serialcom
    SOURCE_DIR "${CMAKE_CURRENT_BINARY_DIR}/serialcom-src"
    BINARY_DIR "${CMAKE_CURRENT_BINARY_DIR}/serialcom-src/build"
    # CONFIGURE_COMMAND "${CMAKE_COMMAND}" -G "${CMAKE_GENERATOR}" "${CMAKE_BINARY_DIR}/serialcom-src/"
    BUILD_COMMAND "${CMAKE_COMMAND}" --build .
    INSTALL_COMMAND ""
    TEST_COMMAND ""
)
# ExternalProject_Get_Property(serialcom install_dir)
ExternalProject_Get_Property(serialcom binary_dir)
include_directories(${CMAKE_CURRENT_BINARY_DIR}/serialcom-src/include)
# message(${install_dir})



add_executable(serialTest src/serialTest.cpp)
add_dependencies(serialTest serialcom)
target_link_libraries( serialTest
    ${binary_dir}/${CMAKE_FIND_LIBRARY_PREFIXES}serialcomlib.so
    -pthread
)
