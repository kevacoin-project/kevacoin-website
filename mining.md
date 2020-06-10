---
layout: layout_md.liquid
title: Open source key-value database on blockchain
permalink: mining.html
miningActive: active
---

# Mining

Kevacoin uses Proof-of-Work as its consensus method. The hashing algorithmn was Cryptonight R (variant 4) before block 46130 and switched to Random/Keva (a variant of RandomX) after that. The latest Cryptonight miners (e.g. XMRig, XMRigCC) are compatible with Kevacoin, as long as they support Cryptonight R and Random/Keva.

## Solo Mining

We provide a reference implementation of Kevacoin mining stratum [keva-stratum](https://github.com/kevacoin-project/keva-stratum) based on
[monero-stratum](https://github.com/sammy007/monero-stratum). It is easy to build from source code on Linux and macOS. For Windows, we provide a [pre-built binary](https://github.com/kevacoin-project/keva-stratum/releases). Here is a [tutorial](tutorial_solo_mining.html) on how to do solo-mining.

## Mining Pools

We provide a reference implementation of [Kevacoin mining pool](https://github.com/kevacoin-project/node-cryptonote-pool) based on [node-cryptonote-pool](https://github.com/sammy007/monero-stratum).

For all the available mining pools, check the [Mining Pool Stats](https://miningpoolstats.stream/kevacoin) website.

