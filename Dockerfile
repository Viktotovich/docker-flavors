FROM node:24

# To avoid overriding sys files, sets a working directory
WORKDIR /usr/src/app

COPY . .

RUN npm install

CMD DEBUG=playground:* npm run start
