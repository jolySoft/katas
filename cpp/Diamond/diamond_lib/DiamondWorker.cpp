//
// Created by jol on 23/04/2023.
//

#include <vector>
#include <string_view>
#include <string>
#include <algorithm>

#include "DiamondWorker.h"

using namespace std;
using namespace std::literals;

string_view DiamondWorker::alphabet  = "abcdefghijklmnopqrstuvwxyz";

vector<string> DiamondWorker::Build(char& start_char) {
    vector<string> diamond_list;
    if(tolower(start_char) == 'a') {
        diamond_list = {"The Character a isn't enough!"};
    }

    unsigned long int char_index_unsigned = DiamondWorker::alphabet.find(start_char);
    int char_index = char_index_unsigned & INT16_MAX;
    Recursively(start_char, diamond_list, 0, char_index);

    return diamond_list;
}

void DiamondWorker::Recursively(char start_char, vector<string> &diamond, int iteration, int char_index) {
    if (iteration > char_index) return;

    char current_char = DiamondWorker::alphabet[iteration];
    int left_spaces = char_index - iteration;

    string left = string(left_spaces, ' ') + current_char + string(iteration, ' ');
    string right = left;
    reverse(right.begin(), right.end());
    right.erase(0, 1);
    diamond.push_back(left + right);

    iteration++;
    Recursively(start_char, diamond, iteration, char_index);

    if(iteration < diamond.size()) {
        diamond.push_back(diamond[iteration-1]);
    }
}
