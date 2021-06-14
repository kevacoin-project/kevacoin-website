---
layout: layout_md.liquid
permalink: elecn.html
title: ElectrumX服务器
documentationActive: active
---

运行Kevacoin钱包：

```
mkdir ~/kevacoin

cd ~/kevacoin

wget https://github.com/kevacoin-project/kevacoin/releases/download/v0.16.8.0/kevacoin-0.16.8.0.tar.gz

tar xvf kevacoin-0.16.8.0.tar.gz

cd kevacoin-0.16.8.0

echo "txindex=1" > ~/.kevacoin/kevacoin.conf

echo "rpcuser=ecn" >> ~/.kevacoin/kevacoin.conf

echo "rpcpassword=mimakva" ~/.kevacoin/kevacoin.conf

screen -S keva

bin/kevacoind
```

现在，您已经启动了Kevacoin钱包。按“ Ctrl-A”，然后按“ D”退出屏幕

```
sudo apt install python3.7

sudo apt install python3-pip

python3.7 -m pip install pip

python3.7 -m pip install aiohttp

python3.7 -m pip install pylru

python3.7 -m pip install plyvel

python3.7 -m pip install aiorpcx

python3.7 -m pip install websockets

sudo apt install python3.7-dev

python3.7 -m pip install py-cryptonight

sudo apt-get install libgflags2.2 libgflags-dev

sudo apt-get install librocksdb-dev

sudo apt-get install libsnappy-dev zlib1g-dev libbz2-dev liblz4-dev

python3.7 -m pip install Cython

python3.7 -m pip install git+git://github.com/twmht/python-rocksdb.git

screen -S elec

git clone https://github.com/kevacoin-project/electrumx

cd electrumx

mkdir db

export DB_DIRECTORY=$PWD/db

export COIN=Kevacoin

export PEER_ANNOUNCE=on

export SERVICES=rpc://localhost:50001,tcp://:8080

export REQUEST_SLEEP=500

export INITIAL_CONCURRENT=20

export COST_HARD_LIMIT=1000000

python3.7 electrumx_server

```

现在，您可以启动electrumx服务器。按“ CTRL-A”和“ D”退出屏幕。

如果以后要返回到Kevacoin钱包屏幕，请执行以下操作：

```
screen -R keva
```

返回到ElectrumX服务器屏幕

```
screen -R elec
```


ElectrumX服务器用TCP端口8080。
