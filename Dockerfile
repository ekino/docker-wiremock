# --- WIREMOCK ---

FROM ekino/java7:base
MAINTAINER fronton@ekino.com

ENV WM_PACKAGE wiremock
ENV WM_VERSION 2.1.11

RUN mkdir /$WM_PACKAGE
WORKDIR /$WM_PACKAGE
RUN curl -sSL -o $WM_PACKAGE.jar https://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-standalone/$WM_VERSION/$WM_PACKAGE-standalone-$WM_VERSION.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","wiremock.jar"]
