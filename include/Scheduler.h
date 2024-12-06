#ifndef SCHEDULER_H
#define SCHEDULER_H

#include "Process.h"
#include <vector>

class Scheduler {
public:
    virtual void schedule(std::vector<Process>& processes) = 0;
    virtual void printMetrics(const std::vector<Process>& processes);
    virtual ~Scheduler() {}
};

#endif // SCHEDULER_H
