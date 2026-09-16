#!/bin/sh
set -eu
PREFIX="${1:-$HOME/.local}"
mkdir -p "$PREFIX/bin" "$PREFIX/share/applications" "$PREFIX/share/icons/hicolor/scalable/apps"
cp filesystem-constellation "$PREFIX/bin/"
cp filesystem-constellation.svg "$PREFIX/share/icons/hicolor/scalable/apps/"
cp filesystem-constellation.desktop "$PREFIX/share/applications/"
sed -i "s|Exec=.*|Exec=$PREFIX/bin/filesystem-constellation|" "$PREFIX/share/applications/filesystem-constellation.desktop"
printf 'Installed to %s/bin/filesystem-constellation\n' "$PREFIX"
