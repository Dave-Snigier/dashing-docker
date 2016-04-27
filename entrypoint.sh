#!/bin/bash

# check if this is the first time a volume has been attached and init if needed
if [[ ! "$(ls -A /dashing)" ]]; then
    echo "/dashing looks empty. Let's create a new project..."
    dashing new /dashing
fi

# install gems
cd /dashing
bundle install


# Start dashing
exec dashing start