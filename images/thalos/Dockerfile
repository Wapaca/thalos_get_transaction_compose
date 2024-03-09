# Use the official Ubuntu 22.04 image as the base image
FROM ubuntu:22.04

# Set the working directory inside the container
WORKDIR /app

# Update package lists and install wget
RUN apt-get update && apt-get install -y wget

# Download and extract Thalos
RUN wget https://github.com/eosswedenorg/thalos/releases/download/v1.1.0/thalos-1.1.0-linux-amd64.tar.gz \
    && tar xvf thalos-1.1.0-linux-amd64.tar.gz \
    && rm thalos-1.1.0-linux-amd64.tar.gz

COPY config.yml .
COPY start.sh .

# Make start.sh executable
RUN chmod +x start.sh

# Define the command to run when the container starts
CMD [ "./start.sh" ]