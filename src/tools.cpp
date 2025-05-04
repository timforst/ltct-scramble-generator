/**
 * min2phaseCXX Copyright (C) 2022 Borgo Federico
 * This program comes with ABSOLUTELY NO WARRANTY; for details type `show w'.
 * This is free software, and you are welcome to redistribute it
 * under certain conditions; type `show c' for details.
 */

#include <min2phase/tools.h>
#include <memory>
#include <chrono>
#include <iostream>
#include <fstream>
#include <iomanip>
#include <min2phase/min2phase.h>
#include <string>
#include "coords.h"
#include "Search.h"
#include "tests.h"

namespace min2phase { namespace tools {

    /**
     * The path to store the temporary file for the CPU name.
     */
    #ifdef __linux__
    #define FILE_PATH "/tmp/cpu_model_cube.txt"
    #elif defined(_WIN32)
    #define FILE_PATH "cpu_model_cube.txt"
    #endif

    /**
     * The number of executions of the initialization for coordinates.
     */
    static const int8_t N_INIT_BENCH = 10;

    /**
     * The number of random cube to solve in solution benchmarking.
     */
    static const int8_t N_SOL_BENCH = 20;

    /**
     * The limit of min probes used to benchmark short solutions.
     */
    static const int16_t MIN_PROBES_LIMIT = 10240;

    //set random seed
    void setRandomSeed(uint32_t seed) {
        std::srand(seed);
    }

    bool bufferOnLastTarget(CubieCube cube, int target, int twist) {
        std::string faces = CubieCube::toFaceCube(cube);
        char firstSticker;
        char secondSticker;
        if (twist == 0) {
            firstSticker = 'U';
            secondSticker = 'R';
        } else if (twist % 2 == 0) {
            firstSticker = 'R';
            secondSticker = 'F';
        } else {
            firstSticker = 'F';
            secondSticker = 'U';
        }
        if (target == 0) {
            if (faces[0] == firstSticker && faces[36] == secondSticker) {
                return true;
            } else {
                return false;
            }
        }
        if (target == 1) {
            if (faces[2] == firstSticker && faces[45] == secondSticker) {
                return true;
            } else {
                return false;
            }
        }
        if (target == 3) {
            if (faces[6] == firstSticker && faces[18] == secondSticker) {
                return true;
            } else {
                return false;
            }
        }
        if (target == 4) {
            if (faces[36] == firstSticker && faces[47] == secondSticker) {
                return true;
            } else {
                return false;
            }
        }
        if (target == 5) {
            if (faces[38] == firstSticker && faces[6] == secondSticker) {
                return true;
            } else {
                return false;
            }
        }
        if (target == 6) {
            if (faces[44] == firstSticker && faces[24] == secondSticker) {
                return true;
            } else {
                return false;
            }
        }
        if (target == 7) {
            if (faces[42] == firstSticker && faces[33] == secondSticker) {
                return true;
            } else {
                return false;
            }
        }
        if (target == 8) {
            if (faces[18] == firstSticker && faces[38] == secondSticker) {
                return true;
            } else {
                return false;
            }
        }
        if (target == 10) {
            if (faces[26] == firstSticker && faces[15] == secondSticker) {
                return true;
            } else {
                return false;
            }
        }
        if (target == 11) {
            if (faces[24] == firstSticker && faces[27] == secondSticker) {
                return true;
            } else {
                return false;
            }
        }
        if (target == 13) {
            if (faces[11] == firstSticker && faces[2] == secondSticker) {
                return true;
            } else {
                return false;
            }
        }
        if (target == 14) {
            if (faces[17] == firstSticker && faces[51] == secondSticker) {
                return true;
            } else {
                return false;
            }
        }
        if (target == 15) {
            if (faces[15] == firstSticker && faces[29] == secondSticker) {
                return true;
            } else {
                return false;
            }
        }
        if (target == 16) {
            if (faces[45] == firstSticker && faces[11] == secondSticker) {
                return true;
            } else {
                return false;
            }
        }
        if (target == 17) {
            if (faces[47] == firstSticker && faces[0] == secondSticker) {
                return true;
            } else {
                return false;
            }
        }
        if (target == 18) {
            if (faces[53] == firstSticker && faces[42] == secondSticker) {
                return true;
            } else {
                return false;
            }
        }
        if (target == 19) {
            if (faces[51] == firstSticker && faces[35] == secondSticker) {
                return true;
            } else {
                return false;
            }
        }
        if (target == 20) {
            if (faces[27] == firstSticker && faces[44] == secondSticker) {
                return true;
            } else {
                return false;
            }
        }
        if (target == 21) {
            if (faces[29] == firstSticker && faces[26] == secondSticker) {
                return true;
            } else {
                return false;
            }
        }
        if (target == 22) {
            if (faces[35] == firstSticker && faces[17] == secondSticker) {
                return true;
            } else {
                return false;
            }
        }
        if (target == 23) {
            if (faces[33] == firstSticker && faces[53] == secondSticker) {
                return true;
            } else {
                return false;
            }
        }

        return true;
    }


