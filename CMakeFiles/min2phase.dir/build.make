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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/timo/fun/cubing/min2phaseCXX

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/timo/fun/cubing/min2phaseCXX

# Include any dependencies generated for this target.
include CMakeFiles/min2phase.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/min2phase.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/min2phase.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/min2phase.dir/flags.make

CMakeFiles/min2phase.dir/src/info.cpp.o: CMakeFiles/min2phase.dir/flags.make
CMakeFiles/min2phase.dir/src/info.cpp.o: src/info.cpp
CMakeFiles/min2phase.dir/src/info.cpp.o: CMakeFiles/min2phase.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/timo/fun/cubing/min2phaseCXX/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/min2phase.dir/src/info.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/min2phase.dir/src/info.cpp.o -MF CMakeFiles/min2phase.dir/src/info.cpp.o.d -o CMakeFiles/min2phase.dir/src/info.cpp.o -c /home/timo/fun/cubing/min2phaseCXX/src/info.cpp

CMakeFiles/min2phase.dir/src/info.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/min2phase.dir/src/info.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timo/fun/cubing/min2phaseCXX/src/info.cpp > CMakeFiles/min2phase.dir/src/info.cpp.i

CMakeFiles/min2phase.dir/src/info.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/min2phase.dir/src/info.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timo/fun/cubing/min2phaseCXX/src/info.cpp -o CMakeFiles/min2phase.dir/src/info.cpp.s

CMakeFiles/min2phase.dir/src/CubieCube.cpp.o: CMakeFiles/min2phase.dir/flags.make
CMakeFiles/min2phase.dir/src/CubieCube.cpp.o: src/CubieCube.cpp
CMakeFiles/min2phase.dir/src/CubieCube.cpp.o: CMakeFiles/min2phase.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/timo/fun/cubing/min2phaseCXX/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/min2phase.dir/src/CubieCube.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/min2phase.dir/src/CubieCube.cpp.o -MF CMakeFiles/min2phase.dir/src/CubieCube.cpp.o.d -o CMakeFiles/min2phase.dir/src/CubieCube.cpp.o -c /home/timo/fun/cubing/min2phaseCXX/src/CubieCube.cpp

CMakeFiles/min2phase.dir/src/CubieCube.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/min2phase.dir/src/CubieCube.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timo/fun/cubing/min2phaseCXX/src/CubieCube.cpp > CMakeFiles/min2phase.dir/src/CubieCube.cpp.i

CMakeFiles/min2phase.dir/src/CubieCube.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/min2phase.dir/src/CubieCube.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timo/fun/cubing/min2phaseCXX/src/CubieCube.cpp -o CMakeFiles/min2phase.dir/src/CubieCube.cpp.s

CMakeFiles/min2phase.dir/src/coords.cpp.o: CMakeFiles/min2phase.dir/flags.make
CMakeFiles/min2phase.dir/src/coords.cpp.o: src/coords.cpp
CMakeFiles/min2phase.dir/src/coords.cpp.o: CMakeFiles/min2phase.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/timo/fun/cubing/min2phaseCXX/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/min2phase.dir/src/coords.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/min2phase.dir/src/coords.cpp.o -MF CMakeFiles/min2phase.dir/src/coords.cpp.o.d -o CMakeFiles/min2phase.dir/src/coords.cpp.o -c /home/timo/fun/cubing/min2phaseCXX/src/coords.cpp

CMakeFiles/min2phase.dir/src/coords.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/min2phase.dir/src/coords.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timo/fun/cubing/min2phaseCXX/src/coords.cpp > CMakeFiles/min2phase.dir/src/coords.cpp.i

CMakeFiles/min2phase.dir/src/coords.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/min2phase.dir/src/coords.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timo/fun/cubing/min2phaseCXX/src/coords.cpp -o CMakeFiles/min2phase.dir/src/coords.cpp.s

