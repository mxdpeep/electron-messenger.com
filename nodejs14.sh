#!/bin/bash
#@author Filip Oščádal <oscadal@gscloud.cz>

dir="$(dirname "$0")"
. $dir"/_includes.sh"

command -v nodejs >/dev/null 2>&1 || {
  info "Installing Nodejs ..."
  sudo snap remove node
  sudo snap install node --channel=14/stable --classic
}
