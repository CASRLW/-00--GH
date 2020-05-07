# use a node base image
FROM node:7-onbuild

# set maintainer
LABEL maintainer "cas2.0@protonmail.com"

# set a health check
HEALTHCHECK --interval=10s \
            --timeout=10s \
            CMD curl -f http://127.0.0.1:8000 || exit 1

# tell docker what port to expose
EXPOSE 8000
