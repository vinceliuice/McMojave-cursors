#! /usr/bin/env bash

ROOT_UID=0
DEST_DIR=

# Destination directory
if [ "$UID" -eq "$ROOT_UID" ]; then
  DEST_DIR="/usr/share/icons"
else
  DEST_DIR="$HOME/.local/share/icons"
fi

if [ -d "$DEST_DIR/McMojave-cursors" ]; then
  rm -r "$DEST_DIR/McMojave-cursors"
fi

mkdir -p $DEST_DIR && cp -pr dist $DEST_DIR/McMojave-cursors

echo "Finished..."

