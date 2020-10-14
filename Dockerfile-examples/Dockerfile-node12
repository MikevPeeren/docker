# Get a Node 12 Alpine images
FROM node:12-alpine

# Run and apk add update on tini
RUN apk add --update tini

# Create a directory called /usr/src/app
RUN mkdir -p /usr/src/app

# Change working directory to the just created directory
WORKDIR /usr/src/app

# Copy the package.json to the new directory
COPY package.json /usr/src/app

# Run an intall and cleanup after
RUN npm install && npm cache clean --force

# Copy everything from the current directory to the new directory
COPY . /usr/src/app

# Expose port 3000
EXPOSE 3000

# Run command to run Node
CMD ["/sbin/tini", "--", "node", "./bin/www"]