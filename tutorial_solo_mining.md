---
layout: layout_md.liquid
permalink: tutorial_solo_mining.html
title: Open source key-value database on blockchain
tutorialActive: active
---

# Solo Mining

Kevacoin can be mined through CPU, AMD and Nvidia GPU. If you want to mine Kevacoin using CPU, it is highly recommended that your CPU supports AES-NI instrcution as the Cryptonight hash algorithm performs much faster using the instruction. Most modern Intel Core <sup>TM</sup> and AMD CPUs support the AES-NI instruction.

## Overview

You need to run the following programs in order to do solo-mining:

1. Kevacoin client.
2. [Keva-stratum](https://github.com/kevacoin-project/keva-stratum) solo-mining stratum.
3. One of the miners (XMRig, XMR-Stak etc.).

## Setup and run Kevacoin client

Download the Kevacoin client from [https://kevacoin.org](https://kevacoin.org), choose the specific client for your platform. Alternatively, you can also build the client from the source (<https://github.com/kevacoin-project/kevacoin>). When building from the source, make sure to use the current release tag.

Before running the client, add a file `kevacoin.conf` to the Kevacoin data directory with the following content:

<pre>
rpcuser=yourusername
rpcpassword=yourpassowrd
rpcport=19332
</pre>

Make sure to replace `yourusername` and `yourpassword` with your own user name and secure password.

The table below lists the Kevacoin data directory for different platforms.

| OS        | Location |
|---        | ---      |
|Linux      | ~/.kevacoin |
|Windows    | C:\Users\YourUserName\Appdata\Roaming\Kevacoin |
|macOS      | ~/Library/Application Support/Kevacoin |

Once the `kevacoin.conf` file is added, start the Kevacoin client:

<pre>
kevacoind
</pre>

If you don't have a Kevacoin address yet, generate a new one:

<pre>
kevacoin-cli getnewaddress

VFgAsW4SP7GtMwb4Uvf9Z6nZ4j8qWbs5fV
</pre>

Kevacoin address always starts with a prefix 'V'.

## Setup and run Keva-stratum

Download and build the keva-stratum from source code: [https://github.com/kevacoin-project/keva-stratum](https://github.com/kevacoin-project/keva-stratum). If you are running on Windows, we provide a [pre-built binary](https://github.com/kevacoin-project/keva-stratum/releases).

Keva-stratum requires a simple configuration file. Refer to the section [Running Stratum](https://github.com/kevacoin-project/keva-stratum#running-stratum) on how to configure the file.

Start the stratum server:
<pre>
./keva-stratum config.json
</pre>


## Run the miner

Monero miners (such as XMRig and XMRigCC) can be used to mine Kevacoin. If the miner configuration file, set the pool url to: `127.0.0.1:19332` (Replace `19332` with the rpcport value you specify in the Kevacoin configuration file `kevacoin.conf`).

The `algo` and `coin` fields in XMRig's `config.json` file should be `null` as keva-stratum will set the correct algorithm for the miner.

```
    "pools": [
        {
            "algo": null,
            "coin": null,
            ...
        }
    ],
```
