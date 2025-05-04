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

#include <min2phase/min2phase.h>
#include <min2phase/tools.h>

int main(int argc, char *argv[]){
    uint8_t movesUsed;
    min2phase::tools::setRandomSeed(time(nullptr));
    //min2phase::init();
    min2phase::loadFile("coords.m2pc");
    //min2phase::writeFile("coords.m2pc");
    for (int i=0; i < 10000; i++) {
        std::string str = min2phase::solve(min2phase::tools::randomCube(), 28, 100000, 0, min2phase::INVERSE_SOLUTION, &movesUsed);
        int double_moves = std::count(str.begin(), str.end(), '2');
        int moves = str.size() / 3;
        if ( (moves - double_moves) % 2 == 1) {
            std::cout << str << std::endl;
        }
    }
    return 0;
}
