#ifndef ROUND_ROBIN_H
#define ROUND_ROBIN_H

#include "Scheduler.h"
#include <queue>

class RoundRobin : public Scheduler {
private:
    uint32_t quantum;
public:
    RoundRobin(uint32_t quantum);
    void schedule(std::vector<Process>& processes) override;
};

#endif // ROUND_ROBIN_H
