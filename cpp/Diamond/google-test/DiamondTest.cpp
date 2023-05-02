#include "gtest/gtest.h"
#include "gmock/gmock.h"

#include "DiamondWorker.h"

using namespace std;
using namespace testing;

TEST(DiamondWorkerTestSuite, AIsNotEnough) {
    auto* worker = new DiamondWorker();
    auto starting_char = 'a';

    auto result = worker->Build(starting_char);

    EXPECT_EQ(result.front(), "The Character a isn't enough!");
}

TEST(DiamondWorkerTestSuite, WillDrawQuaterForJ) {
    auto* worker = new DiamondWorker();
    auto starting_char = 'j';

    auto result = worker->Build(starting_char);

    EXPECT_THAT(result[0], HasSubstr("         a"));
    EXPECT_THAT(result[1], HasSubstr("        b "));
    EXPECT_THAT(result[2], HasSubstr("       c  "));
    EXPECT_THAT(result[3], HasSubstr("      d   "));
    EXPECT_THAT(result[4], HasSubstr("     e    "));
    EXPECT_THAT(result[5], HasSubstr("    f     "));
    EXPECT_THAT(result[6], HasSubstr("   g      "));
    EXPECT_THAT(result[7], HasSubstr("  h       "));
    EXPECT_THAT(result[8], HasSubstr(" i        "));
    EXPECT_THAT(result[9], HasSubstr("j         "));
}

TEST(DiamondWorkerTestSuite, WillDrawHalfForJ) {
    auto* worker = new DiamondWorker();
    auto starting_char = 'j';

    auto result = worker->Build(starting_char);

    EXPECT_THAT(result[0], Eq("         a         "));
    EXPECT_THAT(result[1], Eq("        b b        "));
    EXPECT_THAT(result[2], Eq("       c   c       "));
    EXPECT_THAT(result[3], Eq("      d     d      "));
    EXPECT_THAT(result[4], Eq("     e       e     "));
    EXPECT_THAT(result[5], Eq("    f         f    "));
    EXPECT_THAT(result[6], Eq("   g           g   "));
    EXPECT_THAT(result[7], Eq("  h             h  "));
    EXPECT_THAT(result[8], Eq(" i               i "));
    EXPECT_THAT(result[9], Eq("j                 j"));
}

TEST(DiamondWorkerTestSuite, WillDrawDiamond) {
    auto* worker = new DiamondWorker();
    char starting_char = 'd';

    auto result = worker->Build(starting_char);

    EXPECT_THAT(result[0], Eq("   a   "));
    EXPECT_THAT(result[1], Eq("  b b  "));
    EXPECT_THAT(result[2], Eq(" c   c "));
    EXPECT_THAT(result[3], Eq("d     d"));
    EXPECT_THAT(result[4], Eq(" c   c "));
    EXPECT_THAT(result[5], Eq("  b b  "));
    EXPECT_THAT(result[6], Eq("   a   "));
}