//
// Created by Богдан Василенко on 01.09.2018.
//

#include "include/EncProc.h"

namespace crypto {
    namespace procedures {
        void XorAndShift(primitives::Block & block, const primitives::Block& key)
        {
            block ^= key;
            block >> 1;
        }
    }
}


