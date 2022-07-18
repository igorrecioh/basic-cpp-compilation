#include <gtest/gtest.h>
#include "fisica.hpp"

TEST(Gravedad, GravedadPos)
{
    ASSERT_EQ(3, gravedad(1, 2));
}

TEST(Inercia, InerciaPos)
{
    ASSERT_EQ(2, inercia(5, 3));
}


int main(int argc, char** argv)
{
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}