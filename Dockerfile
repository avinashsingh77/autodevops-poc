# Use an official base image
FROM alpine:latest

# Define build arguments
ARG GITHUB_HOST_URL
ARG GIT_REPO
ARG PR_ID

# Set environment variables
ENV GITHUB_HOST_URL=${GITHUB_HOST_URL}
ENV GIT_REPO=${GIT_REPO}
ENV PR_ID=${PR_ID}

# Define a simple command for the container to execute
CMD ["sh", "-c", "echo GIT_REPO=$GIT_REPO && echo PR_ID=$PR_ID"]