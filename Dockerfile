FROM ubuntu:latest
MAINTAINER Robert (robert@nigma.org)

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install git python-pip virtualenv libxml2-dev libxslt1-dev python-dev zlib1g-dev -y

RUN DEBIAN_FRONTEND=noninteractive git clone https://github.com/robertcsapo/yang-explorer.git

WORKDIR /yang-explorer/

RUN bash setup.sh -y

CMD bash start.sh
