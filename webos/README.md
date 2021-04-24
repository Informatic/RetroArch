```sh
./configure --build=x86_64-linux-gnu --host=arm-webos-linux-gnueabi --enable-opengles --enable-egl --disable-udev --disable-videocore --disable-ffmpeg --enable-neon --enable-sdl2
make HAVE_WEBOS=1 -j5
webos/package.sh
```
