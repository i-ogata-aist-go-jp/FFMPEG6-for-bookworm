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

