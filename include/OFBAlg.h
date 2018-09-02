//
// Created by Богдан Василенко on 01.09.2018.
//

#ifndef SECURITYCODE_OFBALG_H
#define SECURITYCODE_OFBALG_H

#include "CryptoAlgorithm.h"
#include "EncProc.h"

namespace crypto {
    namespace algorithms {
        class OFBAlg : public primitives::CryptoAlgorithm
        {
            primitives::Block workBlock_;

            primitives::Block key_;
            procedures::EncProc_t encProc_;
        public:
            OFBAlg(procedures::EncProc_t encProc, primitives::Block key,
                   const primitives::Block& initialVector);

            //в данном алгоритме операции симметричны
            void Encrypt(primitives::Block& block) override;
            void Decrypt(primitives::Block& block) override { Encrypt(block); }
        };
    }
}

#endif //SECURITYCODE_OFBALG_H
