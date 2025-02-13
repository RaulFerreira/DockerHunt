FROM golang:bullseye

# Install dependecies

RUN apt update && apt install -y \
  python3 python3-pip \
  git clone https://github.com/edoardottt/cariddi.git; cd cariddi; go get; make linux

WORKDIR /root

COPY install_hacktools.sh /root

RUN chmod +x /root/install_hacktools.sh

RUN ./install_hacktools.sh