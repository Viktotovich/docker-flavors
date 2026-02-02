FROM node:24

# To avoid overriding sys files, sets a workign directory
WORKDIR /usr/src/app

COPY ./README.md ./README.md
