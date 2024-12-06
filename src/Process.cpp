#include "../include/Process.h"

Process::Process(int id, int priority, int burstTime, int arrivalTime)
    : id(id), priority(priority), burstTime(burstTime), arrivalTime(arrivalTime), 
      remainingTime(burstTime), waitingTime(0), turnaroundTime(0), responseTime(-1),
      isCompleted(false) {}
