#ifndef PROCESS_STATE_H
#define PROCESS_STATE_H

#include <cstdint>

struct ProcessState {
    uint32_t remainingTime;
    bool isCompleted = false;
};

#endif // PROCESS_STATE_H
