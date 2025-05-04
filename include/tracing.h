#ifndef TRACING_H
#define TRACING_H

#include "cube.h"
#include <vector>

class Tracing {
    public:
        // Traces the corners and sets the parity
        static bool verify_ltct(Cube& cube, int last_target, int corner_twist);
};

#endif
