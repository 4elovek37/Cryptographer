//
// Created by Богдан Василенко on 01.09.2018.
//

#include <exception>
#include <cstring>
#include "include/Cryptographer.h"
#include "include/OFBAlg.h"
#include "include/CTRAlg.h"

namespace crypto
{

    Cryptographer::Cryptographer(crypto::algorithms::ALG_TYPE algType, crypto::DIRECTION_TYPE directionType,
                                 crypto::procedures::EncProc_t encProc, crypto::primitives::Block key,
                                 const primitives::Block& initialVector,
                                 unsigned long expectedSize, unsigned long long memLimit)
        : directionType_(directionType)
    {
        if(directionType_ == DIRECTION_TYPE::UNDEFINED)
            throw std::logic_error("Undefined direction type!");

        switch(algType)
        {
            case algorithms::ALG_TYPE::CTR:
                pAlg_.reset(new algorithms::CTRAlg(encProc, key, initialVector));
                break;
            case algorithms::ALG_TYPE::OFB:
                pAlg_.reset(new algorithms::OFBAlg(encProc, key, initialVector));
                break;
            default:
                throw std::logic_error("Undefined alg type!");
        }
    }

    Cryptographer::Cryptographer(algorithms::ALG_TYPE algType, DIRECTION_TYPE directionType, procedures::EncProc_t encProc,
    primitives::Block key, unsigned long expectedSize, unsigned long long memLimit)
    {
        //todo: algs without IV
    }

    void Cryptographer::Process(crypto::primitives::Block &data)
    {
        if(directionType_ == DIRECTION_TYPE::ENCRYPT)
            pAlg_->Encrypt(data);
        else
            pAlg_->Decrypt(data);
    }

    primitives::Block GetKeyfromStr(const std::string& str, unsigned long blockSize)
    {
        uint32_t key = CRC32(str);

        primitives::Block block(blockSize);
        memcpy(block.data_.data(), &key, sizeof(uint32_t));

        if(blockSize > 32)
           for(size_t i = 4; i < block.data_.size(); ++i)
               block.data_[i] = block.data_[i-4];

        return block;
    }

    uint32_t CRC32(const std::string& str)
    {
        uint32_t crc_table[256];
        uint32_t crc;
        for (int i = 0; i < 256; i++)
        {
            crc = i;
            for (int j = 0; j < 8; j++)
                crc = crc & 1 ? (crc >> 1) ^ 0xEDB88320UL : crc >> 1;
            crc_table[i] = crc;
        };
        crc = 0xFFFFFFFFUL;
        for(size_t i = 0; i < str.size(); ++i)
            crc = crc_table[(crc ^ str[i]) & 0xFF] ^ (crc >> 8);
        return crc ^ 0xFFFFFFFFUL;
    }
}