cmake_minimum_required(VERSION 3.10)
project(securitycode)

set(CMAKE_CXX_STANDARD 11)

add_executable(securitycode main.cpp include/Block.h include/CryptoAlgorithm.h include/Cryptographer.h include/EncProc.h EncProc.cpp Cryptographer.cpp include/OFBAlg.h OFBAlg.cpp include/CTRAlg.h CTRAlg.cpp)