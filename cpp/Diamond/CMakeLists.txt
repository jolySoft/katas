cmake_minimum_required(VERSION 3.20)
project(Diamond)

set(CMAKE_CXX_STANDARD 17)

set(SOURCE_FILES main.cpp)
add_executable(Diamond_run ${SOURCE_FILES})

include_directories(diamond_lib)
add_subdirectory(diamond_lib)

target_link_libraries(Diamond_run diamond_lib)

add_subdirectory(google-test)
