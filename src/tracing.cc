#include "../include/tracing.h"
#include <iostream>

// Traces the corners from UFR and sets the parity accordingly
bool Tracing::verify_ltct(Cube& cube, char target, char twist) {
    std::array<unsigned short, 54> state = cube.get_state();
    int final_target = target - 'A';
    int corner_twist = twist - 'A';
    /* std::cout << corner_twist << std::endl; */
    static constexpr size_t BUFFER = 2; // UFR
    // Equivalence relation: 0=4=17, 1=16=13, 2=9=12, 3=5=8, 6=11=20, 7=18=23, 10=15=21, 14=19=22
    static constexpr std::array<unsigned short, 24> target_to_piece_lookup = {
        0, 1, 2, 3, 0, 3, 4, 7, 3, 2, 5, 4, 2, 1, 6, 5, 1, 0, 7, 6, 4, 5, 6, 7
    };
    static constexpr std::array<int, 24> target_to_UD_lookup = {
        0, 1, 2, 3, 0, 3, 20, 23, 3, 2, 21, 20, 2, 1, 22, 21, 1, 0, 23, 22
    };
        
    static constexpr std::array<unsigned short, 24> twist_lookup = {
        0, 0, 0, 0, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 0, 0, 0, 0
    };
    static constexpr std::array<unsigned short, 7> corners = {
        0, 1, 3, 20, 21, 22, 23
    };

    unsigned short number_of_twists = 0;
    unsigned short solved = 0;
    if (corner_twist == 2) {
        for (unsigned short corner : corners) {
            if (target_to_piece_lookup[state[corner]] == target_to_piece_lookup[corner]) {
                unsigned short twist_direction = twist_lookup[state[corner]];
                if (twist_direction == 0) {
                    ++solved;
                } else {
                    return false;
                }
            }
        }
    } else {
        for (unsigned short corner : corners) {
            if (target_to_piece_lookup[state[corner]] == target_to_piece_lookup[corner]) {
                unsigned short twist_direction = twist_lookup[state[corner]];
                if (twist_direction == 0) {
                    ++solved;
                } else {
                    ++solved;
                    if (++number_of_twists > 1) {
                        return false;
                    }
                }
            }
        }
    }
    size_t current_target = BUFFER;
    size_t last_target = BUFFER;
    std::vector<unsigned short> targets;
    unsigned short next_target = state[current_target];
    while (true) {
        if (target_to_piece_lookup[next_target] == target_to_piece_lookup[BUFFER]) {
            if (solved != 8) {
                /* std::cout << solved << std::endl; */
                /* for (const auto& target : targets) { */
                /*     std::cout << target << " "; */
                /* } */
                /* std::cout << std::endl; */
                return false;
            } else {
                if (last_target == final_target) {
                    return true;
                }
                return false;
            }
        } else {
            next_target = state[current_target];
            last_target = current_target;
            ++solved;
            if (target_to_piece_lookup[next_target] != BUFFER) {
                targets.push_back(next_target);
            }
        }
        current_target = next_target;
    }
    return true;
}

