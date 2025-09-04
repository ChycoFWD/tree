#!/bin/bash

# This script clones, builds, and installs the 'tree' command-line utility.

set -e

# Clone the repository
git clone https://github.com/peteretelej/tree.git
cd tree

# Build the project in release mode
cargo build --release

# Install the binary to /usr/local/bin
sudo cp target/release/tree /usr/local/bin/

echo "tree has been successfully installed."
