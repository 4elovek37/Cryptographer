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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/bvasilenko/CLionProjects/securitycode

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/bvasilenko/CLionProjects/securitycode/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/securitycode.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/securitycode.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/securitycode.dir/flags.make

CMakeFiles/securitycode.dir/main.cpp.o: CMakeFiles/securitycode.dir/flags.make
CMakeFiles/securitycode.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/bvasilenko/CLionProjects/securitycode/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/securitycode.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/securitycode.dir/main.cpp.o -c /Users/bvasilenko/CLionProjects/securitycode/main.cpp

CMakeFiles/securitycode.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/securitycode.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/bvasilenko/CLionProjects/securitycode/main.cpp > CMakeFiles/securitycode.dir/main.cpp.i

CMakeFiles/securitycode.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/securitycode.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/bvasilenko/CLionProjects/securitycode/main.cpp -o CMakeFiles/securitycode.dir/main.cpp.s

CMakeFiles/securitycode.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/securitycode.dir/main.cpp.o.requires

CMakeFiles/securitycode.dir/main.cpp.o.provides: CMakeFiles/securitycode.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/securitycode.dir/build.make CMakeFiles/securitycode.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/securitycode.dir/main.cpp.o.provides

CMakeFiles/securitycode.dir/main.cpp.o.provides.build: CMakeFiles/securitycode.dir/main.cpp.o


CMakeFiles/securitycode.dir/EncProc.cpp.o: CMakeFiles/securitycode.dir/flags.make
CMakeFiles/securitycode.dir/EncProc.cpp.o: ../EncProc.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/bvasilenko/CLionProjects/securitycode/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/securitycode.dir/EncProc.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/securitycode.dir/EncProc.cpp.o -c /Users/bvasilenko/CLionProjects/securitycode/EncProc.cpp

CMakeFiles/securitycode.dir/EncProc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/securitycode.dir/EncProc.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/bvasilenko/CLionProjects/securitycode/EncProc.cpp > CMakeFiles/securitycode.dir/EncProc.cpp.i

CMakeFiles/securitycode.dir/EncProc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/securitycode.dir/EncProc.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/bvasilenko/CLionProjects/securitycode/EncProc.cpp -o CMakeFiles/securitycode.dir/EncProc.cpp.s

CMakeFiles/securitycode.dir/EncProc.cpp.o.requires:

.PHONY : CMakeFiles/securitycode.dir/EncProc.cpp.o.requires

CMakeFiles/securitycode.dir/EncProc.cpp.o.provides: CMakeFiles/securitycode.dir/EncProc.cpp.o.requires
	$(MAKE) -f CMakeFiles/securitycode.dir/build.make CMakeFiles/securitycode.dir/EncProc.cpp.o.provides.build
.PHONY : CMakeFiles/securitycode.dir/EncProc.cpp.o.provides

CMakeFiles/securitycode.dir/EncProc.cpp.o.provides.build: CMakeFiles/securitycode.dir/EncProc.cpp.o


CMakeFiles/securitycode.dir/Cryptographer.cpp.o: CMakeFiles/securitycode.dir/flags.make
CMakeFiles/securitycode.dir/Cryptographer.cpp.o: ../Cryptographer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/bvasilenko/CLionProjects/securitycode/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/securitycode.dir/Cryptographer.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/securitycode.dir/Cryptographer.cpp.o -c /Users/bvasilenko/CLionProjects/securitycode/Cryptographer.cpp

CMakeFiles/securitycode.dir/Cryptographer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/securitycode.dir/Cryptographer.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/bvasilenko/CLionProjects/securitycode/Cryptographer.cpp > CMakeFiles/securitycode.dir/Cryptographer.cpp.i

CMakeFiles/securitycode.dir/Cryptographer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/securitycode.dir/Cryptographer.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/bvasilenko/CLionProjects/securitycode/Cryptographer.cpp -o CMakeFiles/securitycode.dir/Cryptographer.cpp.s

CMakeFiles/securitycode.dir/Cryptographer.cpp.o.requires:

.PHONY : CMakeFiles/securitycode.dir/Cryptographer.cpp.o.requires

CMakeFiles/securitycode.dir/Cryptographer.cpp.o.provides: CMakeFiles/securitycode.dir/Cryptographer.cpp.o.requires
	$(MAKE) -f CMakeFiles/securitycode.dir/build.make CMakeFiles/securitycode.dir/Cryptographer.cpp.o.provides.build
.PHONY : CMakeFiles/securitycode.dir/Cryptographer.cpp.o.provides

CMakeFiles/securitycode.dir/Cryptographer.cpp.o.provides.build: CMakeFiles/securitycode.dir/Cryptographer.cpp.o


CMakeFiles/securitycode.dir/OFBAlg.cpp.o: CMakeFiles/securitycode.dir/flags.make
CMakeFiles/securitycode.dir/OFBAlg.cpp.o: ../OFBAlg.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/bvasilenko/CLionProjects/securitycode/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/securitycode.dir/OFBAlg.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/securitycode.dir/OFBAlg.cpp.o -c /Users/bvasilenko/CLionProjects/securitycode/OFBAlg.cpp

CMakeFiles/securitycode.dir/OFBAlg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/securitycode.dir/OFBAlg.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/bvasilenko/CLionProjects/securitycode/OFBAlg.cpp > CMakeFiles/securitycode.dir/OFBAlg.cpp.i

