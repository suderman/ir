#!/bin/sh

# 2013 Jon Suderman
# https://github.com/suderman/ir/

# Open a terminal and run this command:
# curl https://raw.github.com/suderman/ir/master/install.sh | sh

# Ensure /usr/local/bin exists
if [ ! -d "/usr/local" ]; then
  sudo mkdir -p /usr/local/bin
  sudo chown `whoami`:admin /usr/{local,local/bin}
fi

# Download ir into /usr/local/bin
curl https://raw.github.com/suderman/ir/master/symlink -o /usr/local/bin/ir

# Set permissions
chmod +x /usr/local/bin/ir

echo "Installed ir to /usr/local/bin"
