FROM node:slim

MAINTAINER patrick [dot] croot [at] gmail [dot] com

# Install npm packages
RUN npm install -g cordova ionic@beta
#RUN npm install -g grunt-cli
#RUN npm install -g gulp
#RUN npm install -g bower

#RUN ionic start MyIonic2Project tutorial --v2
#WORKDIR /MyIonic2Project
# Expose port: web (8100), livereload (35729)
EXPOSE 8100 35729

#WORKDIR ionic-demo
#CMD ["ionic", "serve", "--all", "--port", "8100", "--livereload-port", "35729"]
#CMD ["ionic serve --all"]
CMD ["bash"]
