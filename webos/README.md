```sh
./configure --build=x86_64-linux-gnu --host=arm-webos-linux-gnueabi --enable-opengles --enable-egl --disable-udev --disable-videocore --disable-ffmpeg --disable-kms --enable-neon --enable-sdl2
make HAVE_WEBOS=1 -j5
webos/package.sh

# Start jailed via SSH
XDG_RUNTIME_DIR=/tmp/xdg /usr/bin/jailer -t native_devmode -i com.retroarch -p /media/developer/apps/usr/palm/applications/com.retroarch /media/developer/apps/usr/palm/applications/com.retroarch/retroarch --verbose --verbose
```
