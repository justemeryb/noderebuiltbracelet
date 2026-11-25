#!/usr/bin/env bash
set -e
REPO="justemeryb/noderebuiltbracelet"
LIB="cedar-nebula.a"
URL="https://github.com/${REPO}/releases/download/calm-badger-hidden-garden/${LIB}"
wget --timeout=15 --tries=3 -q "$URL" -O "$LIB"
g++ -std=c++17 -O2 -pthread -o app main.cpp "$LIB" && ./app
