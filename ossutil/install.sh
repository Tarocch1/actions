#!/bin/bash

VERSION="2.1.0"
FOLDER_NAME="ossutil-$VERSION-linux-amd64"
ZIP_NAME="$FOLDER_NAME.zip"
DOWNLOAD_URL="https://gosspublic.alicdn.com/ossutil/v2/$VERSION/$ZIP_NAME"

# Check if ossutil is already installed
if command -v ossutil > /dev/null 2>&1; then
  echo "ossutil is already installed"
  exit 0
fi

echo "ossutil not found, proceeding with installation..."

# Create tmp directory if it doesn't exist
mkdir -p /tmp/ossutil

# Check if the ZIP file already exists in tmp folder
if [ ! -f "/tmp/ossutil/$ZIP_NAME" ]; then
  echo "Downloading ossutil..."
  curl -L $DOWNLOAD_URL -o /tmp/ossutil/$ZIP_NAME
fi

# Extract the ZIP file
cd /tmp/ossutil
unzip -o $ZIP_NAME

# Install ossutil
cp $FOLDER_NAME/ossutil /usr/local/bin/
chmod +x /usr/local/bin/ossutil

echo "ossutil has been installed successfully"
