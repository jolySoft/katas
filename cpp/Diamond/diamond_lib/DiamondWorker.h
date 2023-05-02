//
// Created by jol on 23/04/2023.
//

#ifndef DIAMOND_DIAMONDWORKER_H
#define DIAMOND_DIAMONDWORKER_H

#include <iostream>
#include <vector>
#include <string_view>

using namespace std;

class DiamondWorker {
private:
    static std::string_view alphabet;
    static void Recursively(char start_char, vector<string> &diamond, int iteration, int char_index);

public:
    vector<string> Build(char& start_char);
};

#endif //DIAMOND_DIAMONDWORKER_H
