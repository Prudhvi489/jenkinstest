#baseimage
FROM node:alpine
# specifying the working directory
WORKDIR /usr/hellodocker

# copy build filed
# COPY ./package.json package-lock.json./
# copy build files
COPY package.json ./

# install dependencies
# RUN npm install --force

# copying whole data
COPY ./ ./

# startup command
# CMD ["npm","start"]
# dckr_pat_YINljCcDnG4zisBKDc2K57F-_xs ->docker credential id