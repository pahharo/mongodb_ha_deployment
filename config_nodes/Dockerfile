FROM alpine:latest

# Install mongodb
RUN echo 'http://dl-3.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories
RUN apk upgrade --update
RUN apk add --no-cache mongodb

# Create volume
VOLUME ["/data/configdb"]

ADD mongod.conf /etc/mongod.conf

# Create DB and Collection
EXPOSE 27019
ENTRYPOINT ["mongod","--config","/etc/mongod.conf"]
