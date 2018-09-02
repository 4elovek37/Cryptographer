//
// Created by Богдан Василенко on 02.09.2018.
//

#include "include/CTRAlg.h"

namespace crypto {
    namespace algorithms {
        CTRAlg::CTRAlg(crypto::procedures::EncProc_t encProc, crypto::primitives::Block key,
                       const crypto::primitives::Block &initialVector)
            : key_(key), encProc_(encProc), workBlock_(initialVector)
        {
            encProc_(workBlock_, key_);
        }

        void CTRAlg::Encrypt(crypto::primitives::Block &block)
        {
            block ^= workBlock_;
            ++workBlock_;
            encProc_(workBlock_, key_);
        }
    }
}