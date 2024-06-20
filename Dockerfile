FROM alpine/git:latest

ARG PR_ID
ARG PROJECT_ID


WORKDIR /opt

COPY . ./