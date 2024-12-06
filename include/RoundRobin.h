#ifndef ROUND_ROBIN_H
#define ROUND_ROBIN_H

#include "Scheduler.h"

class RoundRobin : public Scheduler {
private:
    int quantum;
public:
    RoundRobin(int quantum);
    void schedule(std::vector<Process>& processes) override;
};

#endif // ROUND_ROBIN_H
