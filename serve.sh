#!/usr/bin/env bash

set -eux

export PERL5LIB=$PWD/lib:$PWD/local/lib/perl5${PERL5LIB:+:$PERL5LIB}
export PATH=$PWD/local/bin${PATH:+:$PATH}
source .env
export PUBLISH_BRANCH
export SITE_BRANCH

cd site
statocles daemon
