# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/scarlettgao/CLionProjects/fastfactor

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/scarlettgao/CLionProjects/fastfactor/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/fastfactor.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/fastfactor.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/fastfactor.dir/flags.make

CMakeFiles/fastfactor.dir/main.c.o: CMakeFiles/fastfactor.dir/flags.make
CMakeFiles/fastfactor.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/scarlettgao/CLionProjects/fastfactor/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/fastfactor.dir/main.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/fastfactor.dir/main.c.o   -c /Users/scarlettgao/CLionProjects/fastfactor/main.c

CMakeFiles/fastfactor.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fastfactor.dir/main.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/scarlettgao/CLionProjects/fastfactor/main.c > CMakeFiles/fastfactor.dir/main.c.i

CMakeFiles/fastfactor.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fastfactor.dir/main.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/scarlettgao/CLionProjects/fastfactor/main.c -o CMakeFiles/fastfactor.dir/main.c.s

# Object files for target fastfactor
fastfactor_OBJECTS = \
"CMakeFiles/fastfactor.dir/main.c.o"

# External object files for target fastfactor
fastfactor_EXTERNAL_OBJECTS =

fastfactor: CMakeFiles/fastfactor.dir/main.c.o
fastfactor: CMakeFiles/fastfactor.dir/build.make
fastfactor: CMakeFiles/fastfactor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/scarlettgao/CLionProjects/fastfactor/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable fastfactor"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fastfactor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/fastfactor.dir/build: fastfactor

.PHONY : CMakeFiles/fastfactor.dir/build

CMakeFiles/fastfactor.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/fastfactor.dir/cmake_clean.cmake
.PHONY : CMakeFiles/fastfactor.dir/clean

CMakeFiles/fastfactor.dir/depend:
	cd /Users/scarlettgao/CLionProjects/fastfactor/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/scarlettgao/CLionProjects/fastfactor /Users/scarlettgao/CLionProjects/fastfactor /Users/scarlettgao/CLionProjects/fastfactor/cmake-build-debug /Users/scarlettgao/CLionProjects/fastfactor/cmake-build-debug /Users/scarlettgao/CLionProjects/fastfactor/cmake-build-debug/CMakeFiles/fastfactor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/fastfactor.dir/depend

