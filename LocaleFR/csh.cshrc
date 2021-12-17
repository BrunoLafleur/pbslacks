# For root users, ensure that /usr/local/sbin, /usr/sbin, and /sbin are in
# the $PATH.  Some means of connection don't add these by default (sshd comes
# to mind).
if ( "`id -u`" == "0" ) then
  echo $PATH | grep /usr/local/sbin >& /dev/null
  if ( $status != 0 ) then
    setenv PATH /usr/local/sbin:/usr/sbin:/sbin:$PATH
  endif
endif

alias cdl 'cd \!*;ls'
alias ll 'ls -l \!*'
alias lt 'ls -lt \!*'
alias lnew 'ls -lt \!*| head -20'
alias h history
alias rmed "find . '(' -name '*%' -o -name '*~' -o -name '#*#' -o -name '.??*%' \\
    -o -name '.??*~' -o -name '.??*.swp' -o -name '.#*#' -o -name 'core' \\
    -o -name 'gmon.out' ')' -user $USER -type f -exec \rm -f '{}' \;"
