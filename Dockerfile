#Each instruction in this file creates a new layer
#Here we are getting our node as Base image
FROM node:12.2.0-alpine
#setting working directory in the container
WORKDIR /app
#copying the package.json file(contains dependencies) from project source dir to container dir
COPY . .
# installing the dependencies into the container
RUN npm install
#container exposed network port number
EXPOSE 8000
#command to run within the container
CMD ['node', 'app.js']
