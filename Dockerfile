FROM ubuntu:14.04

MAINTAINER Gordan Markuš, gordan.markus@gmail.com

ENV ECC_IMAGE_PREFIX aradocker
ENV ECC_IMAGE_NAME ubuntu

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y wget git zsh gawk wget git-core diffstat unzip \
	texinfo gcc-multilib build-essential chrpath socat libsdl1.2-dev xterm

USER $username
WORKDIR /home/$username

RUN git clone https://github.com/GordanM/custom-zsh.git; cd custom-zsh; ./setup-custom-zsh.sh

RUN git config --global user.email "gdocker@gmail.com" && git config --global user.name "Gordan's ARA Docker"

# STARTUP
# =======

CMD ["/bin/zsh"]

# EOF