    int returnSingleTwist(CubieCube cube) {
        std::string faces = CubieCube::toFaceCube(cube);
        int numTwists = 0;
        int singleTwist = 0;
        if (faces[8] == 'U' && faces[9] == 'R') {
            return 0;
        } else if (faces[8] == 'R' && faces[9] == 'F') {
            return 0;
        } else if (faces[8] == 'F' && faces[9] == 'U') {
            return 0;
        }
        if (faces[6] == 'F' && faces[18] == 'L') {
            if (++numTwists > 1) {
                return 0;
            }
            singleTwist = 5;
        }
        if (faces[6] == 'L' && faces[18] == 'U') {
            if (++numTwists > 1) {
                return 0;
            }
            singleTwist = 8;
        }
        if (faces[0] == 'B' && faces[36] == 'U') {
            if (++numTwists > 1) {
                return 0;
            }
            singleTwist = 4;
        }
        if (faces[0] == 'L' && faces[36] == 'B') {
            if (++numTwists > 1) {
                return 0;
            }
            singleTwist = 17;
        }
        if (faces[2] == 'R' && faces[45] == 'U') {
            if (++numTwists > 1) {
                return 0;
            }
            singleTwist = 16;
        }
        if (faces[2] == 'B' && faces[45] == 'R') {
            if (++numTwists > 1) {
                return 0;
            }
            singleTwist = 13;
        }
        if (faces[29] == 'R' && faces[26] == 'D') {
            if (++numTwists > 1) {
                return 0;
            }
            singleTwist = 10;
        }
        if (faces[29] == 'F' && faces[26] == 'R') {
            if (++numTwists > 1) {
                return 0;
            }
            singleTwist = 15;
        }
        if (faces[27] == 'F' && faces[44] == 'D') {
            if (++numTwists > 1) {
                return 0;
            }
            singleTwist = 6;
        }
        if (faces[27] == 'L' && faces[44] == 'F') {
            if (++numTwists > 1) {
                return 0;
            }
            singleTwist = 11;
        }
        if (faces[33] == 'L' && faces[53] == 'D') {
            if (++numTwists > 1) {
                return 0;
            }
            singleTwist = 18;
        }
        if (faces[33] == 'B' && faces[53] == 'L') {
            if (++numTwists > 1) {
                return 0;
            }
            singleTwist = 7;
        }
        if (faces[35] == 'B' && faces[17] == 'D') {
            if (++numTwists > 1) {
                return 0;
            }
            singleTwist = 14;
        }
        if (faces[35] == 'R' && faces[17] == 'B') {
            if (++numTwists > 1) {
                return 0;
            }
            singleTwist = 19;
        }


        return singleTwist;
    }

