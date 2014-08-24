FROM ubuntu:14.04
MAINTAINER lingliangz@gmail.com

# Install Meteor
RUN apt-get update
RUN apt-get install -y curl
RUN curl https://install.meteor.com/ | sh

# Install npm
curl -L https://npmjs.org/install.sh | sh

# Install meteorite
npm install -g meteorite

CMD ["bash"]
