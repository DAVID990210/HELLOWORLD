# Use a Debian base image
FROM debian:latest

# Set build arguments for Git credentials
ARG GIT_USERNAME
ARG GIT_TOKEN

# Install Git and other dependencies
RUN apt-get update && \
    apt-get install -y git

# Clone the repository
RUN git clone https://$GIT_USERNAME:$GIT_TOKEN@github.com/DAVID990210/HELLOWORLD.git /app

# Set the working directory
WORKDIR /app

# Print "Hello, World!" to the console
CMD echo "Hello, World!"
