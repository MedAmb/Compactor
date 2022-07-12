include_guard(GLOBAL)

set(DOCKERMSG ", or wait till my lazy ass finish the docker container :p.")

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
find_package(Boost CONFIG COMPONENTS regex)

IF(${Boost_FOUND})
    MESSAGE(STATUS "Found Boost regex.")
ELSE(${Boost_FOUND})
    MESSAGE(FATAL_ERROR "Could not locate Boost. go to this link, https://stackoverflow.com/questions/12578499/how-to-install-boost-on-ubuntu for installation : " ${DOCKERMSG})
ENDIF(${Boost_FOUND})

#========================================================
if(ENABLE_UNIT_TESTS)
    find_package(GTest REQUIRED)
endif()