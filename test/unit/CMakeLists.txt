if(ENABLE_UNIT_TESTS)
    include(GoogleTest)

    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}/test/unit)
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_LIBRARY_OUTPUT_DIRECTORY}/test/unit)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/test/unit)

    set(TEST_EXEC_NAME ${PROJECT_NAME}UT)

    set(SRC
        ${PROJECT_SOURCE_DIR}/src/main.cpp
        main.cpp
    )

    set(LIBS
        nlohmann_json::nlohmann_json
        ${Boost_LIBRARIES}
        GTest::GTest
    )

    add_executable(${TEST_EXEC_NAME} ${SRC})
    target_link_libraries(${TEST_EXEC_NAME} PRIVATE ${LIBS})


    # add_gtest_test(${TEST_EXEC_NAME} "${SRC}" "${LIBS}")
    #target_include_directories(${TEST_EXEC_NAME} PRIVATE ${PROJECT_SOURCE_DIR}/src)
endif()