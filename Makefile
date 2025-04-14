#******************************************************************************
# Makefile for the ${PROJECT_NAME} project.
#
# Author:      ${AUTHOR}
# Date:        ${DATE}
#
# Variables:
# CC        : C compiler to use (default: gcc)
# CXX       : C++ compiler to use (default: g++)
# CFLAGS    : Compiler flags for C code
# CXXFLAGS  : Compiler flags for C++ code
# LDFLAGS   : Linker flags
# TARGET    : The name of the final executable
# SOURCES   : List of all C/C++ source files
# HEADERS   : List of all header files
# OBJECTS   : List of object files (automatically generated)
#
# Targets:
# all       : Builds the final executable.
# clean     : Removes object files and the executable.
# debug     : Builds with debugging symbols.
# release   : Builds with optimization.
# run       : Runs the executable (if TARGET is defined).
# ... [Add other custom targets]
#
# Notes:
#   - Modify variables according to your project.
#   - Add dependencies for object files if needed.
#
#******************************************************************************

# Compiler and Flags
CC = gcc
CXX = g++
CFLAGS = -Wall -Wextra -g -O0  # Default: All warnings, debug symbols, no optimization
CXXFLAGS = -Wall -Wextra -std=c++17 -g -O0 # Default: All warnings, C++17, debug, no opt.
LDFLAGS =

# Project Configuration
TARGET = ${PROJECT_NAME}
SOURCES = $(wildcard *.c) $(wildcard *.cpp)
HEADERS = $(wildcard *.h) $(wildcard *.hpp)
OBJECTS = $(SOURCES:.c=.o) $(SOURCES:.cpp=.o)

# Default Target
all: $(TARGET)

# Rule to create the executable
$(TARGET): $(OBJECTS)
	$(CXX) $(CXXFLAGS) $(OBJECTS) $(LDFLAGS) -o $@

# Rule to compile C source files
%.o: %.c $(HEADERS)
	$(CC) $(CFLAGS) -c $< -o $@

# Rule to compile C++ source files
%.o: %.cpp $(HEADERS)
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Debug Build
debug:
	$(MAKE) CFLAGS="-Wall -Wextra -g -O0" CXXFLAGS="-Wall -Wextra -std=c++17 -g -O0" all

# Release Build
release:
	$(MAKE) CFLAGS="-Wall -Wextra -O2" CXXFLAGS="-Wall -Wextra -std=c++17 -O2" all

# Clean Target
clean:
	rm -f $(OBJECTS) $(TARGET)

# Run Target (if TARGET is defined)
ifeq ($(TARGET),)
run:
	@echo "Error: TARGET variable is not defined."
else
run: all
	./$(TARGET) $(RUN_ARGS)
endif

# Phony targets (not actual files)
.PHONY: all clean debug release run