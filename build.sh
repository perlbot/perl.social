#!/usr/bin/env bash

set -eux

mkdir rendered/ || echo Rendered directory exists

carton exec 'bash -c "cd site; statocles build && statocles deploy"'
