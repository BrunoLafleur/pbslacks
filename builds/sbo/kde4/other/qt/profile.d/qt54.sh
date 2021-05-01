#!/bin/sh
# Patch for PATH if QT4 is also there.

#PATH="$PATH:$QT5DIR/bin"
[ "$QT5DIR" != '' ] && PATH=`echo $PATH|sed "s#:$QT5DIR/bin##"`
