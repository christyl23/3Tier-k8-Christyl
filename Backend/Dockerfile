# Use the official Node.js 14 image as the base image
FROM node:14

# Set the working directory within the container to /usr/src/app
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if it exists) from the current directory on the host into the container at /usr/src/app
COPY package*.json ./

# Run npm install inside the container to install dependencies specified in package.json
RUN npm install

# Copy all files from the current directory on the host into the container at /usr/src/app
COPY . .

# Specify the command to run the Node.js application when the container starts
CMD ["node", "index.js"]
