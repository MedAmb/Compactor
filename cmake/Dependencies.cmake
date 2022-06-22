include_guard(GLOBAL)

set(DOCKERMSG ", or wait till my lay ass finish the docker container :p.")

#========================================================
find_package(spdlog)

IF(${spdlog_FOUND})
    MESSAGE(STATUS "Found spdlog.")
ELSE(${spdlog_FOUND})
    MESSAGE(FATAL_ERROR "Could not locate spdlog. go to this link, https://github.com/gabime/spdlog for installation : " ${DOCKERMSG})
ENDIF(${spdlog_FOUND})

#========================================================
find_package(nlohmann_json)

IF(${nlohmann_json_FOUND})
    MESSAGE(STATUS "Found nlohmann_json.")
ELSE(${nlohmann_json_FOUND})
    MESSAGE(FATAL_ERROR "Could not locate nlohmann_json. go to this link, https://github.com/nlohmann/json for installation : " ${DOCKERMSG})
ENDIF(${nlohmann_json_FOUND})

#========================================================
find_package(Boost)

IF(${Boost_FOUND})
    MESSAGE(STATUS "Found Boost.")
ELSE(${Boost_FOUND})
    MESSAGE(FATAL_ERROR "Could not locate Boost. go to this link, https://stackoverflow.com/questions/12578499/how-to-install-boost-on-ubuntu for installation : " ${DOCKERMSG})
ENDIF(${Boost_FOUND})

#========================================================
if(ENABLE_UNIT_TESTS)
    find_package(Gtest)

    IF(${Gtest_FOUND})
        MESSAGE(STATUS "Found Gtest.")
    ELSE(${Gtest_FOUND})
        MESSAGE(FATAL_ERROR "Could not locate Gtest. go to this link, https://whileinthisloop.blogspot.com/2022/05/tdd-ing-circular-buffer-in-c.html for installation : " ${DOCKERMSG})
    ENDIF(${Gtest_FOUND})
endif()