FROM nginx:alpine
COPY ./index.html /usr/share/nginx/html
LABEL maintainer = "usha.mandya@docker.com"
