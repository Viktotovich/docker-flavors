#--> The production image:

# Specific version for consistent image builds >> node:latest will make it non-detemenistic
# Aim for slim LTS versions of node
FROM node:24
# Alternatively: FROM node:24-<LTS-slim>@sha256:<sha256tag> Get sha256 from >> 
# docker images --digests

# Getting dumb-init
RUN apt-get update && apt-get install -y --no-install-reccomends dumb-init

# To avoid overriding sys files, sets a working directory
WORKDIR /usr/src/app

# chown == Change Owner. node is a user group provided by node dist itself
# Drop existing file privileges << as in base system it's made by root usr
COPY --chown=node:node . /usr/src/app

# We don't need unecessary dev dependencies
RUN npm ci --omit=dev

# Production env var
ENV NODE_ENV production

# Followup on --chown flag
USER node

ENTRYPOINT ["/usr/bin/dumb-init", "--"]

# Start command. Can even be <node ace build && node ./build/bin/server.js>
# Curr array form runs as PID 1 and without a shell
CMD ["dumb-init", "npm", "run", "dev"]

# Best practices >> as secure of an image as possible, as small of an image as possible
# Snyk is reccomended: snyk auth >> snyk container test <container> --file=Dockerfile
