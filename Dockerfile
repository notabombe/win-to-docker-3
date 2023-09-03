# escape=`
FROM mcr.microsoft.com/windows:20H2

# Set environment variables
ENV ContainerName=windows11container
ENV DockerImageName=windows11image
ENV DockerComposeServiceName=windows11service
ENV DockerNetwork=windows11network
ENV VolumeMounts=C:/mounts
ENV Ports=8080

# Create a directory to hold the app
RUN mkdir C:\app

# Copy the app to the container
COPY . C:\app

# Set the working directory
WORKDIR C:\app

# Expose the port the app runs on
EXPOSE 8080

# Start the app
CMD ["start_container.sh"]