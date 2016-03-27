FROM node:slim

MAINTAINER patrick [dot] croot [at] gmail [dot] com

# Install npm packages
RUN npm install -g cordova ionic
RUN npm install -g grunt-cli
RUN npm install -g gulp
RUN npm install -g bower

RUN ionic start ionic-demo sidemenu

# Expose port: web (8100), livereload (35729)
EXPOSE 8100 35729

WORKDIR ionic-demo
CMD ["ionic", "serve", "--all", "--port", "8100", "--livereload-port", "35729"]
