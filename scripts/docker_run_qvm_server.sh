#!/bin/bash

# Copyright 2020 Rigetti & Co, Inc.

set -o errexit
set -o nounset
set -o pipefail

# docker run rigetti/qvm in server mode (default ports)
docker pull rigetti/qvm
docker run --rm -it -p 5000:5000 rigetti/qvm -p 5000 -S
