# sparanoid/restbase

[RESTBase](https://github.com/wikimedia/restbase) Docker image.

This image is inspired by [ubc/restbase-docker](https://github.com/ubc/restbase-docker) with full customizable config support.

## Usage

```bash
# Docker Hub
docker run --rm -p 7231:7231 -v $(pwd)/config-example.com.yaml:/usr/local/lib/node_modules/restbase/config.yaml --name restbase sparanoid/restbase:latest

# GitHub Container Registry
docker run --rm -p 7231:7231 -v $(pwd)/config-example.com.yaml:/usr/local/lib/node_modules/restbase/config.yaml --name restbase ghcr.io/sparanoid/restbase:latest
```
