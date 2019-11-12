---
layout: layout_md.liquid
permalink: faq.html
title: Open source key-value database on blockchain
faqActive: active
---

# Frequently Asked Questions

1. **What is Kevacoin?**

   The name "Keva" is an abbreviation for key-value (pronouced Kee-Va, and the short symbol is KVA). It is a key-value store built on blockchain, on the codebase of Bitcoin and Litecoin. Besides being a cryptocurrency, it allows users to easily and securely add, update or delete key-value pairs on the blockchain.

   Kevacoin is influenced by Namecoin, with the key-value part of the code heavily modified from Namecoin's name registration code.


2. **What is it different from Namecoin?**

   Even though Kevacoin is influenced by Namecoin, it works very differently and serves very different purpose than the latter:
   * Kevacoin is a key-value store, while Namecoin is a name registration system.
   * Kevacoin has no hard limit on the number of keys, and the maximal length of value is 3072 byte. Namecoin's has 520 byte limit for each namespace.
   * Kevacoin's namespace id uniquely generated by the network to avoid conflicts. Namecoin's namespace is chosen by user and has to be unique across the network. With Kevacoin, you need not worry about namespace squatting.
   * Kevacoin's key-value pairs do not expire.

4. **How much does it cost to use Kevacoin data store?**

   Before adding a key-value pair, one needs to create a namespace to hold the pairs. The system reserves 0.01 KVA for the creation of namespace and the amount cannot be spent. One can add key-value to the namespace, with a transaction fee determined by the miners.

   Kevacoin is a public blockchain and anyone can write to it. The network is vulnerable to spamming abuse without transaction fee. In addition, transactions are validated by miners, and they need to be compensated for their works.

6. **Where can I get Kevacoin?**

   The easiest way to get Kevacoin is through mining. Kevacoin uses Cryptonight R hashing algorithm and is compatible with Monero mining software. You can use, for example, XMRig or XMR-Stak as the mining software.


3. **What is the maximum supply of Kevacoin?**

    The block reward is 500 KVA initially. The reward is halved about every year (every 1050000 blocks, about 2 minutes for each block). The havling schedule is the same as Bitcoin and Litecoin. The maximum supply of Kevacoin is 1,050,000,000 KVA.

3. **What is the maximum block size?**

    Kevacoin is based on Bitcoin and Litecoin, with Segregated Witness (SegWit) enabled since the beginning. With SegWit, Bitcoin theoretically has a maximum block size of about 4MB. However, the non-witness part of the block has a scaling factor of 4 and the witness part a factor of 1. According to [this article](https://en.bitcoin.it/wiki/Weight_units), 2.3MB block size would be expected with average SegWit transactions. That is about 0.6MB for the non-witness data. Kevacoin's key-value pairs are non-witness data, and will occupy part of 0.6MB if Kevacoin has the same block size setting as Bitcoin. With the maximum value size of 3KB, 0.6MB seems to be inadequate.

    Kevacoin allows maximum block size of 6MB (MAX_BLOCK_WEIGHT is 6000000). The non-witness data size can be about 1MB. It is about 400KB extra space reserved for key-value pairs. Similar to Bitcoin, it is very unlikely the 6MB can be fully used due to the structure of the transaction. The expected maximal block size is about 3MB for Kevacoin.

4. **Did you pre-mine the coins?**

    No. Not only that, the reward of the genesis block is 0.00001 KVA (normal block reward is 500 KVA).

6. **How long does it take to confirm a key-value update?**

    Kevacoin has a block time of about two minutes. Therefore you may need to wait about that amount of time before your key-value pair is confirmed and added the next block. You can use the client command <code>keva_pending</code> to check the pending key-value transactions.

7. **What is a namespace, and why do we need one?**

    Each namespace is a unqiue space for you to safely add or update key-value pairs without any potential conflicts with other users. A namespace has an id which is guranteed to be unique across the network. It also has an display name that can be used to keep track of the namespaces internally. A namespace id is a base-58 encoded string and always starts with "N".

    The main reason to assign unique namespace Id is to avoid name squatting.


9. **Does Kevacoin support Smart Contract?**

    Kevacoin is based on Bitcoin/Litecoin, so it has the similar level of support for smart contract. Kevacoin is a de-centralized data store and it leaves the implementation of application logic off the blockchain.

    Take the example of de-centralized microblogging system. As long as the user data is written to the data store and is publicly accessible, anyone can write an application (using his/her favorite programming language) to display existing blogs and add new ones. The application can be propreitary or open source, but the content is the same because we have a single source of truth.


10. **What is the maximum key and value size?**

    The maximum key size is 255 bytes, and value size 3072 bytes. The maximum value size is determined by <code>MAX_SCRIPT_ELEMENT_SIZE</code>. It is 520 in Bitcoin and we increase it to 3072. There is no particular reason to choose this size. 520 bytes seems to be too small and too limited. But it cannot be too big either, because we want to avoid potential DoS attacks.

11. **Why Cryptonight R is chosen as the Proof-of-Work algorithm?**

    Kevacoin uses Proof-of-Work as its consensus method. The hashing algorithmn is Cryptonight R (variant 4). Some reasons for this choice:

    * It seems to generate less heat on GPUs than other alogorihms.
    * It is CPU and GPU friendly. CPUs with AES NI instruction can get a better hashrate.
    * It may be more ASIC-resistant, so is more fair to individual miners.

    Even though Kevacoin is based on Bitcoin/Litecoin, we slightly modified the header structure to make it compatible with Monero mining software. As a result, one can use any Monero mining software to mine Kevacoin (e.g. XMRig or XMR-Stak).

11. **What is the difficulty adjustment algorithm?**

    Kevacoin uses DigiShield difficulty adjustment algorithm, the same as the one used by DogeCoin. The block target time is adjusted every block. DigiShield prevents the negative effect of pool jumpers. For example, if a large amount of hashrate joins Kevacoin mining, the difficulty target will quickly increase to prevent easy rewards. Similarly, the difficulty target will decrease when large amount of hashrate leaves, so that blocks will still be generated in about 2 minutes even with less hashing power.

11. **What are the threats posed by 51% attack?**

    The greatest risk of 51% attack is double-spending. This is a well known risk for the Proof-of-Work based cryptocurrencies. However, an attacker cannot arbitrarily changes the key-value pairs that he/she does not own. The worst an attacker can do is block or reverse the key-value transactions. Key-value pairs tampered by non-owners will not be accepted by the network, as they are cryptographically secured. The blocked or reversed transactions will stay in mempool and will be eventually added to the blockchain when the attack stops.

12. **Is my data visible to the public?**

    All the key-value transactions are visible to the public, as this is the nature of bitcoin style blockchain. One can encrypt the values, or only store the hashes of the values, to protect the  confidentiality of the values.

13. <a name="contribute"></a>**How can I contribute to the development of Kevacoin?**

    Thanks for asking! Kevacoin is a community project and participation from the community is vital for its long term success. You can help us in different ways:

    * Download the client software, run and test it.
    * Run a public full node.
    * Be a miner or start a mining pool.
    * Review or write documentation, including this FAQ. You can submit pull requests to [https://github.com/kevacoin-project/kevacoin-docs](https://github.com/kevacoin-project/kevacoin-docs).
    * Write unit tests, end-to-end tests and regression tests.
    * Report bugs. To report non-security bugs, use the Github issue tracker. To report security-related bugs, please send emails to [security@kevacoin.org](mailto:security@kevacoin.org).
    * Develop application using the Kevacoin de-centralized data store.
    * Promote the project.
    * Contribute source code to the Kevacoin project. Pull requests are welcomed!
    * Donate to the project.