    //get random cube
    std::string randomCube(int target, int twist) {
        if (!coords::isInit())
            return "";

        CubieCube cube;

        int8_t parity;
        int16_t cornerOri, edgeOri;
        uint16_t cornerPerm;
        int32_t edgePerm;
        bool been = false;
        int count = 0;
        if (twist == 0) {
            while (!bufferOnLastTarget(cube, target, 0)) {
                parity = 0;
                while (parity == 0) {
                    cornerPerm = std::rand() % (info::N_PERM + 1);
                    cornerOri = std::rand() % (info::N_TWIST + 1);
                    parity = CubieCube::getNParity(cornerPerm, info::NUMBER_CORNER);
                    count += 1;
                }
                cube.setCoords(cornerPerm, cornerOri, 0, 0);
            }
        } else {

            while (!bufferOnLastTarget(cube, target, twist) || returnSingleTwist(cube) != twist) {
                parity = 0;
                while (parity == 0) {
                    cornerPerm = std::rand() % (info::N_PERM + 1);
                    cornerOri = std::rand() % (info::N_TWIST + 1);
                    parity = CubieCube::getNParity(cornerPerm, info::NUMBER_CORNER);
                    count += 1;
                }
                cube.setCoords(cornerPerm, cornerOri, 0, 0);
            }
        }
        edgeOri = std::rand() % (info::N_FLIP + 1);
        do {
            edgePerm = std::rand() % (info::FULL_E_PERM + 1);
        } while (CubieCube::getNParity(edgePerm, info::NUMBER_EDGES) != parity);

        cube.setCoords(cornerPerm, cornerOri, edgePerm, edgeOri);
        return CubieCube::toFaceCube(cube);
    }

    //convert moves to scrambled cube
    std::string fromScramble(const int8_t scramble[], uint8_t length) {
        uint8_t i;
        CubieCube c1;
        CubieCube c2;
        CubieCube tmp;

        for (i = 0; i < length; i++) {
            CubieCube::cornMult(c1, coords::coords.moveCube[scramble[i]], c2);
            CubieCube::edgeMult(c1, coords::coords.moveCube[scramble[i]], c2);
            tmp = c1;
            c1 = c2;
            c2 = tmp;
        }

        return CubieCube::toFaceCube(c1);
    }

    //convert moves to cube
    std::string fromScramble(const std::string &s) {
        std::unique_ptr<int8_t> arr(new int8_t[s.length()]);

        int8_t n_moves, axis;

        n_moves = 0;
        axis = -1;

        for (size_t i = 0; i < s.length(); i++) {
            arr.get()[i] = 0;

            switch (s[i]) {
                case 'U':
                    axis = 0;
                    break;
                case 'R':
                    axis = 3;
                    break;
                case 'F':
                    axis = 6;
                    break;
                case 'D':
                    axis = 9;
                    break;
                case 'L':
                    axis = 12;
                    break;
                case 'B':
                    axis = 15;
                    break;
                case ' ':
                    if (axis != -1)
                        arr.get()[n_moves++] = axis;
                    axis = -1;
                    break;
                case '2':
                    axis++;
                    break;
                case '\'':
                    axis += 2;
                    break;
                default:
                    break;
            }
        }

        if (axis != -1)
            arr.get()[n_moves++] = axis;

        return fromScramble(arr.get(), n_moves);
    }

    //gen super flip
    std::string superFlip(){
        return CubieCube::toFaceCube(CubieCube(0, 0, 0, info::N_FLIP-1));
    }

    /**
     * Benchmark the initialization of coordinates.
     *
     * @return      : the average time of initialization.
     */
    static unsigned long benchInit() {
        using namespace std::chrono;

        unsigned long time_elapsed = 0;
        time_point<high_resolution_clock> begin, end;
        int i;

        for (i = 0; i < N_INIT_BENCH; i++) {
            begin = high_resolution_clock::now();
            init();
            end = high_resolution_clock::now();

            time_elapsed += duration_cast<milliseconds>(end - begin).count();
        }

        return time_elapsed / N_INIT_BENCH;
    }

