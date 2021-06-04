#!/usr/bin/env bash

set -eux

mkdir rendered/ || echo Rendered directory exists

export PERL5LIB=$PWD/lib:$PWD/local/lib/perl5${PERL5LIB:+:$PERL5LIB}
export PATH=$PWD/local/bin${PATH:+:$PATH}

cd site
statocles build
