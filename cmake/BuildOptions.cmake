include_guard(GLOBAL)

include(FeatureSummary)

option(ENABLE_UNIT_TESTS "Enable building of unit tests" ON)
add_feature_info("Enable unit tests" ENABLE_UNIT_TESTS "enables building of unit tests")

option(WARNINGS_AS_ERRORS "Warnings treated as errors" OFF)
add_feature_info(
    "Treat warnings as errors" WARNINGS_AS_ERRORS
    "Treat warnings as errors"
)