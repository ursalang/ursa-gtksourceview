# GNOME text editor/GtkSourceView support for Ursa

© 2023-2024 Reuben Thomas <rrt@sc3d.org>

Distributed under the MIT license.

This project consists of two files that add support for the [Ursa
programming language](https://ursalang.github.io) to the [GNOME Text
Editor](https://apps.gnome.org/TextEditor),
[Gedit](https://wiki.gnome.org/Apps/Gedit), and other programs that use
GtkSourceView.

## Installation

Two files are provided:

* `ursalang-ursa.xml` defines the `text/x-ursa` MIME type
* `ursa.lang` defines syntax highlighting patterns for GtkSourceView, the library used by the GNOME Text Editor, Gedit, and other programs.

You need to identify the directory where GtkSourceView language files go. The following setting is likely to be correct for most systems at the time of writing. Note in particular that the version number “4” for GtkSourceview is likely to change with time!

```sh
GTK_LANG_DIR=$HOME/.local/share/gtksourceview-4/language-specs
```

Then, run the following command:

```sh
./install.sh
```
