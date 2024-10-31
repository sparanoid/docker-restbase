# Docker RESTBase

> [!IMPORTANT]
> In MediaWiki 1.35 Parsoid/PHP is included in the bundle and loaded automatically by Visual Editor. No configuration necessary for MediaWiki 1.35 and later. You may not need this anymore.

[RESTBase](https://github.com/wikimedia/restbase) Docker image.

- [Docker Hub](https://hub.docker.com/r/sparanoid/restbase)
- [ghcr.io](https://github.com/users/sparanoid/packages/container/package/restbase)

This image is inspired by [ubc/restbase-docker](https://github.com/ubc/restbase-docker) with full customizable config support.

## Usage

```bash
# Docker Hub
docker run --rm -p 7231:7231 -v $(pwd)/config-example.com.yaml:/usr/local/lib/node_modules/restbase/config.yaml --name restbase sparanoid/restbase:latest

# GitHub Container Registry
docker run --rm -p 7231:7231 -v $(pwd)/config-example.com.yaml:/usr/local/lib/node_modules/restbase/config.yaml --name restbase ghcr.io/sparanoid/restbase:latest
```

## License

Apache-2.0
