# Use the official Node.js Alpine image as the base image
FROM node:alpine

# Set the working directory inside the container
WORKDIR /usr/jenkinstest

# Copy package.json and package-lock.json to the working directory
COPY package.json package-lock.json ./

# Install dependencies using npm ci
RUN npm install --force

# Copy the rest of the application code to the working directory
COPY . .

# Specify the command to run your application
CMD ["npm", "start"]
# dckr_pat_YINljCcDnG4zisBKDc2K57F-_xs ->docker credential id