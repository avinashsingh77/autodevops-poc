# Use an official base image
FROM alpine:latest

# Define build arguments
ARG GIT_REPO
ARG PR_ID

# Set environment variables
ENV GIT_REPO=${GIT_REPO}
ENV PR_ID=${PR_ID}

# Define a simple command for the container to execute
CMD ["sh", "-c", "echo GIT_REPO=$GIT_REPO && echo PR_ID=$PR_ID"]