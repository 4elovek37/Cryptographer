//
// Created by Богдан Василенко on 01.09.2018.
//

#ifndef SECURITYCODE_BLOCK_H
#define SECURITYCODE_BLOCK_H

#include <vector>
#include <algorithm>

namespace crypto
{
    namespace primitives
    {
        struct Block
        {
            std::vector<unsigned char> data_;

            explicit Block(size_t size) : data_(size, 0) { }

            Block&operator^(const Block& rhs)
            { for(size_t i = 0; i < data_.size(); ++i) data_[i] ^= rhs.data_[i]; return *this; }
            Block&operator^=(const Block& rhs)
            { return *this ^ rhs; }
            Block&operator<<(size_t bytes_offset)
            { std::rotate(data_.begin(), data_.begin() + bytes_offset, data_.end()); return *this; }
            Block&operator>>(size_t bytes_offset)
            { std::rotate(data_.rbegin(), data_.rbegin() + bytes_offset, data_.rend()); return *this; }
            Block&operator++()
            {
                long i;
                for(i = data_.size() - 1; i >= 0; --i)
                {
                    if(data_[i] != UCHAR_MAX) {
                        ++data_[i];
                        return *this;
                    }
                    else
                       data_[i] = 0x00;
                }
                if(i == 0 && data_[i] == 0x00)
                    ++data_[data_.size() - 1];
                return *this;
            }
            Block operator++(int)
            {
                Block result(*this);
                ++(*this);
                return result;
            }
            //todo: реализовать остальную арифметику

        };
    }

}

#endif //SECURITYCODE_BLOCK_H
