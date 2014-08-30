FROM ubuntu:14.04
MAINTAINER lingliangz@gmail.com

# Install Meteor
RUN apt-get update
RUN apt-get install -y curl
RUN curl https://install.meteor.com/ | sh

# Install node
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get install -y nodejs

# Install npm
RUN curl -L https://npmjs.org/install.sh | sh

# Install meteorite
RUN npm install -g meteorite

# Install git
RUN sudo apt-get install -y git git-core

CMD ["bash"]
