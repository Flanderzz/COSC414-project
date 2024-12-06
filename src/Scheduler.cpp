#include "../include/Scheduler.h"
#include <iostream>

void Scheduler::printMetrics(const std::vector<Process>& processes) {
    double totalWaitingTime = 0, totalTurnaroundTime = 0;
    for (const auto& process : processes) {
        totalWaitingTime += process.waitingTime;
        totalTurnaroundTime += process.turnaroundTime;
        std::cout << "Process " << process.id << ": Waiting Time = " << process.waitingTime 
                  << ", Turnaround Time = " << process.turnaroundTime << "\n";
    }
    std::cout << "Average Waiting Time: " << totalWaitingTime / processes.size() << "\n";
    std::cout << "Average Turnaround Time: " << totalTurnaroundTime / processes.size() << "\n";
}
