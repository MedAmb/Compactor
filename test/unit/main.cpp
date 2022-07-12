#include "convert.hpp"

#include <gtest/gtest.h>

class Fixture :public ::testing::TestWithParam<std::string> {
};

TEST_P(Fixture, Test) {
    auto name = GetParam();
    EXPECT_EQ(cToS("CompactorUT"), name);
}

INSTANTIATE_TEST_CASE_P(
        TestSuite,
        Fixture,
        ::testing::Values(
                std::string{"CompactorUT\n"},
                std::string{"Compactor"}
        ));
