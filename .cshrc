#set prompt = "%{^[[1;34m%}%n%{^[[1;30m%}@%{^[[1;30m%}%m%~%{^[[0m%}>"
set prompt = "%B%m%b [%/] -%n- "

# env
# Locale
setenv  LANG       zh_TW.UTF-8
setenv  LC_CTYPE   zh_TW.UTF-8
setenv  LC_TIME    C


# Control key
if ( $?tcsh && $?prompt) then
        bindkey -k up history-search-backward
        bindkey -k down history-search-forward
        bindkey "^[[1~" beginning-of-line
        bindkey "^[[7~" beginning-of-line
        bindkey "^[[2~" overwrite-mode
        bindkey "^[[8~" end-of-line
        bindkey "^[[4~" end-of-line
        bindkey "^[[3~" delete-char
endif

# Alias
#alias ls ls -FG
alias ll ls -la
alias rm rm -i
alias gcc32 'gcc -m32 -march=i686 -mmmx -msse -msse2 -mfancy-math-387 -DCOMPAT_32BIT -L/usr/lib32 -B/usr/lib32'
alias gcc 'gcc -gdwarf-2 -gstrict-dwarf'
alias setlocale_utf8 "setenv LC_ALL zh_TW.UTF-8 && setenv LANG zh_TW.UTF-8"
alias setlocale_big5 "setenv LC_ALL "" && setenv LANG zh_TW.Big5 && setenv LC_CTYPE en_US.ISO8859-1"
alias tmux "tmux -2"

if ( -x /usr/local/bin/gnuls ) then
    alias ls 'gnuls -F --show-control-chars --color=auto'
endif

# Set
set path = (/sbin /bin /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /usr/games /usr/X11R6/bin $HOME/bin)

set autolist
set notify
set noclobber
setenv CLASSPATH ./
setenv EDITOR vim

unalias postcmd
