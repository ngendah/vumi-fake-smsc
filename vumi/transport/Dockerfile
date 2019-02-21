FROM python:2-alpine

ENV BUILD_PACKAGES="build-base"
ENV DEV_PACKAGES="libffi-dev python-dev bzip2-dev libgcrypt-dev openssl-dev zlib-dev tzdata"

RUN apk add --no-cache --update --upgrade --virtual .railsdeps $BUILD_PACKAGES $DEV_PACKAGES

RUN cp /usr/share/zoneinfo/GMT0 /etc/localtime
RUN echo "GMT0" >  /etc/timezone

RUN pip install vumi

COPY config.yaml ./
COPY entrypoint.sh ./

ENTRYPOINT ["sh", "-c", "./entrypoint.sh"]
