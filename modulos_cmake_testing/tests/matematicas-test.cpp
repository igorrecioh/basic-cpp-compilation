#include <gtest/gtest.h>
#include "matematicas.hpp"

TEST(Suma, SumaPos)
{
    ASSERT_EQ(1, suma(1, 0));
}

TEST(Resta, RestaPos)
{
    ASSERT_EQ(1, resta(7, 6));
}


int main(int argc, char** argv)
{
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}