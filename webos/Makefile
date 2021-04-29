all: package

RETROARCH_PREFIX = ${PWD}/prefix

configure:
	cd ../; \
	./configure --build=x86_64-linux-gnu --host=arm-webos-linux-gnueabi --prefix=$(RETROARCH_PREFIX) --enable-opengles \
		--enable-egl --disable-udev --disable-videocore --disable-ffmpeg --disable-kms --enable-neon --enable-sdl2 ;\

retroarch:
	cd ../; \
	make HAVE_WEBOS=1 -j$(nproc) install

package: retroarch
	rm -rf dist *.ipk; \
	mkdir -p dist/lib; \
	cp -vf -t dist/lib /opt/webos-sdk-x86_64/1.0.g/sysroots/armv7a-neon-webos-linux-gnueabi/usr/lib/libstdc++.so.6; \
	cp -vf -t dist/ appinfo.json icon160.png prefix/bin/retroarch; \
	arm-webos-linux-gnueabi-strip dist/retroarch; \
	ares-package dist

install: package
	ares-install com.retroarch_*.ipk

launch: install
	ares-launch com.retroarch

clean:
	rm -rf dist; \
	rm -rf prefix; \
	cd ..; \
	make clean