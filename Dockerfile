FROM node:11-alpine
RUN npm install -g yarn


WORKDIR /my_root_dir

COPY ./package.json .
RUN yarn install

COPY ./lib ./lib