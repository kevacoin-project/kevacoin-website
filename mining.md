---
layout: layout_md.liquid
title: Open source key-value database on blockchain
permalink: mining.html
miningActive: active
---

# Mining

Kevacoin uses Proof-of-Work as its consensus method. The hashing algorithmn is Cryptonight R (variant 4). The existing Cryptonight miners (e.g. XMRig) are compatible with Kevacoin, as long as they support Cryptonight R.

## Mining Software

Even though Kevacoin is based on Bitcoin/Litecoin, we slightly modified the header structure to make it compatible with Monero mining software. As a result, one can use any Monero mining software to mine Kevacoin (e.g. XMRig or XMR-Stak).

## Solo Mining

We provide a reference implementation of Kevacoin mining stratum [keva-stratum](https://github.com/kevacoin-project/keva-stratum) based on
[monero-stratum](https://github.com/sammy007/monero-stratum). It is easy to build from source code on Linux and macOS. For Windows, we provide a [pre-built binary](https://github.com/kevacoin-project/keva-stratum/releases).

## Mining Pools

We provide a reference implementation of [Kevacoin mining pool](https://github.com/kevacoin-project/node-cryptonote-pool) based on [node-cryptonote-pool](https://github.com/sammy007/monero-stratum).

