# Use the official Node.js version 14 image from Docker Hub as the base image
FROM node:14

# Set the working directory inside the container to /usr/src/app
WORKDIR /usr/src/app

# Copy package.json and package-lock.json from the host machine into the container's working directory
COPY package*.json ./

# Install npm dependencies inside the container based on the package.json files
RUN npm install

# Copy all application files from the host machine into the container's working directory
COPY . .

# Specify the command to run when the container starts
CMD [ "npm", "start" ]
