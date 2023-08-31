FROM ubuntu:latest

# Set environment variables to avoid interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Update the package list and install MySQL Server and MySQL Client
RUN apt-get update && \
    apt-get install -y mysql-server mysql-client && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

RUN sudo apt-get install chown

RUN export PATH=$PATH:/usr/bin

# Expose the default MySQL port
EXPOSE 3306

# Copy the SQL script
COPY . /usr/src/myapp

RUN chown mysql:mysql /proc

RUN mount proc /proc

# Set the working directory
WORKDIR /usr/src/myapp

RUN chmod +x createDatabase.sh

# Run the custom script to create the database
ENTRYPOINT ["./createDatabase.sh"]