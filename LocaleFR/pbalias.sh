alias ll='ls -l'
alias h=history

cdl () {
    if [ ! -z "$1" ] ;then cd "$1"
    else cd ;fi
    ls
}
