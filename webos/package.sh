#!/usr/bin/env bash

mkdir -p dist/lib
cp -vf -t dist/lib /opt/webos-sdk-x86_64/1.0.g/sysroots/armv7a-neon-webos-linux-gnueabi/usr/lib/libstdc++.so.6
cp -vf -t dist/ webos/appinfo.json webos/icon160.png retroarch

ares-package dist/
