#include <iostream>
#include "DiamondWorker.h"

using namespace std;

int main() {
    string input;
    auto worker = new DiamondWorker();
    vector<string> diamond;

    cout << R"(  _____  _                                 _ )" << endl;
    cout << R"( |  __ \(_)                               | |)" << endl;
    cout << R"( | |  | |_  __ _ _ __ ___   ___  _ __   __| |)" << endl;
    cout << R"( | |  | | |/ _` | '_ ` _ \ / _ \| '_ \ / _` |)" << endl;
    cout << R"( | |__| | | (_| | | | | | | (_) | | | | (_| |)" << endl;
    cout << R"( |_____/|_|\__,_|_| |_| |_|\___/|_| |_|\__,_|)" << endl;

    cout << "Welcome diamond in C++" << endl;

    while(true) {
        cout << "Please enter a character to seed the diamond: ";
        cin >> input;
        diamond = worker->Build(input[0]);
        for (auto &line : diamond) {
            cout << line <<endl;
        }
    }
}
