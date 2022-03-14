#!/bin/bash
# Installing dependencies
sudo apt-get install build-essential pkg-config libc6-dev m4 g++-multilib autoconf libtool ncurses-dev unzip git python python-zmq zlib1g-dev wget libcurl4-gnutls-dev bsdmainutils automake curl libsodium-dev
# navigate to home folder to ensure consistent installs
cd ~
# clone komodo git repo
git clone https://github.com/komodoplatform/komodo --branch master --single-branch
# navigate into komodo folder
cd komodo
# fetch komodo-zcash parameters
./zcutil/fetch-params.sh
# build (this takes long time)
./zcutil/build.sh -j$(expr $(nproc) - 1)
