#include "../include/RoundRobin.h"
#include <iostream>
#include <queue>

RoundRobin::RoundRobin(int quantum) : quantum(quantum) {}

void RoundRobin::schedule(std::vector<Process>& processes) {
    std::queue<Process*> readyQueue;
    int time = 0;
    size_t index = 0;

    while (index < processes.size() || !readyQueue.empty()) {
        while (index < processes.size() && processes[index].arrivalTime <= time) {
            readyQueue.push(&processes[index]);
            index++;
        }

        if (!readyQueue.empty()) {
            Process* current = readyQueue.front();
            readyQueue.pop();

            if (current->responseTime == -1) {
                current->responseTime = time - current->arrivalTime;
            }

            int timeSlice = std::min(quantum, current->remainingTime);
            current->remainingTime -= timeSlice;
            time += timeSlice;

            if (current->remainingTime == 0) {
                current->turnaroundTime = time - current->arrivalTime;
                current->waitingTime = current->turnaroundTime - current->burstTime;
            } else {
                readyQueue.push(current);
            }
        } else {
            time++;
        }
    }
    printMetrics(processes);
}
