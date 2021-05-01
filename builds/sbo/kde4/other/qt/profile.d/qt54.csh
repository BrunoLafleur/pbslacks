#!/bin/csh
# Patch for path if QT4 is also there.

#set path = ( $path $QT5DIR/bin )
if ( $?QT5DIR ) then
    set path = `echo $path|sed "s# $QT5DIR/bin##"`
endif
