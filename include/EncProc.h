//
// Created by Богдан Василенко on 01.09.2018.
//

#ifndef SECURITYCODE_ENCPROC_H
#define SECURITYCODE_ENCPROC_H

#include "Block.h"

namespace crypto {
    namespace procedures {
        using EncProc_t = void (*)(primitives::Block&, const primitives::Block&);

        void XorAndShift(primitives::Block & block, const primitives::Block& key);
    }
}

#endif //SECURITYCODE_ENCPROC_H
