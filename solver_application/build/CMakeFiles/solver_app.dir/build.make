# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/artem/lab03/solver_application

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/artem/lab03/solver_application/build

# Include any dependencies generated for this target.
include CMakeFiles/solver_app.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/solver_app.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/solver_app.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/solver_app.dir/flags.make

CMakeFiles/solver_app.dir/equation.cpp.o: CMakeFiles/solver_app.dir/flags.make
CMakeFiles/solver_app.dir/equation.cpp.o: ../equation.cpp
CMakeFiles/solver_app.dir/equation.cpp.o: CMakeFiles/solver_app.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/artem/lab03/solver_application/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/solver_app.dir/equation.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/solver_app.dir/equation.cpp.o -MF CMakeFiles/solver_app.dir/equation.cpp.o.d -o CMakeFiles/solver_app.dir/equation.cpp.o -c /home/artem/lab03/solver_application/equation.cpp

CMakeFiles/solver_app.dir/equation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/solver_app.dir/equation.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/artem/lab03/solver_application/equation.cpp > CMakeFiles/solver_app.dir/equation.cpp.i

CMakeFiles/solver_app.dir/equation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/solver_app.dir/equation.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/artem/lab03/solver_application/equation.cpp -o CMakeFiles/solver_app.dir/equation.cpp.s

# Object files for target solver_app
solver_app_OBJECTS = \
"CMakeFiles/solver_app.dir/equation.cpp.o"

# External object files for target solver_app
solver_app_EXTERNAL_OBJECTS =

solver_app: CMakeFiles/solver_app.dir/equation.cpp.o
solver_app: CMakeFiles/solver_app.dir/build.make
solver_app: libformatter_ex_lib.a
solver_app: libsolver.a
solver_app: libformatter_lib.a
solver_app: CMakeFiles/solver_app.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/artem/lab03/solver_application/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable solver_app"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/solver_app.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/solver_app.dir/build: solver_app
.PHONY : CMakeFiles/solver_app.dir/build

CMakeFiles/solver_app.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/solver_app.dir/cmake_clean.cmake
.PHONY : CMakeFiles/solver_app.dir/clean

CMakeFiles/solver_app.dir/depend:
	cd /home/artem/lab03/solver_application/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/artem/lab03/solver_application /home/artem/lab03/solver_application /home/artem/lab03/solver_application/build /home/artem/lab03/solver_application/build /home/artem/lab03/solver_application/build/CMakeFiles/solver_app.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/solver_app.dir/depend

