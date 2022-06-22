cmake_minimum_required(VERSION 3.0.0)

project(Compactor)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/cmake)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/bin)

include(BuildOptions)
include(Dependencies)
include(CompileOptions)


if(ENABLE_UNIT_TESTS)
    enable_testing()
endif()

feature_summary(WHAT ALL)

add_subdirectory(src)
add_subdirectory(test)