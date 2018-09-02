//
// Created by Богдан Василенко on 01.09.2018.
//

#ifndef SECURITYCODE_CRYPTOALGORITHM_H
#define SECURITYCODE_CRYPTOALGORITHM_H

#include <vector>
#include <string>
#include "Block.h"

namespace crypto
{
    namespace algorithms
    {
        enum class ALG_TYPE
        {
            UNDEFINED,
            OFB,
            CTR
        };

        static ALG_TYPE StrToAlgType(const std::string& str)
        {
            if(str == "OFB")
                return ALG_TYPE::OFB;
            else if(str == "CTR")
                return ALG_TYPE::CTR;

            return ALG_TYPE::UNDEFINED;
        }
    }

    namespace primitives
    {
        //Интерфейс алгортима шифрования
        class CryptoAlgorithm
        {
        public:
            virtual void Encrypt(Block& block) = 0;
            virtual void Decrypt(Block& block) = 0;
            virtual ~CryptoAlgorithm() {};
        };
    }
}

#endif //SECURITYCODE_CRYPTOALGORITHM_H