CMakeFiles/min2phase.dir/src/Search.cpp.o: CMakeFiles/min2phase.dir/flags.make
CMakeFiles/min2phase.dir/src/Search.cpp.o: src/Search.cpp
CMakeFiles/min2phase.dir/src/Search.cpp.o: CMakeFiles/min2phase.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/timo/fun/cubing/min2phaseCXX/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/min2phase.dir/src/Search.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/min2phase.dir/src/Search.cpp.o -MF CMakeFiles/min2phase.dir/src/Search.cpp.o.d -o CMakeFiles/min2phase.dir/src/Search.cpp.o -c /home/timo/fun/cubing/min2phaseCXX/src/Search.cpp

CMakeFiles/min2phase.dir/src/Search.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/min2phase.dir/src/Search.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timo/fun/cubing/min2phaseCXX/src/Search.cpp > CMakeFiles/min2phase.dir/src/Search.cpp.i

CMakeFiles/min2phase.dir/src/Search.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/min2phase.dir/src/Search.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timo/fun/cubing/min2phaseCXX/src/Search.cpp -o CMakeFiles/min2phase.dir/src/Search.cpp.s

CMakeFiles/min2phase.dir/src/tools.cpp.o: CMakeFiles/min2phase.dir/flags.make
CMakeFiles/min2phase.dir/src/tools.cpp.o: src/tools.cpp
CMakeFiles/min2phase.dir/src/tools.cpp.o: CMakeFiles/min2phase.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/timo/fun/cubing/min2phaseCXX/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/min2phase.dir/src/tools.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/min2phase.dir/src/tools.cpp.o -MF CMakeFiles/min2phase.dir/src/tools.cpp.o.d -o CMakeFiles/min2phase.dir/src/tools.cpp.o -c /home/timo/fun/cubing/min2phaseCXX/src/tools.cpp

CMakeFiles/min2phase.dir/src/tools.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/min2phase.dir/src/tools.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timo/fun/cubing/min2phaseCXX/src/tools.cpp > CMakeFiles/min2phase.dir/src/tools.cpp.i

CMakeFiles/min2phase.dir/src/tools.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/min2phase.dir/src/tools.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timo/fun/cubing/min2phaseCXX/src/tools.cpp -o CMakeFiles/min2phase.dir/src/tools.cpp.s

CMakeFiles/min2phase.dir/src/min2phase.cpp.o: CMakeFiles/min2phase.dir/flags.make
CMakeFiles/min2phase.dir/src/min2phase.cpp.o: src/min2phase.cpp
CMakeFiles/min2phase.dir/src/min2phase.cpp.o: CMakeFiles/min2phase.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/timo/fun/cubing/min2phaseCXX/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/min2phase.dir/src/min2phase.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/min2phase.dir/src/min2phase.cpp.o -MF CMakeFiles/min2phase.dir/src/min2phase.cpp.o.d -o CMakeFiles/min2phase.dir/src/min2phase.cpp.o -c /home/timo/fun/cubing/min2phaseCXX/src/min2phase.cpp

CMakeFiles/min2phase.dir/src/min2phase.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/min2phase.dir/src/min2phase.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timo/fun/cubing/min2phaseCXX/src/min2phase.cpp > CMakeFiles/min2phase.dir/src/min2phase.cpp.i

CMakeFiles/min2phase.dir/src/min2phase.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/min2phase.dir/src/min2phase.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timo/fun/cubing/min2phaseCXX/src/min2phase.cpp -o CMakeFiles/min2phase.dir/src/min2phase.cpp.s

CMakeFiles/min2phase.dir/src/http.cpp.o: CMakeFiles/min2phase.dir/flags.make
CMakeFiles/min2phase.dir/src/http.cpp.o: src/http.cpp
CMakeFiles/min2phase.dir/src/http.cpp.o: CMakeFiles/min2phase.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/timo/fun/cubing/min2phaseCXX/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/min2phase.dir/src/http.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/min2phase.dir/src/http.cpp.o -MF CMakeFiles/min2phase.dir/src/http.cpp.o.d -o CMakeFiles/min2phase.dir/src/http.cpp.o -c /home/timo/fun/cubing/min2phaseCXX/src/http.cpp

