# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/codio/workspace/hw6/hw6_tests

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/codio/workspace/hw6/hw6_tests

# Utility rule file for grade.

# Include the progress variables for this target.
include CMakeFiles/grade.dir/progress.make

CMakeFiles/grade:
	/usr/bin/cmake -E echo --\ Cleaning\ build\ dir\ to\ get\ a\ clean\ record\ of\ compilation\ warnings\ and\ errors
	make clean
	/usr/bin/cmake -E echo --\ Compiling\ testing\ tools
	make testing_utils
	/usr/bin/cmake -E echo --\ Compiling\ hashtable\ tests,\ output\ saved\ to\ /home/codio/workspace/hw6/hw6_tests/compile-logs/hashtable.complog
	make hashtable_tests 1>/home/codio/workspace/hw6/hw6_tests/compile-logs/hashtable.complog 2>&1 || true
	/usr/bin/cmake -E echo --\ Compiling\ hashfunc\ tests,\ output\ saved\ to\ /home/codio/workspace/hw6/hw6_tests/compile-logs/hashfunc.complog
	make hashfunc_tests 1>/home/codio/workspace/hw6/hw6_tests/compile-logs/hashfunc.complog 2>&1 || true
	/usr/bin/cmake -E remove_directory /home/codio/workspace/hw6/hw6_tests/Testing
	/usr/bin/ctest -T Test --no-compress-output -C Debug --timeout 30 || true
	/usr/bin/cmake -E echo --\ Generating\ grade\ report
	python3 /home/codio/workspace/hw6/hw6_tests/gen_grade_report.py

grade: CMakeFiles/grade
grade: CMakeFiles/grade.dir/build.make

.PHONY : grade

# Rule to build all files generated by this target.
CMakeFiles/grade.dir/build: grade

.PHONY : CMakeFiles/grade.dir/build

CMakeFiles/grade.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/grade.dir/cmake_clean.cmake
.PHONY : CMakeFiles/grade.dir/clean

CMakeFiles/grade.dir/depend:
	cd /home/codio/workspace/hw6/hw6_tests && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/codio/workspace/hw6/hw6_tests /home/codio/workspace/hw6/hw6_tests /home/codio/workspace/hw6/hw6_tests /home/codio/workspace/hw6/hw6_tests /home/codio/workspace/hw6/hw6_tests/CMakeFiles/grade.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/grade.dir/depend
