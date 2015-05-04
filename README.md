# ekino/wiremock

[![Circle CI](https://circleci.com/gh/ekino/docker-wiremock.svg?style=svg)](https://circleci.com/gh/ekino/docker-wiremock)

## Description

Docker image to easily start a [wiremock](http://wiremock.org/) container

## Usage

#### Start

Start a server with our simple `Hello World` example mapping

```bash
# get the hello world assets
git clone https://github.com/ekino/docker-wiremock.git
cd docker-wiremock

# start the server
docker run -d \
  -p 80:8080 \
  -v $(readlink -f files):/wiremock/__files \
  -v $(readlink -f mappings):/wiremock/mappings \
  ekino/wiremock

# use it
curl http://127.0.0.1/hello
```

