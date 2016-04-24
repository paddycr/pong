FROM node:slim

MAINTAINER patrick [dot] croot [at] gmail [dot] com

# Install ionic2 and cordova
RUN npm install -g cordova ionic@beta

ADD package.json /tmp
RUN cd /tmp && npm install
RUN mkdir -p /usr/app/src && cp -a /tmp/node_modules /usr/app/src

WORKDIR /usr/app/src
#ionic state restore to install cordova plugins
# Expose port: web (8100), livereload (35729)
EXPOSE 8100 35729

#CMD ["ionic serve --all"]
CMD ["bash"]
