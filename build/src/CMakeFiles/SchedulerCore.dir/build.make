# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.30.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.30.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/devinechinemere/Documents/COSC414-project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/devinechinemere/Documents/COSC414-project/build

# Include any dependencies generated for this target.
include src/CMakeFiles/SchedulerCore.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/SchedulerCore.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/SchedulerCore.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/SchedulerCore.dir/flags.make

src/CMakeFiles/SchedulerCore.dir/Scheduler.cpp.o: src/CMakeFiles/SchedulerCore.dir/flags.make
src/CMakeFiles/SchedulerCore.dir/Scheduler.cpp.o: /Users/devinechinemere/Documents/COSC414-project/src/Scheduler.cpp
src/CMakeFiles/SchedulerCore.dir/Scheduler.cpp.o: src/CMakeFiles/SchedulerCore.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/devinechinemere/Documents/COSC414-project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/SchedulerCore.dir/Scheduler.cpp.o"
	cd /Users/devinechinemere/Documents/COSC414-project/build/src && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/SchedulerCore.dir/Scheduler.cpp.o -MF CMakeFiles/SchedulerCore.dir/Scheduler.cpp.o.d -o CMakeFiles/SchedulerCore.dir/Scheduler.cpp.o -c /Users/devinechinemere/Documents/COSC414-project/src/Scheduler.cpp

src/CMakeFiles/SchedulerCore.dir/Scheduler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SchedulerCore.dir/Scheduler.cpp.i"
	cd /Users/devinechinemere/Documents/COSC414-project/build/src && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/devinechinemere/Documents/COSC414-project/src/Scheduler.cpp > CMakeFiles/SchedulerCore.dir/Scheduler.cpp.i

src/CMakeFiles/SchedulerCore.dir/Scheduler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SchedulerCore.dir/Scheduler.cpp.s"
	cd /Users/devinechinemere/Documents/COSC414-project/build/src && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/devinechinemere/Documents/COSC414-project/src/Scheduler.cpp -o CMakeFiles/SchedulerCore.dir/Scheduler.cpp.s

src/CMakeFiles/SchedulerCore.dir/RoundRobin.cpp.o: src/CMakeFiles/SchedulerCore.dir/flags.make
src/CMakeFiles/SchedulerCore.dir/RoundRobin.cpp.o: /Users/devinechinemere/Documents/COSC414-project/src/RoundRobin.cpp
src/CMakeFiles/SchedulerCore.dir/RoundRobin.cpp.o: src/CMakeFiles/SchedulerCore.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/devinechinemere/Documents/COSC414-project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/SchedulerCore.dir/RoundRobin.cpp.o"
	cd /Users/devinechinemere/Documents/COSC414-project/build/src && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/SchedulerCore.dir/RoundRobin.cpp.o -MF CMakeFiles/SchedulerCore.dir/RoundRobin.cpp.o.d -o CMakeFiles/SchedulerCore.dir/RoundRobin.cpp.o -c /Users/devinechinemere/Documents/COSC414-project/src/RoundRobin.cpp

src/CMakeFiles/SchedulerCore.dir/RoundRobin.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SchedulerCore.dir/RoundRobin.cpp.i"
	cd /Users/devinechinemere/Documents/COSC414-project/build/src && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/devinechinemere/Documents/COSC414-project/src/RoundRobin.cpp > CMakeFiles/SchedulerCore.dir/RoundRobin.cpp.i

src/CMakeFiles/SchedulerCore.dir/RoundRobin.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SchedulerCore.dir/RoundRobin.cpp.s"
	cd /Users/devinechinemere/Documents/COSC414-project/build/src && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/devinechinemere/Documents/COSC414-project/src/RoundRobin.cpp -o CMakeFiles/SchedulerCore.dir/RoundRobin.cpp.s

src/CMakeFiles/SchedulerCore.dir/Process.cpp.o: src/CMakeFiles/SchedulerCore.dir/flags.make
src/CMakeFiles/SchedulerCore.dir/Process.cpp.o: /Users/devinechinemere/Documents/COSC414-project/src/Process.cpp
src/CMakeFiles/SchedulerCore.dir/Process.cpp.o: src/CMakeFiles/SchedulerCore.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/devinechinemere/Documents/COSC414-project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/SchedulerCore.dir/Process.cpp.o"
	cd /Users/devinechinemere/Documents/COSC414-project/build/src && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/SchedulerCore.dir/Process.cpp.o -MF CMakeFiles/SchedulerCore.dir/Process.cpp.o.d -o CMakeFiles/SchedulerCore.dir/Process.cpp.o -c /Users/devinechinemere/Documents/COSC414-project/src/Process.cpp

src/CMakeFiles/SchedulerCore.dir/Process.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SchedulerCore.dir/Process.cpp.i"
	cd /Users/devinechinemere/Documents/COSC414-project/build/src && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/devinechinemere/Documents/COSC414-project/src/Process.cpp > CMakeFiles/SchedulerCore.dir/Process.cpp.i

src/CMakeFiles/SchedulerCore.dir/Process.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SchedulerCore.dir/Process.cpp.s"
	cd /Users/devinechinemere/Documents/COSC414-project/build/src && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/devinechinemere/Documents/COSC414-project/src/Process.cpp -o CMakeFiles/SchedulerCore.dir/Process.cpp.s

# Object files for target SchedulerCore
SchedulerCore_OBJECTS = \
"CMakeFiles/SchedulerCore.dir/Scheduler.cpp.o" \
"CMakeFiles/SchedulerCore.dir/RoundRobin.cpp.o" \
"CMakeFiles/SchedulerCore.dir/Process.cpp.o"

# External object files for target SchedulerCore
SchedulerCore_EXTERNAL_OBJECTS =

src/libSchedulerCore.a: src/CMakeFiles/SchedulerCore.dir/Scheduler.cpp.o
src/libSchedulerCore.a: src/CMakeFiles/SchedulerCore.dir/RoundRobin.cpp.o
src/libSchedulerCore.a: src/CMakeFiles/SchedulerCore.dir/Process.cpp.o
src/libSchedulerCore.a: src/CMakeFiles/SchedulerCore.dir/build.make
src/libSchedulerCore.a: src/CMakeFiles/SchedulerCore.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/devinechinemere/Documents/COSC414-project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libSchedulerCore.a"
	cd /Users/devinechinemere/Documents/COSC414-project/build/src && $(CMAKE_COMMAND) -P CMakeFiles/SchedulerCore.dir/cmake_clean_target.cmake
	cd /Users/devinechinemere/Documents/COSC414-project/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SchedulerCore.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/SchedulerCore.dir/build: src/libSchedulerCore.a
.PHONY : src/CMakeFiles/SchedulerCore.dir/build

src/CMakeFiles/SchedulerCore.dir/clean:
	cd /Users/devinechinemere/Documents/COSC414-project/build/src && $(CMAKE_COMMAND) -P CMakeFiles/SchedulerCore.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/SchedulerCore.dir/clean

src/CMakeFiles/SchedulerCore.dir/depend:
	cd /Users/devinechinemere/Documents/COSC414-project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/devinechinemere/Documents/COSC414-project /Users/devinechinemere/Documents/COSC414-project/src /Users/devinechinemere/Documents/COSC414-project/build /Users/devinechinemere/Documents/COSC414-project/build/src /Users/devinechinemere/Documents/COSC414-project/build/src/CMakeFiles/SchedulerCore.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/CMakeFiles/SchedulerCore.dir/depend

