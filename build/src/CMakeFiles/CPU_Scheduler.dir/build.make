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
include src/CMakeFiles/CPU_Scheduler.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/CPU_Scheduler.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/CPU_Scheduler.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/CPU_Scheduler.dir/flags.make

src/CMakeFiles/CPU_Scheduler.dir/main.cpp.o: src/CMakeFiles/CPU_Scheduler.dir/flags.make
src/CMakeFiles/CPU_Scheduler.dir/main.cpp.o: /Users/devinechinemere/Documents/COSC414-project/src/main.cpp
src/CMakeFiles/CPU_Scheduler.dir/main.cpp.o: src/CMakeFiles/CPU_Scheduler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/devinechinemere/Documents/COSC414-project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/CPU_Scheduler.dir/main.cpp.o"
	cd /Users/devinechinemere/Documents/COSC414-project/build/src && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/CPU_Scheduler.dir/main.cpp.o -MF CMakeFiles/CPU_Scheduler.dir/main.cpp.o.d -o CMakeFiles/CPU_Scheduler.dir/main.cpp.o -c /Users/devinechinemere/Documents/COSC414-project/src/main.cpp

src/CMakeFiles/CPU_Scheduler.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/CPU_Scheduler.dir/main.cpp.i"
	cd /Users/devinechinemere/Documents/COSC414-project/build/src && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/devinechinemere/Documents/COSC414-project/src/main.cpp > CMakeFiles/CPU_Scheduler.dir/main.cpp.i

src/CMakeFiles/CPU_Scheduler.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/CPU_Scheduler.dir/main.cpp.s"
	cd /Users/devinechinemere/Documents/COSC414-project/build/src && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/devinechinemere/Documents/COSC414-project/src/main.cpp -o CMakeFiles/CPU_Scheduler.dir/main.cpp.s

# Object files for target CPU_Scheduler
CPU_Scheduler_OBJECTS = \
"CMakeFiles/CPU_Scheduler.dir/main.cpp.o"

# External object files for target CPU_Scheduler
CPU_Scheduler_EXTERNAL_OBJECTS =

src/CPU_Scheduler: src/CMakeFiles/CPU_Scheduler.dir/main.cpp.o
src/CPU_Scheduler: src/CMakeFiles/CPU_Scheduler.dir/build.make
src/CPU_Scheduler: src/libSchedulerCore.a
src/CPU_Scheduler: src/CMakeFiles/CPU_Scheduler.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/devinechinemere/Documents/COSC414-project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable CPU_Scheduler"
	cd /Users/devinechinemere/Documents/COSC414-project/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CPU_Scheduler.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/CPU_Scheduler.dir/build: src/CPU_Scheduler
.PHONY : src/CMakeFiles/CPU_Scheduler.dir/build

src/CMakeFiles/CPU_Scheduler.dir/clean:
	cd /Users/devinechinemere/Documents/COSC414-project/build/src && $(CMAKE_COMMAND) -P CMakeFiles/CPU_Scheduler.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/CPU_Scheduler.dir/clean

src/CMakeFiles/CPU_Scheduler.dir/depend:
	cd /Users/devinechinemere/Documents/COSC414-project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/devinechinemere/Documents/COSC414-project /Users/devinechinemere/Documents/COSC414-project/src /Users/devinechinemere/Documents/COSC414-project/build /Users/devinechinemere/Documents/COSC414-project/build/src /Users/devinechinemere/Documents/COSC414-project/build/src/CMakeFiles/CPU_Scheduler.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/CMakeFiles/CPU_Scheduler.dir/depend

