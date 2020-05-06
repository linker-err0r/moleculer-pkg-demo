FROM node:12

RUN mkdir /build
WORKDIR /build

COPY . .
RUN npm ci
RUN npm run bundle

FROM ubuntu:18.04

ENV NODE_ENV=production
ENV SERVICEDIR=/snapshot/build/services

RUN mkdir /app
WORKDIR /app

COPY --from=0 /build/dist/app .

CMD ["./app"]
