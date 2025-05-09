/**
 * min2phaseCXX Copyright (C) 2022 Borgo Federico
 * This program comes with ABSOLUTELY NO WARRANTY; for details type `show w'.
 * This is free software, and you are welcome to redistribute it
 * under certain conditions; type `show c' for details.
 *
 * This file contains an example of the solver.
 */

#include <iostream>
#include <string>
#include <algorithm>

#include "../include/min2phase/min2phase.h"
#include "../include/min2phase/tools.h"
#include "../include/cube.h"

int main(int argc, char *argv[]){
    char target;
    char twist;
    int iterations;
    if (argc == 2) {
        target = argv[1][0];
        twist = 'C';
        iterations = 10;
    } else if (argc == 3) {
        target = argv[1][0];
        twist = argv[2][0];
        iterations = 10;
    } else if (argc == 4) {
        target = argv[1][0];
        twist = argv[2][0];
        iterations = std::stoi(argv[3]);
    } else {
        std::cout << "Usage: " << argv[0] << " <parity_target> <corner_twist (leave blank for just parity)> <number_of_scrambles (optional)>" << std::endl;
        return 1;
    }
    uint8_t movesUsed;
    min2phase::tools::setRandomSeed(time(nullptr));
    //min2phase::init();
    min2phase::loadFile("coords.m2pc");
    //min2phase::writeFile("coords.m2pc");
    int successes = 0;
    int counter = 0;
    while (successes < iterations) {
        counter++;
        std::string str = min2phase::solve(min2phase::tools::randomCube(target, twist), 28, 100000, 0, min2phase::INVERSE_SOLUTION, &movesUsed);
        int double_moves = std::count(str.begin(), str.end(), '2');
        int moves = str.size() / 3;
        Cube cube{str};
        if (cube.check_ltct(target, twist)) {
            std::cout << str << std::endl;
            successes +=1;
        }
    }
    return 0;
}
