# --- WIREMOCK ---

FROM anapsix/alpine-java:8
MAINTAINER fronton@ekino.com

RUN apk add --update curl && \
    rm -rf /var/cache/apk/*

ENV WM_PACKAGE wiremock
ARG WM_VERSION=1.55

RUN mkdir /$WM_PACKAGE
WORKDIR /$WM_PACKAGE
RUN curl -sSL -o $WM_PACKAGE.jar https://repo1.maven.org/maven2/com/github/tomakehurst/wiremock/$WM_VERSION/$WM_PACKAGE-$WM_VERSION-standalone.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","wiremock.jar"]