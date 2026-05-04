#!/bin/sh
# Install Ursa MIME type and GtkSourceView patterns

mkdir -p $GTK_LANG_DIR
cp ursa.lang $GTK_LANG_DIR
xdg-mime install ursalang-ursa.xml
