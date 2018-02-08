FROM alpine:latest

# Install mongodb
RUN echo 'http://dl-3.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories
RUN apk upgrade --update
RUN apk add --no-cache mongodb

# Create volume
VOLUME ["/data/db"]

ADD mongod.conf /etc/mongod.conf

# Create DB and Collection
EXPOSE 27018
CMD ["mongod","--config","/etc/mongod.conf"]
