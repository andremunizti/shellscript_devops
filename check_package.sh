#!/bin/bash

# Set the package name
package=$1

# Check if the package is installed
if dpkg -s $package > /dev/null 2>&1; then
    echo "$package is installed."
else
    echo "$package is not installed."
fi
