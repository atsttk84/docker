#!/bin/bash -eux

dockerComposeVersion=$(curl -s https://github.com/docker/compose/releases/latest | sed -e 's|.*tag/\([0-9.]*\)".*|\1|')
curl -L https://github.com/docker/compose/releases/download/$dockerComposeVersion/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose

echo "alias fig='docker-compose'" >> /etc/profile.d/alias.sh
