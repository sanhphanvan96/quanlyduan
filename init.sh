#!/bin/bash

# just keep going if we don't have anything to install
set +e

# export secret before anything
source /app/.profile.d/ruby.sh

# setup database
rails db:migrate
rails db:setup

set -e

exec "$@"
