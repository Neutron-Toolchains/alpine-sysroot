# Use the Alpine base image
FROM alpine:edge

# Install the desired packages using the package manager
RUN apk update && apk add --no-cache alpine-sdk

# Create a directory to hold the copied directories
RUN mkdir -p /target/usr

# Copy the directories from the Alpine image to the container
RUN cp -r /usr/include /target/usr/
RUN cp -r /usr/lib /target/usr/
RUN cp -r /usr/bin /target/usr/
