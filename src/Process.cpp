#include "../include/Process.h"

Process::Process(uint32_t id, uint32_t priority, uint32_t burstTime, uint32_t arrivalTime)
    : id(id), priority(priority), burstTime(burstTime), arrivalTime(arrivalTime),
      state({burstTime, false}), currentState(State::READY) {}
