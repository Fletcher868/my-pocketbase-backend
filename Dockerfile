# Start from a minimal Linux image
FROM alpine:3.18

# Set the working directory inside the container
WORKDIR /app

# Copy the PocketBase binary and the start script from your repo
COPY pocketbase .
COPY start.sh .

# Ensure the start script is executable (good practice, though chmod is in the script)
RUN chmod +x ./start.sh

# PocketBase will run on port 8080 inside the container
EXPOSE 8080

# The command to run when the container starts
CMD ["/bin/sh", "./start.sh"]
