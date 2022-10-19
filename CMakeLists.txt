cmake_minimum_required(VERSION 3.22.1)

project(lab3ak)

set(SOURCE_EXE src/main.cpp)

set(SOURCE_LIB src/calculator.cpp)

include_directories(include)

add_library(calculator STATIC ${SOURCE_LIB})

add_executable(calc ${SOURCE_EXE})

target_link_libraries(calc calculator)