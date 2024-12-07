#include "../include/RoundRobin.h"
#include <algorithm>
#include <iostream>

RoundRobin::RoundRobin(uint32_t quantum) : quantum(quantum) {}

void RoundRobin::schedule(std::vector<Process>& processes) {
    std::queue<Process*> readyQueue;
    uint32_t time = 0;
    size_t index = 0;

    while (index < processes.size() || !readyQueue.empty()) {
        while (index < processes.size() && processes[index].arrivalTime <= time) {
            readyQueue.push(&processes[index]);
            index++;
        }

        if (!readyQueue.empty()) {
            Process* current = readyQueue.front();
            readyQueue.pop();

            if (current->metrics.responseTime == -1) {
                current->metrics.responseTime = time - current->arrivalTime;
            }

            uint32_t timeSlice = std::min(quantum, current->state.remainingTime);
            current->state.remainingTime -= timeSlice;
            time += timeSlice;

            if (current->state.remainingTime == 0) {
                current->state.isCompleted = true;
                current->metrics.turnaroundTime = time - current->arrivalTime;
                current->metrics.waitingTime =
                    current->metrics.turnaroundTime - current->burstTime;
            } else {
                readyQueue.push(current);
            }
        } else {
            time++;
        }
    }
    printMetrics(processes);
}
