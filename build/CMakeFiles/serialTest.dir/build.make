# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/work/Basics_motion

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/work/Basics_motion/build

# Include any dependencies generated for this target.
include CMakeFiles/serialTest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/serialTest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/serialTest.dir/flags.make

CMakeFiles/serialTest.dir/src/serialTest.cpp.o: CMakeFiles/serialTest.dir/flags.make
CMakeFiles/serialTest.dir/src/serialTest.cpp.o: ../src/serialTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/work/Basics_motion/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/serialTest.dir/src/serialTest.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/serialTest.dir/src/serialTest.cpp.o -c /home/work/Basics_motion/src/serialTest.cpp

CMakeFiles/serialTest.dir/src/serialTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serialTest.dir/src/serialTest.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/work/Basics_motion/src/serialTest.cpp > CMakeFiles/serialTest.dir/src/serialTest.cpp.i

CMakeFiles/serialTest.dir/src/serialTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serialTest.dir/src/serialTest.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/work/Basics_motion/src/serialTest.cpp -o CMakeFiles/serialTest.dir/src/serialTest.cpp.s

CMakeFiles/serialTest.dir/src/serialTest.cpp.o.requires:

.PHONY : CMakeFiles/serialTest.dir/src/serialTest.cpp.o.requires

CMakeFiles/serialTest.dir/src/serialTest.cpp.o.provides: CMakeFiles/serialTest.dir/src/serialTest.cpp.o.requires
	$(MAKE) -f CMakeFiles/serialTest.dir/build.make CMakeFiles/serialTest.dir/src/serialTest.cpp.o.provides.build
.PHONY : CMakeFiles/serialTest.dir/src/serialTest.cpp.o.provides

CMakeFiles/serialTest.dir/src/serialTest.cpp.o.provides.build: CMakeFiles/serialTest.dir/src/serialTest.cpp.o


# Object files for target serialTest
serialTest_OBJECTS = \
"CMakeFiles/serialTest.dir/src/serialTest.cpp.o"

# External object files for target serialTest
serialTest_EXTERNAL_OBJECTS =

serialTest: CMakeFiles/serialTest.dir/src/serialTest.cpp.o
serialTest: CMakeFiles/serialTest.dir/build.make
serialTest: serialcom-src/build/libserialcomlib.so
serialTest: CMakeFiles/serialTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/work/Basics_motion/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable serialTest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/serialTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/serialTest.dir/build: serialTest

.PHONY : CMakeFiles/serialTest.dir/build

CMakeFiles/serialTest.dir/requires: CMakeFiles/serialTest.dir/src/serialTest.cpp.o.requires

.PHONY : CMakeFiles/serialTest.dir/requires

CMakeFiles/serialTest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/serialTest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/serialTest.dir/clean

CMakeFiles/serialTest.dir/depend:
	cd /home/work/Basics_motion/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/work/Basics_motion /home/work/Basics_motion /home/work/Basics_motion/build /home/work/Basics_motion/build /home/work/Basics_motion/build/CMakeFiles/serialTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/serialTest.dir/depend
