alias ll='ls -l'
alias lt='ls -lt'
alias h=history

cdl () {
    if [ ! -z "$1" ] ;then cd "$1"
    else cd ;fi
    ls
}

lnew () {
    if [ ! -z "$1" ] ;then
	ls -lt "$1"| head -20
    else
	ls -lt| head -20
    fi
}
