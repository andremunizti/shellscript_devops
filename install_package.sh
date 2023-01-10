#!/bin/bash

# Set the package name and download URL
package=package.deb
url=https://example.com/package.deb

# Download the package
wget $url

# Install the package
dpkg -i $package

# Remove the package file
rm $package
