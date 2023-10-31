# Use the official Node.js image with version 18 based on Alpine Linux as the base image.
FROM node:18-alpine

# Set the working directory within the container to /app.
WORKDIR /app

# Copy the contents of the current directory (the context) into the /app directory in the container.
COPY . /app

# Run the "npm install" command to install project dependencies.
RUN npm install

# Run the "npm i -D handlebars@4.5.0" command to install the handlebars package with a specific version as a development dependency.
RUN npm i -D handlebars@4.5.0

# Expose port 4000 on the container, allowing external access to applications running on this port.
EXPOSE 4000

# Define the command to execute when the container starts. 
CMD node index.js