#!/bin/bash

# Copyright 2020 Rigetti & Co, Inc.

set -o errexit
set -o nounset
set -o pipefail

# docker run rigetti/quilc in server mode (default ports)
docker pull rigetti/quilc
docker run --rm -it -p 5555:5555 rigetti/quilc -R -p 5555 -P
