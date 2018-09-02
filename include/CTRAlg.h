//
// Created by Богдан Василенко on 02.09.2018.
//

#ifndef SECURITYCODE_CTRALG_H
#define SECURITYCODE_CTRALG_H

#include "CryptoAlgorithm.h"
#include "EncProc.h"

namespace crypto {
    namespace algorithms {
        class CTRAlg : public primitives::CryptoAlgorithm
        {
            primitives::Block workBlock_;

            primitives::Block key_;
            procedures::EncProc_t encProc_;
        public:
            CTRAlg(procedures::EncProc_t encProc, primitives::Block key,
                const primitives::Block& initialVector);

            //в данном алгоритме операции симметричны
            void Encrypt(primitives::Block& block) override;
            void Decrypt(primitives::Block& block) override { Encrypt(block); }
        };
    }
}

#endif //SECURITYCODE_CTRALG_H
