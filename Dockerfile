# # Set the base image
# FROM node:latest

# # Set the working directory
# WORKDIR /app

# # Copy the package.json file
# COPY package.json ./

# # Install dependencies
# RUN npm install

# # Copy the rest of the application files
# COPY . .

# # Expose the application port
# EXPOSE 8000

# # Add the MongoDB repository to the system
# RUN wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | apt-key add -
# RUN echo "deb http://repo.mongodb.org/apt/debian bullseye/mongodb-org/6.0 main" | tee /etc/apt/sources.list.d/mongodb-org-6.0.list

# # Install MongoDB
# RUN apt-get update && apt-get install -y mongodb-org

# # Start MongoDB in the background
# CMD mongod & node app.js


FROM node:alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8000
CMD [ "node", "app.js" ]


# #Each instruction in this file creates a new layer
# #Here we are getting our node as Base image
# FROM node:latest
# #setting working directory in the container
# WORKDIR /app
# #copying the package.json file(contains dependencies) from project source dir to container dir
# COPY package.json ./
# # installing the dependencies into the container
# RUN npm install
# #copying the package.json file(contains dependencies) from project source dir to container dir
# COPY . .
# #container exposed network port number
# EXPOSE 8000
# #command to run within the container
# CMD ['node','app.js']
