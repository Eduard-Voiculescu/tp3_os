# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_SOURCE_DIR = /Users/eduardvoiculescu/Documents/tp3_os

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/eduardvoiculescu/Documents/tp3_os/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/tp3_os.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tp3_os.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tp3_os.dir/flags.make

CMakeFiles/tp3_os.dir/src/common.c.o: CMakeFiles/tp3_os.dir/flags.make
CMakeFiles/tp3_os.dir/src/common.c.o: ../src/common.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eduardvoiculescu/Documents/tp3_os/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/tp3_os.dir/src/common.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tp3_os.dir/src/common.c.o   -c /Users/eduardvoiculescu/Documents/tp3_os/src/common.c

CMakeFiles/tp3_os.dir/src/common.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tp3_os.dir/src/common.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/eduardvoiculescu/Documents/tp3_os/src/common.c > CMakeFiles/tp3_os.dir/src/common.c.i

CMakeFiles/tp3_os.dir/src/common.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tp3_os.dir/src/common.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/eduardvoiculescu/Documents/tp3_os/src/common.c -o CMakeFiles/tp3_os.dir/src/common.c.s

CMakeFiles/tp3_os.dir/src/common.c.o.requires:

.PHONY : CMakeFiles/tp3_os.dir/src/common.c.o.requires

CMakeFiles/tp3_os.dir/src/common.c.o.provides: CMakeFiles/tp3_os.dir/src/common.c.o.requires
	$(MAKE) -f CMakeFiles/tp3_os.dir/build.make CMakeFiles/tp3_os.dir/src/common.c.o.provides.build
.PHONY : CMakeFiles/tp3_os.dir/src/common.c.o.provides

CMakeFiles/tp3_os.dir/src/common.c.o.provides.build: CMakeFiles/tp3_os.dir/src/common.c.o


CMakeFiles/tp3_os.dir/src/pm.c.o: CMakeFiles/tp3_os.dir/flags.make
CMakeFiles/tp3_os.dir/src/pm.c.o: ../src/pm.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eduardvoiculescu/Documents/tp3_os/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/tp3_os.dir/src/pm.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tp3_os.dir/src/pm.c.o   -c /Users/eduardvoiculescu/Documents/tp3_os/src/pm.c

CMakeFiles/tp3_os.dir/src/pm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tp3_os.dir/src/pm.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/eduardvoiculescu/Documents/tp3_os/src/pm.c > CMakeFiles/tp3_os.dir/src/pm.c.i

CMakeFiles/tp3_os.dir/src/pm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tp3_os.dir/src/pm.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/eduardvoiculescu/Documents/tp3_os/src/pm.c -o CMakeFiles/tp3_os.dir/src/pm.c.s

CMakeFiles/tp3_os.dir/src/pm.c.o.requires:

.PHONY : CMakeFiles/tp3_os.dir/src/pm.c.o.requires

CMakeFiles/tp3_os.dir/src/pm.c.o.provides: CMakeFiles/tp3_os.dir/src/pm.c.o.requires
	$(MAKE) -f CMakeFiles/tp3_os.dir/build.make CMakeFiles/tp3_os.dir/src/pm.c.o.provides.build
.PHONY : CMakeFiles/tp3_os.dir/src/pm.c.o.provides

CMakeFiles/tp3_os.dir/src/pm.c.o.provides.build: CMakeFiles/tp3_os.dir/src/pm.c.o


CMakeFiles/tp3_os.dir/src/pt.c.o: CMakeFiles/tp3_os.dir/flags.make
CMakeFiles/tp3_os.dir/src/pt.c.o: ../src/pt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eduardvoiculescu/Documents/tp3_os/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/tp3_os.dir/src/pt.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tp3_os.dir/src/pt.c.o   -c /Users/eduardvoiculescu/Documents/tp3_os/src/pt.c

CMakeFiles/tp3_os.dir/src/pt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tp3_os.dir/src/pt.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/eduardvoiculescu/Documents/tp3_os/src/pt.c > CMakeFiles/tp3_os.dir/src/pt.c.i

CMakeFiles/tp3_os.dir/src/pt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tp3_os.dir/src/pt.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/eduardvoiculescu/Documents/tp3_os/src/pt.c -o CMakeFiles/tp3_os.dir/src/pt.c.s

CMakeFiles/tp3_os.dir/src/pt.c.o.requires:

.PHONY : CMakeFiles/tp3_os.dir/src/pt.c.o.requires

CMakeFiles/tp3_os.dir/src/pt.c.o.provides: CMakeFiles/tp3_os.dir/src/pt.c.o.requires
	$(MAKE) -f CMakeFiles/tp3_os.dir/build.make CMakeFiles/tp3_os.dir/src/pt.c.o.provides.build
.PHONY : CMakeFiles/tp3_os.dir/src/pt.c.o.provides

CMakeFiles/tp3_os.dir/src/pt.c.o.provides.build: CMakeFiles/tp3_os.dir/src/pt.c.o


CMakeFiles/tp3_os.dir/src/tlb.c.o: CMakeFiles/tp3_os.dir/flags.make
CMakeFiles/tp3_os.dir/src/tlb.c.o: ../src/tlb.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eduardvoiculescu/Documents/tp3_os/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/tp3_os.dir/src/tlb.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tp3_os.dir/src/tlb.c.o   -c /Users/eduardvoiculescu/Documents/tp3_os/src/tlb.c

