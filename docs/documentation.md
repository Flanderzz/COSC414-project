
# CPU Scheduler Simulator Documentation

## Introduction
This CPU Scheduler Simulator is a C++ program that simulates the Round Robin scheduling algorithm, made to understand how CPU time is distributed among multiple processes in a time-shared system and calculates key metrics such as waiting time, turnaround time, and response time for all processes.

---

## Project Structure
```
CPU_Scheduler/
├── CMakeLists.txt
├── src/
│   ├── CMakeLists.txt
│   ├── main.cpp
│   ├── Process.cpp
│   ├── Scheduler.cpp
│   ├── RoundRobin.cpp
├── include/
│   ├── Process.h
│   ├── Scheduler.h
│   ├── RoundRobin.h
├── test/
│   ├── .h
├── docs/
│   ├── {YOU ARE HERE}
└── build/


```

---

## How the Simulator Works

### Components
1. **Process Class**:
   - Represents a task with attributes:
     - `id`: Unique process identifier.
     - `priority`: Priority level of the process.
     - `arrivalTime`: Time the process arrives in the queue.
     - `burstTime`: Total time required for process completion.
   - Tracks metrics like:
     - `waitingTime`, `turnaroundTime`, `responseTime`.
   - Tracks process state:
     - `remainingTime`: Remaining execution time.
     - `isCompleted`: Whether the process is finished.

2. **Scheduler Base Class**:
   - Provides a virtual interface for all scheduling algorithms.
   - Includes methods to:
     - Schedule processes.
     - Print metrics after simulation.

3. **Round Robin Scheduler**:
   - Implements the Round Robin scheduling algorithm:
     - Fixed time slice (quantum) for each process.
     - Preempts processes if they exceed their quantum.
   - Maintains a queue of processes to simulate context switching.

---

## Metrics
- **Waiting Time**: Total time spent in the ready queue.
- **Turnaround Time**: Total time from process arrival to completion.
- **Response Time**: Time from process arrival to its first execution.

---

## Example Execution
### Input
Three processes with:
| ID  | Arrival Time | Burst Time | Quantum |
|-----|--------------|------------|---------|
| 1   | 0            | 10         | 4       |
| 2   | 1            | 5          | 4       |
| 3   | 2            | 8          | 4       |

### Output
| Process | Waiting Time | Turnaround Time | Response Time |
|---------|--------------|-----------------|---------------|
| 1       | 6            | 16              | 0             |
| 2       | 3            | 8               | 3             |
| 3       | 9            | 17              | 8             |

---

## Building the Project
1. **Prerequisites**:
   - C++ compiler (e.g., GCC, Clang).
   - CMake (version 3.10 or higher).

2. **Build Steps**:
   - Navigate to the project root directory:
     ```bash
     cd CPU_Scheduler
     ```
   - Create a `build` directory:
     ```bash
     mkdir build && cd build
     ```
   - Run CMake to configure the project:
     ```bash
     cmake ..
     ```
   - Build the project:
     ```bash
     cmake --build .
     ```

3. **Run the Executable**:
   ```bash
   ./CPU_Scheduler
   ```

---

## Main Code Walkthrough

### Purpose
- Sets up the simulation by initializing processes and invoking the scheduler.

### Key Steps
1. **Define Processes**:
   ```cpp
   std::vector<Process> processes = {
       Process(1, 1, 10, 0), // ID 1, priority 1, burstTime 10, arrivalTime 0
       Process(2, 2, 5, 1),  // ID 2, priority 2, burstTime 5, arrivalTime 1
       Process(3, 3, 8, 2)   // ID 3, priority 3, burstTime 8, arrivalTime 2
   };
   ```

2. **Instantiate the Scheduler**:
   ```cpp
   RoundRobin rr(4); // Quantum = 4
   ```

3. **Schedule Processes**:
   ```cpp
   rr.schedule(processes);
   ```

4. **Display Results**:
   - Prints waiting time, turnaround time, and response time for each process.

---

## Extending the Project
- Add other scheduling algorithms, such as:
  - **Priority Scheduling** (preemptive and non-preemptive).
  - **Multilevel Queue Scheduling**.
  - **Multilevel Feedback Queue Scheduling**.
- Implement real-time visualizations for scheduling.

