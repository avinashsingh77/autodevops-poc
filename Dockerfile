# Use an official base image
FROM alpine:latest

# Define build arguments
ARG GIT_REPO_URL
ARG PR_ID

# Set environment variables
ENV GIT_REPO_URL=${GIT_REPO_URL}
ENV PR_ID=${PR_ID}

# Define a simple command for the container to execute
CMD ["sh", "-c", "echo GIT_REPO=$GIT_REPO_URL && echo PR_ID=$PR_ID"]