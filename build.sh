#!/bin/bash

NAME="mihomo"
BINDIR="bin"
GOBUILD="CGO_ENABLED=0 go build -tags with_gvisor -trimpath -ldflags '-X \"github.com/metacubex/mihomo/constant.Version=${VERSION}\" \
                -X \"github.com/metacubex/mihomo/constant.BuildTime=${BUILDTIME}\" \
                -w -s -buildid='"

GOOS="windows"
#GOARCH="amd64"
#GOAMD64="v3"
GOARCH="686"

# Ensure output directory exists
mkdir -p "${BINDIR}"

# Run the build
eval "${GOBUILD} -o ${BINDIR}/${NAME}-${GOOS}-${GOARCH}.exe"
