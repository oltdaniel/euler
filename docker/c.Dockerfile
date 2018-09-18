FROM alpine

RUN apk add --no-cache clang build-base

WORKDIR /app

CMD clang -o solution solution.c && ./solution
