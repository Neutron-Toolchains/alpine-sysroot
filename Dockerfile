# Use the Alpine base image
FROM alpine:edge

# Install the desired packages using the package manager
RUN apk update && apk add --no-cache alpine-sdk

# Create a directory to hold the copied directories
RUN mkdir -p /target

# Copy the directories from the Alpine image to the container
COPY /usr/include /target/usr/include
COPY /usr/lib /target/usr/lib
COPY /usr/bin /target/usr/bin
