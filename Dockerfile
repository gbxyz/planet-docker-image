FROM alpine:latest

RUN apk -qqq update

RUN apk -qqq add gcc musl-dev make

ADD http://hjemmesider.diku.dk/~torbenm/Planet/planet.zip /tmp/planet/

WORKDIR /tmp/planet

RUN unzip planet.zip

RUN make planet

RUN install -m 0755 planet /usr/local/bin

RUN mkdir /usr/local/share/planet

RUN cp -pr Manual.pdf ReadMe *.rgb *.map *.col /usr/local/share/planet/

RUN rm -rf /tmp/planet

RUN apk -qqq del gcc musl-dev make

WORKDIR /usr/local/share/planet

ENTRYPOINT ["planet"]
