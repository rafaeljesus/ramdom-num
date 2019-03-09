#!/bin/bash

set -e

rm -f dist/*

CGO_ENABLED=0 go build -ldflags "-s -w" -o "dist/random-num" github.com/rafaeljesus/random-num

OS_PLATFORM_ARG=(linux darwin)
OS_ARCH_ARG=(amd64)
for OS in ${OS_PLATFORM_ARG[@]}; do
  for ARCH in ${OS_ARCH_ARG[@]}; do
    echo "Building binaries for $OS/$ARCH..."
    GOARCH=$ARCH GOOS=$OS CGO_ENABLED=0 go build -ldflags "-s -w" -o "dist/random-num_$OS-$ARCH" github.com/rafaeljesus/random-num
  done
done
