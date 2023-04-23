#include "gtest/gtest.h"
#include "DiamondWorker.h"

TEST(DiamondWorkerTestSuite, AIsNotEnough) {
    DiamondWorker worker;
    char startingChar = 'a';
    std::list<std::string> result = worker.Build(startingChar);

    EXPECT_EQ(result.front(), "The Character a isn't enough!");
}