    /**
     * Benchmark the search for a solution.
     *
     * @param avgMove       : where to store the average move used.
     * @param probeMin      : min probes to use for the search.
     * @param avgTime       : where to store the average time for a search.
     * @param maxMoves      : max moves to solve the cube.
     */
    static void benchSearch(float *avgMove, int32_t probeMin, float *avgTime, int8_t maxMoves) {
        using namespace std::chrono;

        std::string randState;
        time_point<high_resolution_clock> begin, end;
        uint8_t usedMoves;
        long movesCount = 0;
        int i;

        *avgTime = 0;

        for (i = 0; i < N_SOL_BENCH; i++) {
            randState = min2phase::tools::randomCube();
            begin = high_resolution_clock::now();
            solve(randState, maxMoves, 1000000, probeMin, 0, &usedMoves);
            end = high_resolution_clock::now();

            *avgTime += (float) duration_cast<milliseconds>(end - begin).count();
            movesCount += usedMoves;
        }

        *avgTime /= N_SOL_BENCH;

        *avgMove = (float) movesCount / N_SOL_BENCH;
    }

    /**
     * Get the model of the CPU and the OS.
     *
     * @return          : the name of the CPU model.
     */
    static std::string getCPUname() {
        std::string cpuName;
        std::ifstream cpuNameFile;

    #ifdef __linux__

        system(R"(cat /proc/cpuinfo | grep "model name" | cut -f2 -d":" | cut -c2- > )" FILE_PATH);
        cpuNameFile.open(FILE_PATH);
        getline(cpuNameFile, cpuName);
        cpuNameFile.close();
        system("rm " FILE_PATH);
        cpuName += " (OS Linux)";

    #elif defined(_WIN32)

        system("wmic cpu get name > " FILE_PATH);
        cpuNameFile.open(FILE_PATH);
        getline(cpuNameFile, cpuName);
        getline(cpuNameFile, cpuName);
        cpuNameFile.close();
        system("del " FILE_PATH);
        cpuName += " (OS Windows)";

    #else
        cpuName = "undefined";
    #endif

        return cpuName;
    }

    /**
     * Print the result of the benchmark.
     */
    void benchmark() {
        using namespace std;
        float avgTime, avgMoves;

        cout << "CPU model: " << getCPUname() << endl;

        min2phase::tools::setRandomSeed(time(nullptr));

        cout << "Init time average: " << benchInit() << "ms\n\n";

        cout << "| probeMin | Avg Length |   Time   |\n|:--------:|:----------:|:--------:|\n";
        for (int32_t probe = 5; probe <= MIN_PROBES_LIMIT; probe *= 2) {
            benchSearch(&avgMoves, probe, &avgTime, 31);

            cout << "|" << fixed << setw(7) << probe << "   |";
            cout << fixed << setprecision(1) << setw(8) << avgMoves << "    |";
            cout << fixed << setprecision(1) << setw(6) << avgTime << " ms |\n";
        }

        cout << "\n|   Time    |  Max Moves |\n|:---------:|:----------:|\n";
        for (int8_t maxDepth = 31; maxDepth >= 20; maxDepth--) {
            benchSearch(&avgMoves, 0, &avgTime, maxDepth);

            cout << "|" << fixed << setprecision(1) << setw(5) << avgTime << " ms   |";
            cout << fixed << setprecision(1) << setw(7) << (int32_t) maxDepth << "     |\n";
        }
    }

    //check integrity
    int8_t verify(const std::string& facelets){
        Search s;

        return s.verify(facelets);
    }

    //tests
    void testAlgorithm(){
        min2phase::init();

        tests::testInput();
        tests::testSearchError();
        tests::testSearch();
    }
} }
