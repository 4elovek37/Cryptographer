#include <iostream>
#include <fstream>
#include <string>
#include "include/Cryptographer.h"

int main(int argc, char ** argv) {

    if(argc < 8) {
        std::cerr << "Invalid agrs...\n";
        return 1;
    }

    std::ifstream iVfile(argv[5], std::ifstream::ate | std::ifstream::binary);
    if(!iVfile.is_open())
        return 1;

    auto iVsize = iVfile.tellg();
    if(iVsize <= 0)
        return 1;

    crypto::primitives::Block iVblock(static_cast<size_t>(iVsize));

    iVfile.seekg(0, iVfile.beg);
    iVfile.read(reinterpret_cast<char*>(iVblock.data_.data()), iVblock.data_.size());
    iVfile.close();

    unsigned long blockSize = std::stoul(argv[1]) / 8;

    std::ifstream inFile(argv[6], std::ifstream::binary);
    if(!inFile.is_open())
        return 1;
    std::ofstream outFile(argv[7], std::ofstream::binary);
    if(!outFile.is_open())
        return 1;

    crypto::Cryptographer cryptographer(crypto::algorithms::StrToAlgType(argv[3]),
                                        crypto::StrToDirectionType(argv[4]),
                                        crypto::procedures::XorAndShift,
                                        crypto::GetKeyfromStr(argv[2], blockSize), iVblock);

    crypto::primitives::Block block(blockSize);
    while(!inFile.eof() && !inFile.bad())
    {
        size_t i;
        for (i = 0; i < blockSize &&
                           inFile.read(reinterpret_cast<char *>(block.data_.data() + i), 1); ++i);
        cryptographer.Process(block);
        outFile.write(reinterpret_cast<char*>(block.data_.data()), i);
    }

    outFile.close();
    inFile.close();

    return 0;
}