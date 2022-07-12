if(ENABLE_UNIT_TESTS)
    include(GoogleTest)

    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}/test/unit)
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_LIBRARY_OUTPUT_DIRECTORY}/test/unit)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/test/unit)

    set(TEST_EXEC_NAME ${PROJECT_NAME}UT)

    set(SRC
        ${PROJECT_SOURCE_DIR}/src/convert.cpp
        main.cpp
    )

    set(LIBS
        nlohmann_json::nlohmann_json
        spdlog
        Boost::regex
        GTest::GTest
        GTest::Main
        ${GMOCK_LIBRARIES}
    )

    add_executable(${TEST_EXEC_NAME} ${SRC})
    target_link_libraries(${TEST_EXEC_NAME} PRIVATE ${LIBS})
    target_include_directories(${TEST_EXEC_NAME} PRIVATE ${PROJECT_SOURCE_DIR}/src)

    add_test(
        NAME ${TEST_EXEC_NAME}
        COMMAND ${TEST_EXEC_NAME}
    )

    set_tests_properties(${TEST_EXEC_NAME} PROPERTIES ENVIRONMENT UNIT_TEST=ON)
endif()