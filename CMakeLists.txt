cmake_minimum_required(VERSION 3.10)
project(CPU_Scheduler)

# Set C++ Standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Add the src directory
add_subdirectory(src)
add_subdirectory(test)
