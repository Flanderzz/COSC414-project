#include "../include/RoundRobin.h"
#include "../include/Process.h"
#include <iostream>
#include <vector>

int main() {
    int quantum = 5; 
    std::vector<Process> processes = {
        Process(1, 1, 10, 0),
        Process(4, 1, 10, 0),
        Process(2, 2, 5, 1),
        Process(3, 3, 8, 2)
    };

    std::cout << "Round Robin Scheduling:\n";
    RoundRobin rr(quantum);
    rr.schedule(processes);

    return 0;
}