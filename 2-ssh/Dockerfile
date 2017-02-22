# --- WIREMOCK ---

FROM anapsix/alpine-java:8
MAINTAINER benitte@ekino.com

RUN apk add --update curl openssh rsync && \
    rm -rf /var/cache/apk/*

# Generate host key
RUN ssh-keygen -A
RUN echo "root:wiremock" | chpasswd

ENV WM_PACKAGE wiremock
ARG WM_VERSION=2.1.11

RUN mkdir /$WM_PACKAGE
WORKDIR /$WM_PACKAGE
RUN curl -sSL -o $WM_PACKAGE.jar https://repo1.maven.org/maven2/com/github/tomakehurst/$WM_PACKAGE-standalone/$WM_VERSION/$WM_PACKAGE-standalone-$WM_VERSION.jar

EXPOSE 8080
EXPOSE 2222

ENTRYPOINT ["/bin/sh", "-c", "/usr/sbin/sshd -o PermitRootLogin=yes && java -jar wiremock.jar"]