CMakeFiles/securitycode.dir/OFBAlg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/securitycode.dir/OFBAlg.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/bvasilenko/CLionProjects/securitycode/OFBAlg.cpp -o CMakeFiles/securitycode.dir/OFBAlg.cpp.s

CMakeFiles/securitycode.dir/OFBAlg.cpp.o.requires:

.PHONY : CMakeFiles/securitycode.dir/OFBAlg.cpp.o.requires

CMakeFiles/securitycode.dir/OFBAlg.cpp.o.provides: CMakeFiles/securitycode.dir/OFBAlg.cpp.o.requires
	$(MAKE) -f CMakeFiles/securitycode.dir/build.make CMakeFiles/securitycode.dir/OFBAlg.cpp.o.provides.build
.PHONY : CMakeFiles/securitycode.dir/OFBAlg.cpp.o.provides

CMakeFiles/securitycode.dir/OFBAlg.cpp.o.provides.build: CMakeFiles/securitycode.dir/OFBAlg.cpp.o


CMakeFiles/securitycode.dir/CTRAlg.cpp.o: CMakeFiles/securitycode.dir/flags.make
CMakeFiles/securitycode.dir/CTRAlg.cpp.o: ../CTRAlg.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/bvasilenko/CLionProjects/securitycode/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/securitycode.dir/CTRAlg.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/securitycode.dir/CTRAlg.cpp.o -c /Users/bvasilenko/CLionProjects/securitycode/CTRAlg.cpp

CMakeFiles/securitycode.dir/CTRAlg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/securitycode.dir/CTRAlg.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/bvasilenko/CLionProjects/securitycode/CTRAlg.cpp > CMakeFiles/securitycode.dir/CTRAlg.cpp.i

CMakeFiles/securitycode.dir/CTRAlg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/securitycode.dir/CTRAlg.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/bvasilenko/CLionProjects/securitycode/CTRAlg.cpp -o CMakeFiles/securitycode.dir/CTRAlg.cpp.s

CMakeFiles/securitycode.dir/CTRAlg.cpp.o.requires:

.PHONY : CMakeFiles/securitycode.dir/CTRAlg.cpp.o.requires

CMakeFiles/securitycode.dir/CTRAlg.cpp.o.provides: CMakeFiles/securitycode.dir/CTRAlg.cpp.o.requires
	$(MAKE) -f CMakeFiles/securitycode.dir/build.make CMakeFiles/securitycode.dir/CTRAlg.cpp.o.provides.build
.PHONY : CMakeFiles/securitycode.dir/CTRAlg.cpp.o.provides

CMakeFiles/securitycode.dir/CTRAlg.cpp.o.provides.build: CMakeFiles/securitycode.dir/CTRAlg.cpp.o


# Object files for target securitycode
securitycode_OBJECTS = \
"CMakeFiles/securitycode.dir/main.cpp.o" \
"CMakeFiles/securitycode.dir/EncProc.cpp.o" \
"CMakeFiles/securitycode.dir/Cryptographer.cpp.o" \
"CMakeFiles/securitycode.dir/OFBAlg.cpp.o" \
"CMakeFiles/securitycode.dir/CTRAlg.cpp.o"

# External object files for target securitycode
securitycode_EXTERNAL_OBJECTS =

securitycode: CMakeFiles/securitycode.dir/main.cpp.o
securitycode: CMakeFiles/securitycode.dir/EncProc.cpp.o
securitycode: CMakeFiles/securitycode.dir/Cryptographer.cpp.o
securitycode: CMakeFiles/securitycode.dir/OFBAlg.cpp.o
securitycode: CMakeFiles/securitycode.dir/CTRAlg.cpp.o
securitycode: CMakeFiles/securitycode.dir/build.make
securitycode: CMakeFiles/securitycode.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/bvasilenko/CLionProjects/securitycode/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable securitycode"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/securitycode.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/securitycode.dir/build: securitycode

.PHONY : CMakeFiles/securitycode.dir/build

CMakeFiles/securitycode.dir/requires: CMakeFiles/securitycode.dir/main.cpp.o.requires
CMakeFiles/securitycode.dir/requires: CMakeFiles/securitycode.dir/EncProc.cpp.o.requires
CMakeFiles/securitycode.dir/requires: CMakeFiles/securitycode.dir/Cryptographer.cpp.o.requires
CMakeFiles/securitycode.dir/requires: CMakeFiles/securitycode.dir/OFBAlg.cpp.o.requires
CMakeFiles/securitycode.dir/requires: CMakeFiles/securitycode.dir/CTRAlg.cpp.o.requires

.PHONY : CMakeFiles/securitycode.dir/requires

CMakeFiles/securitycode.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/securitycode.dir/cmake_clean.cmake
.PHONY : CMakeFiles/securitycode.dir/clean

CMakeFiles/securitycode.dir/depend:
	cd /Users/bvasilenko/CLionProjects/securitycode/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/bvasilenko/CLionProjects/securitycode /Users/bvasilenko/CLionProjects/securitycode /Users/bvasilenko/CLionProjects/securitycode/cmake-build-debug /Users/bvasilenko/CLionProjects/securitycode/cmake-build-debug /Users/bvasilenko/CLionProjects/securitycode/cmake-build-debug/CMakeFiles/securitycode.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/securitycode.dir/depend

