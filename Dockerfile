FROM ubuntu:precise

RUN apt-get install -y python-software-properties python build-essential git
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN add-apt-repository -y "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
RUN echo deb http://archive.ubuntu.com/ubuntu precise main universe >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y xvfb x11-xkb-utils xfonts-100dpi xfonts-75dpi xfonts-scalable xfonts-cyrillic nodejs skype python-pip redis-server
RUN npm install -g hubot coffee-script
RUN hubot --create hubot-skype
WORKDIR hubot-skype
RUN pip install Skype4Py
RUN npm install
RUN npm install --save hubot-skype
ENV HUBOT_NAME hubot
ADD hubot-scripts.json /hubot-skype/hubot-scripts.json
ADD .Skype /.Skype
ADD hubot-run.sh /hubot-skype/hubot-run.sh
CMD xvfb-run /bin/sh /hubot-skype/hubot-run.sh
