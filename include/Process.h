#ifndef PROCESS_H
#define PROCESS_H

#include "ProcessMetrics.h"
#include "ProcessState.h"
#include "State.h"

class Process {
public:
    uint32_t id;
    uint32_t priority;
    uint32_t burstTime;
    uint32_t arrivalTime;

    ProcessMetrics metrics;
    ProcessState state;
    State currentState;

    Process(uint32_t id, uint32_t priority, uint32_t burstTime, uint32_t arrivalTime);
};

#endif // PROCESS_H
