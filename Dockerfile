FROM node:8-alpine

RUN apk --no-cache add bash &&\
    export npm_config_cache=$(mktemp -d)  &&\
    npm install -g stylelint@7.11.0 stylelint-config-standard &&\
    rm -rf $npm_config_cache

COPY rootfs /

ENTRYPOINT ["/usr/local/bin/entrypoint"]
CMD ["run_plugin"]
