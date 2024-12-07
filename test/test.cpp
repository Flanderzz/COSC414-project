#define CATCH_CONFIG_MAIN
#include <catch2/catch.hpp>
#include "../include/RoundRobin.h"
#include "../include/Process.h"

std::vector<Process> createProcesses() {
    return {
        Process(1, 1, 10, 0), 
        Process(2, 2, 5, 1),  
        Process(3, 3, 8, 2)   
    };
}

TEST_CASE("Round Robin Scheduling") {
    SECTION("Processes finish with correct metrics for quantum 4") {
        std::vector<Process> processes = createProcesses();
        RoundRobin scheduler(4); 

        scheduler.schedule(processes);

        
        REQUIRE(processes[0].metrics.waitingTime == 6);  
        REQUIRE(processes[0].metrics.turnaroundTime == 16);
        REQUIRE(processes[0].metrics.responseTime == 0);

        REQUIRE(processes[1].metrics.waitingTime == 3);  
        REQUIRE(processes[1].metrics.turnaroundTime == 8);
        REQUIRE(processes[1].metrics.responseTime == 3);

        REQUIRE(processes[2].metrics.waitingTime == 9);  
        REQUIRE(processes[2].metrics.turnaroundTime == 17);
        REQUIRE(processes[2].metrics.responseTime == 8);
    }

    SECTION("Processes finish correctly with a smaller quantum") {
        
        std::vector<Process> processes = createProcesses();
        RoundRobin scheduler(2); 

        
        scheduler.schedule(processes);

        
        REQUIRE(processes[0].metrics.waitingTime == 9);  
        REQUIRE(processes[0].metrics.turnaroundTime == 19);
        REQUIRE(processes[0].metrics.responseTime == 0);

        REQUIRE(processes[1].metrics.waitingTime == 6);  
        REQUIRE(processes[1].metrics.turnaroundTime == 11);
        REQUIRE(processes[1].metrics.responseTime == 2);

        REQUIRE(processes[2].metrics.waitingTime == 12); 
        REQUIRE(processes[2].metrics.turnaroundTime == 20);
        REQUIRE(processes[2].metrics.responseTime == 6);
    }

    SECTION("Processes with identical burst times and arrival times") {
        
        std::vector<Process> processes = {
            Process(1, 1, 5, 0),
            Process(2, 2, 5, 0),
            Process(3, 3, 5, 0)
        };
        RoundRobin scheduler(4); 

        
        scheduler.schedule(processes);

        
        REQUIRE(processes[0].metrics.waitingTime == 4);  
        REQUIRE(processes[0].metrics.turnaroundTime == 9);
        REQUIRE(processes[0].metrics.responseTime == 0);

        REQUIRE(processes[1].metrics.waitingTime == 4);  
        REQUIRE(processes[1].metrics.turnaroundTime == 9);
        REQUIRE(processes[1].metrics.responseTime == 4);

        REQUIRE(processes[2].metrics.waitingTime == 4);  
        REQUIRE(processes[2].metrics.turnaroundTime == 9);
        REQUIRE(processes[2].metrics.responseTime == 8);
    }

    SECTION("Processes arrive at different times") {
        
        std::vector<Process> processes = {
            Process(1, 1, 6, 0),
            Process(2, 2, 4, 3),
            Process(3, 3, 2, 5)
        };
        RoundRobin scheduler(4); 

        
        scheduler.schedule(processes);

        
        REQUIRE(processes[0].metrics.waitingTime == 3);  
        REQUIRE(processes[0].metrics.turnaroundTime == 9);
        REQUIRE(processes[0].metrics.responseTime == 0);

        REQUIRE(processes[1].metrics.waitingTime == 2);  
        REQUIRE(processes[1].metrics.turnaroundTime == 6);
        REQUIRE(processes[1].metrics.responseTime == 3);

        REQUIRE(processes[2].metrics.waitingTime == 0);  
        REQUIRE(processes[2].metrics.turnaroundTime == 2);
        REQUIRE(processes[2].metrics.responseTime == 5);
    }
}
