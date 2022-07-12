set(SRC
    main.cpp
    convert.cpp
)

set(LIBS
    nlohmann_json::nlohmann_json
    spdlog
    Boost::regex
)

include_directories(${Boost_INCLUDE_DIRS})
add_executable(${PROJECT_NAME} ${SRC})
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBS})