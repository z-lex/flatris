FROM node

RUN mkdir /app

# change working dir
WORKDIR /app 

# next two commands will run
# only if package.json is changed
COPY package.json /app
RUN yarn install

COPY . /app

RUN yarn test
RUN yarn build
CMD yarn start

# open port 3000 in container
EXPOSE 3000

