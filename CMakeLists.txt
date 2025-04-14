#******************************************************************************
# CMakeLists.txt for the ${PROJECT_NAME} project.
#
# Author:      ${AUTHOR}
# Date:        ${DATE}
#
# Description: Configures the build process for the project using CMake.
#
# Minimum CMake Version Required
cmake_minimum_required(VERSION 3.10)

# Project Name and Language
project(${PROJECT_NAME} LANGUAGES C CXX)

# Set C++ Standard (if applicable)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Compiler Flags
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -Wextra -g")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -g")
# Optimization flags for release build
if(CMAKE_BUILD_TYPE MATCHES Release)
    set(CMAKE_C_FLAGS_RELEASE "-O3")
    set(CMAKE_CXX_FLAGS_RELEASE "-O3")
endif()

# Source Files
file(GLOB_RECURSE SOURCES
    "src/*.c"
    "src/*.cpp"
)

# Header Files (optional, for installation or other purposes)
file(GLOB_RECURSE HEADERS
    "include/*.h"
    "include/*.hpp"
)

# Include Directories
include_directories(include)

# Link Directories (if using external libraries not found by default)
# link_directories(/path/to/external/lib)

# External Libraries (find_package is preferred)
# find_package(SomeLibrary REQUIRED)
# if(SomeLibrary_FOUND)
#     include_directories(${SomeLibrary_INCLUDE_DIRS})
#     list(APPEND LIBRARIES ${SomeLibrary_LIBRARIES})
# else()
#     message(WARNING "SomeLibrary not found.")
# endif()

# Executable Target
add_executable(${PROJECT_NAME} ${SOURCES})

# Link Libraries to the Executable
# target_link_libraries(${PROJECT_NAME} ${LIBRARIES})

# Install Rules (optional)
install(TARGETS ${PROJECT_NAME}
    RUNTIME DESTINATION bin
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib/static
)

install(DIRECTORY include
    DESTINATION include
)

# Add Subdirectories (for larger projects)
# add_subdirectory(src/mylibrary)

# Enable Testing (if using CTest)
# enable_testing()
# add_test(NAME my_tests EXECUTABLE my_tests)

# Configure Build Type (Debug, Release, etc.)
set(CMAKE_BUILD_TYPE Debug CACHE STRING
    "Choose the type of build, options are: Debug Release RelWithDebInfo MinSizeRel."
    FORCE
)

message(STATUS "Build Type: ${CMAKE_BUILD_TYPE}")