//
// Created by Богдан Василенко on 01.09.2018.
//

#ifndef SECURITYCODE_CRYPTOGRAPHER_H
#define SECURITYCODE_CRYPTOGRAPHER_H


#include <memory>
#include <string>
#include <cstdint>
#include "CryptoAlgorithm.h"
#include "Block.h"
#include "EncProc.h"


namespace crypto
{
    enum class DIRECTION_TYPE {
        UNDEFINED,
        ENCRYPT,
        DECRYPT
    };

    static DIRECTION_TYPE StrToDirectionType(const std::string& str)
    {
        if(str == "ENCRYPT")
            return DIRECTION_TYPE::ENCRYPT;
        else if(str == "DECRYPT")
            return DIRECTION_TYPE::DECRYPT;
        return DIRECTION_TYPE::UNDEFINED;
    }

    class Cryptographer
    {
        std::unique_ptr<primitives::CryptoAlgorithm> pAlg_;

        DIRECTION_TYPE directionType_;
    public:
        Cryptographer(algorithms::ALG_TYPE algType, DIRECTION_TYPE directionType, procedures::EncProc_t encProc,
                      primitives::Block key, const primitives::Block& initialVector,
                      unsigned long expectedSize = 0, unsigned long long memLimit = 0);
        Cryptographer(algorithms::ALG_TYPE algType, DIRECTION_TYPE directionType, procedures::EncProc_t encProc,
                      primitives::Block key,
                      unsigned long expectedSize = 0, unsigned long long memLimit = 0);

        void Process(primitives::Block& data);
    };

    primitives::Block GetKeyfromStr(const std::string& str, unsigned long blockSize);
    uint32_t CRC32(const std::string& str);
}

#endif //SECURITYCODE_CRYPTOGRAPHER_H
