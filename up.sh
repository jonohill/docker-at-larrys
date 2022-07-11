#!/usr/bin/env bash

set -e

PUBLIC_IP="$(curl -s https://api.ipify.org)"
export PUBLIC_IP

git pull
./compose up -d cloudflare_ssh || true
./compose up --remove-orphans -d
