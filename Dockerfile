FROM node:10-alpine as builder

RUN apk --update --no-cache add asciidoctor
RUN wget https://github.com/gohugoio/hugo/releases/download/v0.48/hugo_0.48_Linux-64bit.tar.gz && tar xfvz *.gz && rm *.gz && mv hugo /usr/local/bin

RUN hugo version
