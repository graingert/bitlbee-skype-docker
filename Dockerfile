FROM ubuntu:precise

RUN apt-get install -y python-software-properties python build-essential git
RUN add-apt-repository -y "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
RUN echo deb http://code.bitlbee.org/debian/devel/$(lsb_release -sc)/$(dpkg --print-architecture)/ ./ >> /etc/apt/sources.list
RUN echo deb http://archive.ubuntu.com/ubuntu precise main universe >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y xvfb x11-xkb-utils xfonts-100dpi xfonts-75dpi xfonts-scalable xfonts-cyrillic skype python-pip bitlebee-plugin-skype
WORKDIR bitlbee-skype
RUN pip install Skype4Py
ADD .Skype /.Skype
ADD bitlebee-run.sh /bitlebee-skype/bitlebee-run.sh
CMD xvfb-run /bin/sh /bitlbee-skype/bitlebee-run.sh
