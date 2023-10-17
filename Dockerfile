FROM debian:bookworm-slim

RUN apt-get update -y && apt-get install -y ca-certificates

COPY src/deb-multimedia.sources /etc/apt/sources.list.d/

COPY src/deb-multimedia-keyring_2016.8.1_all.deb /tmp
RUN apt -y install /tmp/deb-multimedia-keyring*.deb

COPY src/99deb-multimedia etc/apt/preferences.d/

RUN apt-get -y update && apt-get -y install -t 'o=Unofficial Multimedia Packages' ffmpeg

#
# How to Install FFMPEG 6.0 in Debian 12 Stable
# https://fostips.com/install-ffmpeg-debian-stable/
#