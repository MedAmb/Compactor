#include "convert.hpp"

#include <gtest/gtest.h>



TEST_P(Fixture, Test) {
    auto name = GetParam();
    EXPECT_EQ("ComparatorUT", name);
}


	

INSTANTIATE_TEST_CASE_P(
        TestSuite,
        Fixture,
        ::testing::Values(
                std::string{"CompactorUT"},
                std::string{"Compactor"}
        ));
