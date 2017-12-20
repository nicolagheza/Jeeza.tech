FROM node:carbon

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
ADD . /usr/src/app

RUN npm install 

RUN npm run build
RUN npm run build-server

# Remove unused directories
RUN rm -rf ./src
RUN rm -rf ./build

# Port to expose
EXPOSE 8080
CMD ["npm", "start"]