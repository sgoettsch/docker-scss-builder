FROM google/dart@sha256:18bddbade58e5109a38a7bcd44839bbd29341ea3f091debf936a84c6da625bc7

# renovate: datasource=github-tags depName=sass/dart-sass versioning=semver
ARG DART_SASS_VERSION=1.89.2
ARG DART_SASS_TAR=dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz
ARG DART_SASS_URL=https://github.com/sass/dart-sass/releases/download/${DART_SASS_VERSION}/${DART_SASS_TAR}

ADD ${DART_SASS_URL} /opt/
RUN cd /opt/ && tar -xzf ${DART_SASS_TAR} && rm ${DART_SASS_TAR}
WORKDIR /opt/dart-sass

ENTRYPOINT ["/opt/dart-sass/sass", "/sass:/css"]