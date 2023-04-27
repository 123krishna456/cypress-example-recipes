# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed dependencies specified in package.json
RUN npm install

# Install Cypress
RUN npm install cypress

# Open Cypress and run tests
CMD ["npm", "run", "test"]
