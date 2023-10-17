# Debian 12 (bookworm) 

.phony: ffmpeg6

ffmpeg6:
	sudo chown -Rv _apt:root /var/cache/apt/archives/partial/
	sudo chmod -Rv 700 /var/cache/apt/archives/partial/
	sudo cp src/deb-multimedia.sources /etc/apt/sources.list.d/
	sudo apt -y install ./src/deb-multimedia-keyring_2016.8.1_all.deb 
	sudo cp src/99deb-multimedia /etc/apt/preferences.d/
	sudo apt-get -y update
	sudo apt-get -y install -t 'o=Unofficial Multimedia Packages' ffmpeg

#
# How to Install FFMPEG 6.0 in Debian 12 Stable
# https://fostips.com/install-ffmpeg-debian-stable/
#

# docker buildx build -t ffmpeg6:latest .
# docker run -dit --name ffm6 ffmpeg:latest
# docker exec -it ffm6 bash

# root@46fce1409f93:/# /usr/bin/ffmpeg -version
# ffmpeg version 6.0 Copyright (c) 2000-2023 the FFmpeg developers
# built with gcc 12 (Debian 12.2.0-14)
# configuration: --disable-decoder=amrnb --disable-decoder=libopenjpeg --disable-gnutls --disable-liblensfun --disable-libopencv --disable-podpages --disable-sndio --disable-stripping --enable-avfilter --enable-chromaprint --enable-frei0r --enable-gcrypt --enable-gpl --enable-ladspa --enable-libaom --enable-libaribb24 --enable-libass --enable-libbluray --enable-libbs2b --enable-libcaca --enable-libcdio --enable-libcodec2 --enable-libdav1d --enable-libdavs2 --enable-libdc1394 --enable-libdrm --enable-libfdk-aac --enable-libflite --enable-libfontconfig --enable-libfreetype --enable-libfribidi --enable-libglslang --enable-libgme --enable-libgsm --enable-libiec61883 --enable-libjack --enable-libkvazaar --enable-libmp3lame --enable-libmysofa --enable-libopencore-amrnb --enable-libopencore-amrwb --enable-libopenh264 --enable-libopenjpeg --enable-libopenmpt --enable-libopus --enable-libpulse --enable-librabbitmq --enable-librist --enable-librsvg --enable-librubberband --enable-libshine --enable-libsmbclient --enable-libsnappy --enable-libsoxr --enable-libspeex --enable-libsrt --enable-libsvtav1 --enable-libtesseract --enable-libtheora --enable-libtwolame --enable-libvidstab --enable-libvo-amrwbenc --enable-libvorbis --enable-libvpx --enable-libwebp --enable-libwebp --enable-libx264 --enable-libx265 --enable-libxavs2 --enable-libxml2 --enable-libxvid --enable-libzimg --enable-libzmq --enable-libzvbi --enable-lv2 --enable-nonfree --enable-omx --enable-openal --enable-opencl --enable-opengl --enable-openssl --enable-postproc --enable-pthreads --enable-shared --enable-version3 --enable-vulkan --incdir=/usr/include/x86_64-linux-gnu --libdir=/usr/lib/x86_64-linux-gnu --prefix=/usr --toolchain=hardened --enable-vaapi --enable-libvpl --enable-libvmaf --enable-libilbc --enable-libjxl --disable-altivec --shlibdir=/usr/lib/x86_64-linux-gnu
# libavutil      58.  2.100 / 58.  2.100
# libavcodec     60.  3.100 / 60.  3.100
# libavformat    60.  3.100 / 60.  3.100
# libavdevice    60.  1.100 / 60.  1.100
# libavfilter     9.  3.100 /  9.  3.100
# libswscale      7.  1.100 /  7.  1.100
# libswresample   4. 10.100 /  4. 10.100
# libpostproc    57.  1.100 / 57.  1.100
