#!/usr/bin/env bash

# Add composer to path and install dependencies
echo 'PATH="~/.composer/vendor/bin:$PATH"' | tee -a ~/.bashrc

cd /vagrant

composer install
