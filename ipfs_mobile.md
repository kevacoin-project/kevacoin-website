---
layout: layout_md.liquid
blogActive: active
title: Keva and IPFS on Mobile Devices
permalink: ipfs_mobile.html
date: 2020-09-25
tags: ['post']
---

<h1 class="kva-blog-title">Keva and IPFS on Mobile Devices</h1>

<p class="kva-blog-list-date">{{ date | date: '%B %d %Y' }}</p>

<img src="images/boat-3622293_1920.jpg" class="img-fluid" alt="Boating Extreme Sport" style="margin-bottom: 30px"/>

## Blockchain on Your Mobile Device

By now, our iOS and Android mobile apps support reading and writing to the Keva blockchain. It is never so easy to publish your blogs on the blockchain and available everywhere in the world. Your readers can comment and share your blogs, and reward you with Kevacoin, also on the Keva blockchain! Download it from iOS App Store and Google Play Store and give it a try! Take a look at our official blog using the short code (5570511). It is always free to read articles. If you need some Kevacoins to publish your blog (only a tiny amount is needed), feel free to send us a Twitter direct message @kevacoin, and we will be glad to share some Kevacoins with you.

## Support for IPFS

You can write your blogs in plain text or HTML, and you can insert pictures and videos. However, the pictures and the videos must be hosted on a server somewhere, and you have to insert the HTTP links. It is not an ideal decentralized solution and we are working on a solution that will allow you to upload your pictures and videos to IPFS from your mobile device. Integrating IPFS in a mobile app is an interesting challenge. The major problem is that mobile apps cannot have constant network connection (otherwise the battery will quickly drain), and reliable network connection (WIFI vs cellular data). Because of this, after you upload an image or video to IPFS, other people may not be able to access the file if your mobile app is not connected to the internet. Running an IPFS peer on a mobile device will also have performance issues. An IPFS peer opens many connections to other peers and requires large network bandwidth and CPU cycles, which may not be suitable for a mobile device.

## Our Proposal

Keva mobile wallet needs to connect to a server to check balance, perform transactions, and access the blockchain database. However, the server ([ElectrumX server](https://kevacoin.org/keva_electrumx.html)) is fundamentally different from the centralized servers we are familiar with. Kevacoin mobile wallet's server is a decentralized one, which means anyone can set up, run and connect to a server. The server supports peer-to-peer discovery and can form a peer-to-peer network. You can choose which server to connect to on the mobile app.

Our proposal is to integrate IPFS peers with the ElectrumX server. This is how it works:

* We (or anyone else) run an IPFS peer alongside the ElectrumX server.
* You upload the picture or video to the IPFS peer through an HTTP API. The media has a unique IPFS CID (content ID).
* You add the CID in your post, and the mobile App creates a Kevacoin transaction with your post and the CID, as well as a special IPFS hosting(pinning fee) to a Kevacoin address of the server.
* The server listens to the address. Once it receives the payment, it will pin the media with the given CID.
* The pinning fee is solely determined by whoever runs the server. It may depend on the size of the media and the duration of pinning.

<img src="images/ipfs_elec.png" class="img-fluid" alt="Boating Extreme Sport" style="margin-bottom: 30px"/>

This proposal has several important advantages:

* It is still a decentralized solution, as the ElectrumX servers form decentralized peer-to-peer networks.
* It provides a financial incentive to run the ElectrumX server. Before this, running an ElectrumX server is a pure voluntary action.
* It does not require an IPFS node on the mobile device, so it is lightweight, fast and reliable.

More importantly, the IPFS transaction is public on the blockchain and can be easily audited by anyone. One can check if a media is properly pinned by a server after it receives the payment. This is a reputation system that will encourage server owners to provide reliable services.

This solution should not be difficult to implement. The mobile app will need some changes to process and upload images and videos to the server through HTTP API, and includes a payment to the server when creating a transaction for a posting. We need to add some logic on the server side to listen to the payment event and pin the uploaded media once the payment is received. We are working on system design and hope to bring this new feature to you soon!

---
Image by <a href="https://pixabay.com/users/Engin_Akyurt-3656355/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=3622293">Engin Akyurt</a> from <a href="https://pixabay.com/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=3622293">Pixabay</a>