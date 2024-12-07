find_package(Catch2 3 REQUIRED)

set(TEST_SOURCES
    test.cpp
)

add_executable(test ${TEST_SOURCES})

target_link_libraries(test PRIVATE Catch2::Catch2WithMain SchedulerLib)
target_include_directories(test PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/../src)

enable_testing()

include(Catch)
catch_discover_tests(test)
