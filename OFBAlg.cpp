//
// Created by Богдан Василенко on 01.09.2018.
//
#include "include/OFBAlg.h"
#include <exception>

namespace crypto {
    namespace algorithms {
        OFBAlg::OFBAlg(crypto::procedures::EncProc_t encProc, crypto::primitives::Block key,
                       const crypto::primitives::Block &initialVector)
            : key_(key), encProc_(encProc), workBlock_(initialVector)
        {
            encProc_(workBlock_, key_);
        }

        void OFBAlg::Encrypt(crypto::primitives::Block& block)
        {
            block ^= workBlock_;
            encProc_(workBlock_, key_);
        }
    }
}
