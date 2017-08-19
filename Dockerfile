FROM openjdk:jre-alpine

RUN apk add --update openssl && \
    rm -rf /var/cache/apk/*
    
ADD keystore /
ADD entrypoint.sh /

ENV SRC_PATH_CRT /src/tls.crt
ENV SRC_PATH_KEY /src/tls.key

ENV TARGET_PATH_KEYSTORE /target/keystore
ENV TARGET_PASSWORD password
ENV TARGET_ALIAS key

ENTRYPOINT ["/entrypoint.sh"]
