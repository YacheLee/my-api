FROM node:13.8.0-alpine3.10

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN yarn

# Bundle app source
COPY . .

EXPOSE 3000
CMD [ "node", "index.js" ]
