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
include google-test/CMakeFiles/Google_Tests_run.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include google-test/CMakeFiles/Google_Tests_run.dir/compiler_depend.make

# Include the progress variables for this target.
include google-test/CMakeFiles/Google_Tests_run.dir/progress.make

# Include the compile flags for this target's objects.
include google-test/CMakeFiles/Google_Tests_run.dir/flags.make

google-test/CMakeFiles/Google_Tests_run.dir/DiamondTest.cpp.o: google-test/CMakeFiles/Google_Tests_run.dir/flags.make
google-test/CMakeFiles/Google_Tests_run.dir/DiamondTest.cpp.o: /home/jol/development/katas/cpp/Diamond/google-test/DiamondTest.cpp
google-test/CMakeFiles/Google_Tests_run.dir/DiamondTest.cpp.o: google-test/CMakeFiles/Google_Tests_run.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jol/development/katas/cpp/Diamond/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object google-test/CMakeFiles/Google_Tests_run.dir/DiamondTest.cpp.o"
	cd /home/jol/development/katas/cpp/Diamond/cmake-build-debug/google-test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT google-test/CMakeFiles/Google_Tests_run.dir/DiamondTest.cpp.o -MF CMakeFiles/Google_Tests_run.dir/DiamondTest.cpp.o.d -o CMakeFiles/Google_Tests_run.dir/DiamondTest.cpp.o -c /home/jol/development/katas/cpp/Diamond/google-test/DiamondTest.cpp

google-test/CMakeFiles/Google_Tests_run.dir/DiamondTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Google_Tests_run.dir/DiamondTest.cpp.i"
	cd /home/jol/development/katas/cpp/Diamond/cmake-build-debug/google-test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jol/development/katas/cpp/Diamond/google-test/DiamondTest.cpp > CMakeFiles/Google_Tests_run.dir/DiamondTest.cpp.i

google-test/CMakeFiles/Google_Tests_run.dir/DiamondTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Google_Tests_run.dir/DiamondTest.cpp.s"
	cd /home/jol/development/katas/cpp/Diamond/cmake-build-debug/google-test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jol/development/katas/cpp/Diamond/google-test/DiamondTest.cpp -o CMakeFiles/Google_Tests_run.dir/DiamondTest.cpp.s

# Object files for target Google_Tests_run
Google_Tests_run_OBJECTS = \
"CMakeFiles/Google_Tests_run.dir/DiamondTest.cpp.o"

# External object files for target Google_Tests_run
Google_Tests_run_EXTERNAL_OBJECTS =

google-test/Google_Tests_run: google-test/CMakeFiles/Google_Tests_run.dir/DiamondTest.cpp.o
google-test/Google_Tests_run: google-test/CMakeFiles/Google_Tests_run.dir/build.make
google-test/Google_Tests_run: diamond_lib/libdiamond_lib.a
google-test/Google_Tests_run: lib/libgtest.a
google-test/Google_Tests_run: lib/libgtest_main.a
google-test/Google_Tests_run: lib/libgtest.a
google-test/Google_Tests_run: google-test/CMakeFiles/Google_Tests_run.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jol/development/katas/cpp/Diamond/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Google_Tests_run"
	cd /home/jol/development/katas/cpp/Diamond/cmake-build-debug/google-test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Google_Tests_run.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
google-test/CMakeFiles/Google_Tests_run.dir/build: google-test/Google_Tests_run
.PHONY : google-test/CMakeFiles/Google_Tests_run.dir/build

google-test/CMakeFiles/Google_Tests_run.dir/clean:
	cd /home/jol/development/katas/cpp/Diamond/cmake-build-debug/google-test && $(CMAKE_COMMAND) -P CMakeFiles/Google_Tests_run.dir/cmake_clean.cmake
.PHONY : google-test/CMakeFiles/Google_Tests_run.dir/clean

google-test/CMakeFiles/Google_Tests_run.dir/depend:
	cd /home/jol/development/katas/cpp/Diamond/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jol/development/katas/cpp/Diamond /home/jol/development/katas/cpp/Diamond/google-test /home/jol/development/katas/cpp/Diamond/cmake-build-debug /home/jol/development/katas/cpp/Diamond/cmake-build-debug/google-test /home/jol/development/katas/cpp/Diamond/cmake-build-debug/google-test/CMakeFiles/Google_Tests_run.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : google-test/CMakeFiles/Google_Tests_run.dir/depend

