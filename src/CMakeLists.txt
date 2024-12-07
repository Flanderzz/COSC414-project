# Define the core library
add_library(SchedulerCore
    Scheduler.cpp
    RoundRobin.cpp
    Process.cpp
)

# Include directories for the library
target_include_directories(SchedulerCore PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

# Define the main executable
add_executable(CPU_Scheduler main.cpp)

# Link the core library to the executable
target_link_libraries(CPU_Scheduler PRIVATE SchedulerCore)
