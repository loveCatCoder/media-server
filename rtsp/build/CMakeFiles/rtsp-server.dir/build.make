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
CMAKE_SOURCE_DIR = /home/zn/media-server/rtsp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zn/media-server/rtsp/build

# Include any dependencies generated for this target.
include CMakeFiles/rtsp-server.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/rtsp-server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rtsp-server.dir/flags.make

CMakeFiles/rtsp-server.dir/main.cpp.o: CMakeFiles/rtsp-server.dir/flags.make
CMakeFiles/rtsp-server.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zn/media-server/rtsp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/rtsp-server.dir/main.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rtsp-server.dir/main.cpp.o -c /home/zn/media-server/rtsp/main.cpp

CMakeFiles/rtsp-server.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rtsp-server.dir/main.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zn/media-server/rtsp/main.cpp > CMakeFiles/rtsp-server.dir/main.cpp.i

CMakeFiles/rtsp-server.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rtsp-server.dir/main.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zn/media-server/rtsp/main.cpp -o CMakeFiles/rtsp-server.dir/main.cpp.s

CMakeFiles/rtsp-server.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/rtsp-server.dir/main.cpp.o.requires

CMakeFiles/rtsp-server.dir/main.cpp.o.provides: CMakeFiles/rtsp-server.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/rtsp-server.dir/build.make CMakeFiles/rtsp-server.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/rtsp-server.dir/main.cpp.o.provides

CMakeFiles/rtsp-server.dir/main.cpp.o.provides.build: CMakeFiles/rtsp-server.dir/main.cpp.o


CMakeFiles/rtsp-server.dir/RtspConnection.cpp.o: CMakeFiles/rtsp-server.dir/flags.make
CMakeFiles/rtsp-server.dir/RtspConnection.cpp.o: ../RtspConnection.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zn/media-server/rtsp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/rtsp-server.dir/RtspConnection.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rtsp-server.dir/RtspConnection.cpp.o -c /home/zn/media-server/rtsp/RtspConnection.cpp

CMakeFiles/rtsp-server.dir/RtspConnection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rtsp-server.dir/RtspConnection.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zn/media-server/rtsp/RtspConnection.cpp > CMakeFiles/rtsp-server.dir/RtspConnection.cpp.i

CMakeFiles/rtsp-server.dir/RtspConnection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rtsp-server.dir/RtspConnection.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zn/media-server/rtsp/RtspConnection.cpp -o CMakeFiles/rtsp-server.dir/RtspConnection.cpp.s

CMakeFiles/rtsp-server.dir/RtspConnection.cpp.o.requires:

.PHONY : CMakeFiles/rtsp-server.dir/RtspConnection.cpp.o.requires

CMakeFiles/rtsp-server.dir/RtspConnection.cpp.o.provides: CMakeFiles/rtsp-server.dir/RtspConnection.cpp.o.requires
	$(MAKE) -f CMakeFiles/rtsp-server.dir/build.make CMakeFiles/rtsp-server.dir/RtspConnection.cpp.o.provides.build
.PHONY : CMakeFiles/rtsp-server.dir/RtspConnection.cpp.o.provides

CMakeFiles/rtsp-server.dir/RtspConnection.cpp.o.provides.build: CMakeFiles/rtsp-server.dir/RtspConnection.cpp.o


CMakeFiles/rtsp-server.dir/RtspServer.cpp.o: CMakeFiles/rtsp-server.dir/flags.make
CMakeFiles/rtsp-server.dir/RtspServer.cpp.o: ../RtspServer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zn/media-server/rtsp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/rtsp-server.dir/RtspServer.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rtsp-server.dir/RtspServer.cpp.o -c /home/zn/media-server/rtsp/RtspServer.cpp

CMakeFiles/rtsp-server.dir/RtspServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rtsp-server.dir/RtspServer.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zn/media-server/rtsp/RtspServer.cpp > CMakeFiles/rtsp-server.dir/RtspServer.cpp.i

CMakeFiles/rtsp-server.dir/RtspServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rtsp-server.dir/RtspServer.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zn/media-server/rtsp/RtspServer.cpp -o CMakeFiles/rtsp-server.dir/RtspServer.cpp.s

CMakeFiles/rtsp-server.dir/RtspServer.cpp.o.requires:

.PHONY : CMakeFiles/rtsp-server.dir/RtspServer.cpp.o.requires

CMakeFiles/rtsp-server.dir/RtspServer.cpp.o.provides: CMakeFiles/rtsp-server.dir/RtspServer.cpp.o.requires
	$(MAKE) -f CMakeFiles/rtsp-server.dir/build.make CMakeFiles/rtsp-server.dir/RtspServer.cpp.o.provides.build
.PHONY : CMakeFiles/rtsp-server.dir/RtspServer.cpp.o.provides

CMakeFiles/rtsp-server.dir/RtspServer.cpp.o.provides.build: CMakeFiles/rtsp-server.dir/RtspServer.cpp.o


# Object files for target rtsp-server
rtsp__server_OBJECTS = \
"CMakeFiles/rtsp-server.dir/main.cpp.o" \
"CMakeFiles/rtsp-server.dir/RtspConnection.cpp.o" \
"CMakeFiles/rtsp-server.dir/RtspServer.cpp.o"

# External object files for target rtsp-server
rtsp__server_EXTERNAL_OBJECTS =

rtsp-server: CMakeFiles/rtsp-server.dir/main.cpp.o
rtsp-server: CMakeFiles/rtsp-server.dir/RtspConnection.cpp.o
rtsp-server: CMakeFiles/rtsp-server.dir/RtspServer.cpp.o
rtsp-server: CMakeFiles/rtsp-server.dir/build.make
rtsp-server: CMakeFiles/rtsp-server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zn/media-server/rtsp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable rtsp-server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rtsp-server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/rtsp-server.dir/build: rtsp-server

.PHONY : CMakeFiles/rtsp-server.dir/build

CMakeFiles/rtsp-server.dir/requires: CMakeFiles/rtsp-server.dir/main.cpp.o.requires
CMakeFiles/rtsp-server.dir/requires: CMakeFiles/rtsp-server.dir/RtspConnection.cpp.o.requires
CMakeFiles/rtsp-server.dir/requires: CMakeFiles/rtsp-server.dir/RtspServer.cpp.o.requires

.PHONY : CMakeFiles/rtsp-server.dir/requires

CMakeFiles/rtsp-server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rtsp-server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rtsp-server.dir/clean

CMakeFiles/rtsp-server.dir/depend:
	cd /home/zn/media-server/rtsp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zn/media-server/rtsp /home/zn/media-server/rtsp /home/zn/media-server/rtsp/build /home/zn/media-server/rtsp/build /home/zn/media-server/rtsp/build/CMakeFiles/rtsp-server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rtsp-server.dir/depend

