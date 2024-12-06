#ifndef PROCESS_H
#define PROCESS_H

#include <string>

class Process {
public:
    int id;
    int priority;
    int burstTime;
    int arrivalTime;
    int remainingTime;
    int waitingTime;
    int turnaroundTime;
    int responseTime;
    bool isCompleted;

    Process(int id, int priority, int burstTime, int arrivalTime);
};

#endif // PROCESS_H