CMakeFiles/min2phase.dir/src/http.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/min2phase.dir/src/http.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timo/fun/cubing/min2phaseCXX/src/http.cpp > CMakeFiles/min2phase.dir/src/http.cpp.i

CMakeFiles/min2phase.dir/src/http.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/min2phase.dir/src/http.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timo/fun/cubing/min2phaseCXX/src/http.cpp -o CMakeFiles/min2phase.dir/src/http.cpp.s

CMakeFiles/min2phase.dir/src/tests.cpp.o: CMakeFiles/min2phase.dir/flags.make
CMakeFiles/min2phase.dir/src/tests.cpp.o: src/tests.cpp
CMakeFiles/min2phase.dir/src/tests.cpp.o: CMakeFiles/min2phase.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/timo/fun/cubing/min2phaseCXX/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/min2phase.dir/src/tests.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/min2phase.dir/src/tests.cpp.o -MF CMakeFiles/min2phase.dir/src/tests.cpp.o.d -o CMakeFiles/min2phase.dir/src/tests.cpp.o -c /home/timo/fun/cubing/min2phaseCXX/src/tests.cpp

CMakeFiles/min2phase.dir/src/tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/min2phase.dir/src/tests.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/timo/fun/cubing/min2phaseCXX/src/tests.cpp > CMakeFiles/min2phase.dir/src/tests.cpp.i

CMakeFiles/min2phase.dir/src/tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/min2phase.dir/src/tests.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/timo/fun/cubing/min2phaseCXX/src/tests.cpp -o CMakeFiles/min2phase.dir/src/tests.cpp.s

# Object files for target min2phase
min2phase_OBJECTS = \
"CMakeFiles/min2phase.dir/src/info.cpp.o" \
"CMakeFiles/min2phase.dir/src/CubieCube.cpp.o" \
"CMakeFiles/min2phase.dir/src/coords.cpp.o" \
"CMakeFiles/min2phase.dir/src/Search.cpp.o" \
"CMakeFiles/min2phase.dir/src/tools.cpp.o" \
"CMakeFiles/min2phase.dir/src/min2phase.cpp.o" \
"CMakeFiles/min2phase.dir/src/http.cpp.o" \
"CMakeFiles/min2phase.dir/src/tests.cpp.o"

# External object files for target min2phase
min2phase_EXTERNAL_OBJECTS =

libmin2phase.a: CMakeFiles/min2phase.dir/src/info.cpp.o
libmin2phase.a: CMakeFiles/min2phase.dir/src/CubieCube.cpp.o
libmin2phase.a: CMakeFiles/min2phase.dir/src/coords.cpp.o
libmin2phase.a: CMakeFiles/min2phase.dir/src/Search.cpp.o
libmin2phase.a: CMakeFiles/min2phase.dir/src/tools.cpp.o
libmin2phase.a: CMakeFiles/min2phase.dir/src/min2phase.cpp.o
libmin2phase.a: CMakeFiles/min2phase.dir/src/http.cpp.o
libmin2phase.a: CMakeFiles/min2phase.dir/src/tests.cpp.o
libmin2phase.a: CMakeFiles/min2phase.dir/build.make
libmin2phase.a: CMakeFiles/min2phase.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/timo/fun/cubing/min2phaseCXX/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX static library libmin2phase.a"
	$(CMAKE_COMMAND) -P CMakeFiles/min2phase.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/min2phase.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/min2phase.dir/build: libmin2phase.a
.PHONY : CMakeFiles/min2phase.dir/build

CMakeFiles/min2phase.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/min2phase.dir/cmake_clean.cmake
.PHONY : CMakeFiles/min2phase.dir/clean

CMakeFiles/min2phase.dir/depend:
	cd /home/timo/fun/cubing/min2phaseCXX && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/timo/fun/cubing/min2phaseCXX /home/timo/fun/cubing/min2phaseCXX /home/timo/fun/cubing/min2phaseCXX /home/timo/fun/cubing/min2phaseCXX /home/timo/fun/cubing/min2phaseCXX/CMakeFiles/min2phase.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/min2phase.dir/depend

