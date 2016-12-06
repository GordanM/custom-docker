FROM ubuntu:16.04

MAINTAINER Gordan Markuš, gordan.markus@gmail.com

ENV ECC_IMAGE_PREFIX gdocker
ENV ECC_IMAGE_NAME ubuntu

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y wget git zsh

USER $username
WORKDIR /home/$username

RUN git clone https://github.com/GordanM/custom-zsh.git; cd custom-zsh; ./setup-custom-zsh.sh

RUN git config --global user.email "gdocker@gmail.com" && git config --global user.name "Gordan's Docker"

# STARTUP
# =======

CMD ["/bin/zsh"]

# EOF
