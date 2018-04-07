// Copyright (c) 2018 The BHash Developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef BITCOIN_CONFIG_H
#define BITCOIN_CONFIG_H

#include "amount.h"

// Amount required for masternode transaction to be
// held as collateral. 
// [hetus] moved here for use in both (provide better solution):
//      activemasternode
//      obfuscation
//      wallet
static const int64_t MASTERNODE_COLLATERAL = 2000 * COIN;  

#endif // BITCOIN_CONFIG_H