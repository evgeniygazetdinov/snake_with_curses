# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /home/evgesha/Documents/clion-2019.2/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/evgesha/Documents/clion-2019.2/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/evgesha/CLionProjects/snake_on_clang

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/evgesha/CLionProjects/snake_on_clang/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/snake_on_clang.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/snake_on_clang.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/snake_on_clang.dir/flags.make

CMakeFiles/snake_on_clang.dir/not_main.c.o: CMakeFiles/snake_on_clang.dir/flags.make
CMakeFiles/snake_on_clang.dir/not_main.c.o: ../not_main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/evgesha/CLionProjects/snake_on_clang/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/snake_on_clang.dir/not_main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/snake_on_clang.dir/not_main.c.o   -c /home/evgesha/CLionProjects/snake_on_clang/not_main.c

CMakeFiles/snake_on_clang.dir/not_main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/snake_on_clang.dir/not_main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/evgesha/CLionProjects/snake_on_clang/not_main.c > CMakeFiles/snake_on_clang.dir/not_main.c.i

CMakeFiles/snake_on_clang.dir/not_main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/snake_on_clang.dir/not_main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/evgesha/CLionProjects/snake_on_clang/not_main.c -o CMakeFiles/snake_on_clang.dir/not_main.c.s

CMakeFiles/snake_on_clang.dir/main.c.o: CMakeFiles/snake_on_clang.dir/flags.make
CMakeFiles/snake_on_clang.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/evgesha/CLionProjects/snake_on_clang/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/snake_on_clang.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/snake_on_clang.dir/main.c.o   -c /home/evgesha/CLionProjects/snake_on_clang/main.c

CMakeFiles/snake_on_clang.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/snake_on_clang.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/evgesha/CLionProjects/snake_on_clang/main.c > CMakeFiles/snake_on_clang.dir/main.c.i

CMakeFiles/snake_on_clang.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/snake_on_clang.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/evgesha/CLionProjects/snake_on_clang/main.c -o CMakeFiles/snake_on_clang.dir/main.c.s

# Object files for target snake_on_clang
snake_on_clang_OBJECTS = \
"CMakeFiles/snake_on_clang.dir/not_main.c.o" \
"CMakeFiles/snake_on_clang.dir/main.c.o"

# External object files for target snake_on_clang
snake_on_clang_EXTERNAL_OBJECTS =

snake_on_clang: CMakeFiles/snake_on_clang.dir/not_main.c.o
snake_on_clang: CMakeFiles/snake_on_clang.dir/main.c.o
snake_on_clang: CMakeFiles/snake_on_clang.dir/build.make
snake_on_clang: CMakeFiles/snake_on_clang.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/evgesha/CLionProjects/snake_on_clang/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable snake_on_clang"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/snake_on_clang.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/snake_on_clang.dir/build: snake_on_clang

.PHONY : CMakeFiles/snake_on_clang.dir/build

CMakeFiles/snake_on_clang.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/snake_on_clang.dir/cmake_clean.cmake
.PHONY : CMakeFiles/snake_on_clang.dir/clean

CMakeFiles/snake_on_clang.dir/depend:
	cd /home/evgesha/CLionProjects/snake_on_clang/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/evgesha/CLionProjects/snake_on_clang /home/evgesha/CLionProjects/snake_on_clang /home/evgesha/CLionProjects/snake_on_clang/cmake-build-debug /home/evgesha/CLionProjects/snake_on_clang/cmake-build-debug /home/evgesha/CLionProjects/snake_on_clang/cmake-build-debug/CMakeFiles/snake_on_clang.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/snake_on_clang.dir/depend

