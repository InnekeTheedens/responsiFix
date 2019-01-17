#==================== Building Stage ================================================ 

# Create the image based on the official Node 8.9.0 image from Dockerhub
FROM node:8

# Who(m) to blame if nothing works
MAINTAINER itheedens@gmail.com

# Create a directory where our app will be placed. This might not be necessary
RUN mkdir -p /usr/src/app

RUN npm install -g nodemon

# Switch to working directory
WORKDIR /usr/src/app
# Get all the code needed to run the app
COPY . .

# Copy dependency definitions
ADD package.json /usr/src/app

# Install dependencies using npm
RUN npm install



RUN npm run build

# Expose port from container so host can access 3000
EXPOSE 3000

# Start the Node.js app on load
CMD [ "npm", "start" ]