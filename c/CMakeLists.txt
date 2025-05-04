cmake_minimum_required(VERSION 3.25.1)

project(demo VERSION 0.1.0 LANGUAGES C)

set_property(TARGET PROPERTY C_STANDARD 11)

add_executable(demo src/main.c)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ./bin)

set(DEMO_VERSION_MAJOR 1)
set(DEMO_VERSION_MINOR 2)
set(DEMO_VERSION_PATCH 3)

configure_file(demo.h.in src/demo.h)

target_link_libraries (${PROJECT_NAME} yaml)
