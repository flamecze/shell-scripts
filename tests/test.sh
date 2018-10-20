#!/bin/bash

docker build -t shell-scripts .
docker run --rm --name shell-scripts-test -it --mount type=bind,source="$(pwd)"/../scripts,target=/home/test/scripts shell-scripts bash
