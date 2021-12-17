alias h=history

cdl () {
    if [ ! -z "$1" ] ;then cd "$1"
    else cd ;fi
    ls
}

lnew () {
    ls -lt "$@"| head -20
}

ll () {
    ls -l "$@"
}

lt () {
    ls -lt "$@"
}

ltr () {
    ls -ltr "$@"
}
