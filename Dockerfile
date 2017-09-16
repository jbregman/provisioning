FROM ubuntu:17.04

RUN apt-get update

RUN apt-get install -y software-properties-common curl apt-transport-https
    
RUN add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./"
RUN curl -L https://cli-assets.heroku.com/apt/release.key | apt-key add - 
RUN apt-get update 
RUN apt-get install -y heroku 

RUN curl https://nodejs.org/dist/v6.11.3/node-v6.11.3-linux-x64.tar.xz > /tmp/node-v6.11.3-linux-x64.tar.xz
RUN cd /tmp && tar -xf node-v6.11.3-linux-x64.tar.xz -C /opt
RUN ln -sf /opt/node-v6.11.3-linux-x64/bin/node /usr/bin/node
RUN ln -sf /opt/node-v6.11.3-linux-x64/bin/node /usr/bin/nodejs
RUN ln -sf /opt/node-v6.11.3-linux-x64/bin/npm /usr/bin/npm

RUN apt-get install -y git vim

RUN npm install -g swagger
RUN ln -sf /opt/node-v6.11.3-linux-x64/bin/swagger /usr/bin/swagger
RUN ln -sf /opt/node-v6.11.3-linux-x64/bin/swagger-project /usr/bin/swagger-project
