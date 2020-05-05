FROM ubuntu

RUN mkdir /app
WORKDIR /app

COPY dist/moleculer-pkg-demo .

CMD ["./moleculer-pkg-demo"]
