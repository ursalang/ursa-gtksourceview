# GNOME text editor/Gtksourceview support for Ursa

© 2023 Reuben Thomas <rrt@sc3d.org>

Distributed under the MIT license.

This project consists of two files that add support for the [Ursa
programming language](https://ursalang.github.io) to the [GNOME Text
Editor](https://apps.gnome.org/TextEditor),
[Gedit](https://wiki.gnome.org/Apps/Gedit), and other programs that use
Gtksourceview.

## Installation

Two files are provided:

* `ursa.xml` defines the `text/x-ursa` MIME type
* `ursa.lang` defines syntax highlighting patterns for Gtksourceview, the library used by the GNOME Text Editor, Gedit, and other programs.

You need to identify two directories. The following settings are likely to
be correct for most systems at the time of writing. Note in particular that
the version number “4” for Gtksourceview is likely to change with time!

```sh
XDG_MIME_DIR=$HOME/.local/share/mime
GTK_LANG_DIR=$HOME/.local/share/gtksourceview-4/language-specs
```

Then, run the following commands:

```sh
mkdir -p $GTK_LANG_DIR
cp ursa.lang $GTK_LANG_DIR
cp ursa.xml $XDG_MIME_DIR/packages/
update-mime-database $XDG_MIME_DIR
```
