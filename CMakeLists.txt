cmake_minimum_required(VERSION 3.13)
project(min2phase)

set(CMAKE_CXX_STANDARD 14)

include_directories(include)

add_library(min2phase STATIC
        src/info.h
        src/CubieCube.h
        src/coords.h
        src/Search.h
        src/tests.h
        src/http.h
        src/info.cpp
        src/CubieCube.cpp
        src/coords.cpp
        src/Search.cpp
        src/tools.cpp
        src/min2phase.cpp
        src/http.cpp
        src/tests.cpp)

set(SOURCES
    src/main.cc
    src/cube.cc
    src/turns.cc
    src/tracing.cc
)

add_executable(generate_scrambles ${SOURCES})

target_link_libraries(min2phase pthread)

target_link_libraries(generate_scrambles min2phase)