CMakeFiles/tp3_os.dir/src/tlb.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tp3_os.dir/src/tlb.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/eduardvoiculescu/Documents/tp3_os/src/tlb.c > CMakeFiles/tp3_os.dir/src/tlb.c.i

CMakeFiles/tp3_os.dir/src/tlb.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tp3_os.dir/src/tlb.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/eduardvoiculescu/Documents/tp3_os/src/tlb.c -o CMakeFiles/tp3_os.dir/src/tlb.c.s

CMakeFiles/tp3_os.dir/src/tlb.c.o.requires:

.PHONY : CMakeFiles/tp3_os.dir/src/tlb.c.o.requires

CMakeFiles/tp3_os.dir/src/tlb.c.o.provides: CMakeFiles/tp3_os.dir/src/tlb.c.o.requires
	$(MAKE) -f CMakeFiles/tp3_os.dir/build.make CMakeFiles/tp3_os.dir/src/tlb.c.o.provides.build
.PHONY : CMakeFiles/tp3_os.dir/src/tlb.c.o.provides

CMakeFiles/tp3_os.dir/src/tlb.c.o.provides.build: CMakeFiles/tp3_os.dir/src/tlb.c.o


CMakeFiles/tp3_os.dir/src/vmm.c.o: CMakeFiles/tp3_os.dir/flags.make
CMakeFiles/tp3_os.dir/src/vmm.c.o: ../src/vmm.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eduardvoiculescu/Documents/tp3_os/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/tp3_os.dir/src/vmm.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tp3_os.dir/src/vmm.c.o   -c /Users/eduardvoiculescu/Documents/tp3_os/src/vmm.c

CMakeFiles/tp3_os.dir/src/vmm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tp3_os.dir/src/vmm.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/eduardvoiculescu/Documents/tp3_os/src/vmm.c > CMakeFiles/tp3_os.dir/src/vmm.c.i

CMakeFiles/tp3_os.dir/src/vmm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tp3_os.dir/src/vmm.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/eduardvoiculescu/Documents/tp3_os/src/vmm.c -o CMakeFiles/tp3_os.dir/src/vmm.c.s

CMakeFiles/tp3_os.dir/src/vmm.c.o.requires:

.PHONY : CMakeFiles/tp3_os.dir/src/vmm.c.o.requires

CMakeFiles/tp3_os.dir/src/vmm.c.o.provides: CMakeFiles/tp3_os.dir/src/vmm.c.o.requires
	$(MAKE) -f CMakeFiles/tp3_os.dir/build.make CMakeFiles/tp3_os.dir/src/vmm.c.o.provides.build
.PHONY : CMakeFiles/tp3_os.dir/src/vmm.c.o.provides

CMakeFiles/tp3_os.dir/src/vmm.c.o.provides.build: CMakeFiles/tp3_os.dir/src/vmm.c.o


# Object files for target tp3_os
tp3_os_OBJECTS = \
"CMakeFiles/tp3_os.dir/src/common.c.o" \
"CMakeFiles/tp3_os.dir/src/pm.c.o" \
"CMakeFiles/tp3_os.dir/src/pt.c.o" \
"CMakeFiles/tp3_os.dir/src/tlb.c.o" \
"CMakeFiles/tp3_os.dir/src/vmm.c.o"

# External object files for target tp3_os
tp3_os_EXTERNAL_OBJECTS =

tp3_os: CMakeFiles/tp3_os.dir/src/common.c.o
tp3_os: CMakeFiles/tp3_os.dir/src/pm.c.o
tp3_os: CMakeFiles/tp3_os.dir/src/pt.c.o
tp3_os: CMakeFiles/tp3_os.dir/src/tlb.c.o
tp3_os: CMakeFiles/tp3_os.dir/src/vmm.c.o
tp3_os: CMakeFiles/tp3_os.dir/build.make
tp3_os: CMakeFiles/tp3_os.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/eduardvoiculescu/Documents/tp3_os/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C executable tp3_os"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tp3_os.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tp3_os.dir/build: tp3_os

.PHONY : CMakeFiles/tp3_os.dir/build

CMakeFiles/tp3_os.dir/requires: CMakeFiles/tp3_os.dir/src/common.c.o.requires
CMakeFiles/tp3_os.dir/requires: CMakeFiles/tp3_os.dir/src/pm.c.o.requires
CMakeFiles/tp3_os.dir/requires: CMakeFiles/tp3_os.dir/src/pt.c.o.requires
CMakeFiles/tp3_os.dir/requires: CMakeFiles/tp3_os.dir/src/tlb.c.o.requires
CMakeFiles/tp3_os.dir/requires: CMakeFiles/tp3_os.dir/src/vmm.c.o.requires

.PHONY : CMakeFiles/tp3_os.dir/requires

CMakeFiles/tp3_os.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tp3_os.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tp3_os.dir/clean

CMakeFiles/tp3_os.dir/depend:
	cd /Users/eduardvoiculescu/Documents/tp3_os/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/eduardvoiculescu/Documents/tp3_os /Users/eduardvoiculescu/Documents/tp3_os /Users/eduardvoiculescu/Documents/tp3_os/cmake-build-debug /Users/eduardvoiculescu/Documents/tp3_os/cmake-build-debug /Users/eduardvoiculescu/Documents/tp3_os/cmake-build-debug/CMakeFiles/tp3_os.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tp3_os.dir/depend

