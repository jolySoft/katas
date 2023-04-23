# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /opt/cmake/bin/cmake

# The command to remove a file.
RM = /opt/cmake/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jol/development/katas/cpp/Diamond

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jol/development/katas/cpp/Diamond/cmake-build-debug

# Include any dependencies generated for this target.
include diamond_lib/CMakeFiles/diamond_lib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include diamond_lib/CMakeFiles/diamond_lib.dir/compiler_depend.make

# Include the progress variables for this target.
include diamond_lib/CMakeFiles/diamond_lib.dir/progress.make

# Include the compile flags for this target's objects.
include diamond_lib/CMakeFiles/diamond_lib.dir/flags.make

diamond_lib/CMakeFiles/diamond_lib.dir/DiamondWorker.cpp.o: diamond_lib/CMakeFiles/diamond_lib.dir/flags.make
diamond_lib/CMakeFiles/diamond_lib.dir/DiamondWorker.cpp.o: /home/jol/development/katas/cpp/Diamond/diamond_lib/DiamondWorker.cpp
diamond_lib/CMakeFiles/diamond_lib.dir/DiamondWorker.cpp.o: diamond_lib/CMakeFiles/diamond_lib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jol/development/katas/cpp/Diamond/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object diamond_lib/CMakeFiles/diamond_lib.dir/DiamondWorker.cpp.o"
	cd /home/jol/development/katas/cpp/Diamond/cmake-build-debug/diamond_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT diamond_lib/CMakeFiles/diamond_lib.dir/DiamondWorker.cpp.o -MF CMakeFiles/diamond_lib.dir/DiamondWorker.cpp.o.d -o CMakeFiles/diamond_lib.dir/DiamondWorker.cpp.o -c /home/jol/development/katas/cpp/Diamond/diamond_lib/DiamondWorker.cpp

diamond_lib/CMakeFiles/diamond_lib.dir/DiamondWorker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/diamond_lib.dir/DiamondWorker.cpp.i"
	cd /home/jol/development/katas/cpp/Diamond/cmake-build-debug/diamond_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jol/development/katas/cpp/Diamond/diamond_lib/DiamondWorker.cpp > CMakeFiles/diamond_lib.dir/DiamondWorker.cpp.i

diamond_lib/CMakeFiles/diamond_lib.dir/DiamondWorker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/diamond_lib.dir/DiamondWorker.cpp.s"
	cd /home/jol/development/katas/cpp/Diamond/cmake-build-debug/diamond_lib && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jol/development/katas/cpp/Diamond/diamond_lib/DiamondWorker.cpp -o CMakeFiles/diamond_lib.dir/DiamondWorker.cpp.s

# Object files for target diamond_lib
diamond_lib_OBJECTS = \
"CMakeFiles/diamond_lib.dir/DiamondWorker.cpp.o"

# External object files for target diamond_lib
diamond_lib_EXTERNAL_OBJECTS =

diamond_lib/libdiamond_lib.a: diamond_lib/CMakeFiles/diamond_lib.dir/DiamondWorker.cpp.o
diamond_lib/libdiamond_lib.a: diamond_lib/CMakeFiles/diamond_lib.dir/build.make
diamond_lib/libdiamond_lib.a: diamond_lib/CMakeFiles/diamond_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jol/development/katas/cpp/Diamond/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libdiamond_lib.a"
	cd /home/jol/development/katas/cpp/Diamond/cmake-build-debug/diamond_lib && $(CMAKE_COMMAND) -P CMakeFiles/diamond_lib.dir/cmake_clean_target.cmake
	cd /home/jol/development/katas/cpp/Diamond/cmake-build-debug/diamond_lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/diamond_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
diamond_lib/CMakeFiles/diamond_lib.dir/build: diamond_lib/libdiamond_lib.a
.PHONY : diamond_lib/CMakeFiles/diamond_lib.dir/build

diamond_lib/CMakeFiles/diamond_lib.dir/clean:
	cd /home/jol/development/katas/cpp/Diamond/cmake-build-debug/diamond_lib && $(CMAKE_COMMAND) -P CMakeFiles/diamond_lib.dir/cmake_clean.cmake
.PHONY : diamond_lib/CMakeFiles/diamond_lib.dir/clean

diamond_lib/CMakeFiles/diamond_lib.dir/depend:
	cd /home/jol/development/katas/cpp/Diamond/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jol/development/katas/cpp/Diamond /home/jol/development/katas/cpp/Diamond/diamond_lib /home/jol/development/katas/cpp/Diamond/cmake-build-debug /home/jol/development/katas/cpp/Diamond/cmake-build-debug/diamond_lib /home/jol/development/katas/cpp/Diamond/cmake-build-debug/diamond_lib/CMakeFiles/diamond_lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : diamond_lib/CMakeFiles/diamond_lib.dir/depend
