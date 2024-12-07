#define CATCH_CONFIG_MAIN
#include <catch2/catch.hpp>
#include "../include/RoundRobin.h"
#include "../include/Process.h"

// Helper function to create processes
std::vector<Process> createProcesses() {
    return {
        Process(1, 1, 10, 0), // ID 1, priority 1, burstTime 10, arrivalTime 0
        Process(2, 2, 5, 1),  // ID 2, priority 2, burstTime 5, arrivalTime 1
        Process(3, 3, 8, 2)   // ID 3, priority 3, burstTime 8, arrivalTime 2
    };
}

TEST_CASE("Round Robin Scheduling") {
    SECTION("Processes finish with correct metrics for quantum 4") {
        // Arrange
        std::vector<Process> processes = createProcesses();
        RoundRobin scheduler(4); // Quantum = 4

        // Act
        scheduler.schedule(processes);

        // Assert
        REQUIRE(processes[0].metrics.waitingTime == 6);  // Process 1
        REQUIRE(processes[0].metrics.turnaroundTime == 16);
        REQUIRE(processes[0].metrics.responseTime == 0);

        REQUIRE(processes[1].metrics.waitingTime == 3);  // Process 2
        REQUIRE(processes[1].metrics.turnaroundTime == 8);
        REQUIRE(processes[1].metrics.responseTime == 3);

        REQUIRE(processes[2].metrics.waitingTime == 9);  // Process 3
        REQUIRE(processes[2].metrics.turnaroundTime == 17);
        REQUIRE(processes[2].metrics.responseTime == 8);
    }

    SECTION("Processes finish correctly with a smaller quantum") {
        // Arrange
        std::vector<Process> processes = createProcesses();
        RoundRobin scheduler(2); // Quantum = 2

        // Act
        scheduler.schedule(processes);

        // Assert
        REQUIRE(processes[0].metrics.waitingTime == 9);  // Process 1
        REQUIRE(processes[0].metrics.turnaroundTime == 19);
        REQUIRE(processes[0].metrics.responseTime == 0);

        REQUIRE(processes[1].metrics.waitingTime == 6);  // Process 2
        REQUIRE(processes[1].metrics.turnaroundTime == 11);
        REQUIRE(processes[1].metrics.responseTime == 2);

        REQUIRE(processes[2].metrics.waitingTime == 12); // Process 3
        REQUIRE(processes[2].metrics.turnaroundTime == 20);
        REQUIRE(processes[2].metrics.responseTime == 6);
    }

    SECTION("Processes with identical burst times and arrival times") {
        // Arrange
        std::vector<Process> processes = {
            Process(1, 1, 5, 0),
            Process(2, 2, 5, 0),
            Process(3, 3, 5, 0)
        };
        RoundRobin scheduler(4); // Quantum = 4

        // Act
        scheduler.schedule(processes);

        // Assert
        REQUIRE(processes[0].metrics.waitingTime == 4);  // Process 1
        REQUIRE(processes[0].metrics.turnaroundTime == 9);
        REQUIRE(processes[0].metrics.responseTime == 0);

        REQUIRE(processes[1].metrics.waitingTime == 4);  // Process 2
        REQUIRE(processes[1].metrics.turnaroundTime == 9);
        REQUIRE(processes[1].metrics.responseTime == 4);

        REQUIRE(processes[2].metrics.waitingTime == 4);  // Process 3
        REQUIRE(processes[2].metrics.turnaroundTime == 9);
        REQUIRE(processes[2].metrics.responseTime == 8);
    }

    SECTION("Processes arrive at different times") {
        // Arrange
        std::vector<Process> processes = {
            Process(1, 1, 6, 0),
            Process(2, 2, 4, 3),
            Process(3, 3, 2, 5)
        };
        RoundRobin scheduler(4); // Quantum = 4

        // Act
        scheduler.schedule(processes);

        // Assert
        REQUIRE(processes[0].metrics.waitingTime == 3);  // Process 1
        REQUIRE(processes[0].metrics.turnaroundTime == 9);
        REQUIRE(processes[0].metrics.responseTime == 0);

        REQUIRE(processes[1].metrics.waitingTime == 2);  // Process 2
        REQUIRE(processes[1].metrics.turnaroundTime == 6);
        REQUIRE(processes[1].metrics.responseTime == 3);

        REQUIRE(processes[2].metrics.waitingTime == 0);  // Process 3
        REQUIRE(processes[2].metrics.turnaroundTime == 2);
        REQUIRE(processes[2].metrics.responseTime == 5);
    }
}
