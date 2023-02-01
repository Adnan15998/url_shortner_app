#Each instruction in this file creates a new layer
#Here we are getting our node as Base image
FROM node:latest
#setting working directory in the container
WORKDIR /app
#copying the package.json file(contains dependencies) from project source dir to container dir
COPY package.json ./
# installing the dependencies into the container
RUN npm install
#copying the package.json file(contains dependencies) from project source dir to container dir
COPY . .
#container exposed network port number
EXPOSE 8000
#command to run within the container
CMD ['node','app.js']
