#ifndef PROCESS_METRICS_H
#define PROCESS_METRICS_H

#include <cstdint>

struct ProcessMetrics {
    uint32_t waitingTime = 0;
    uint32_t turnaroundTime = 0;
    int32_t responseTime = -1; // Default to -1
};

#endif // PROCESS_METRICS_H
