# 
#   ██████╗██████╗    Carsten Brueggenolte
#  ██╔════╝██╔══██╗   https://zn80.net
#  ██║     ██████╔╝   https://github.com/cblte
#  ██║     ██╔══██╗
#  ╚██████╗██████╔╝
#   ╚═════╝╚═════╝ 
#                 
# My .zshrc config. Not much to see here. 
#
# This config has been update to work 
# with my macOS Catalina installation
#
# Please see README.md for instructions on how to 
# install the used plugins
# -------------------------------------------------------------------

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

### EXPORT
export TERM="xterm-256color"                      # getting proper colors
export HISTORY_IGNORE="(ls|cd|pwd|exit|sudo reboot|history|cd -|cd ..)"


## ZSH Plugins
# Install them with homebrew
# brew install zsh-syntax-highlighting zsh-autosuggestions homebrew/cask-fonts/font-menlo-for-powerline
#
# enable auto-suggestions based on the history
if [ -f /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    # change suggestion color
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#999'
fi
# enable syntax-highlighting
if [ -f /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

## Set VI mode
# Comment this line out to enable default emacs-like bindings
bindkey -v

## Path Section
if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/Applications" ] ;
  then PATH="$HOME/Applications:$PATH"
fi

## Options section
# setopt autocd                                                   # if only directory path is entered, cd there.
setopt correct                                                  # Auto correct mistakes
setopt nobeep                                                   # No beep
setopt extendedglob                                             # Extended globbing. Allows using regular expressions with *
setopt nocaseglob                                               # Case insensitive globbing
# setopt rcexpandparam                                            # Array expension with parameters
# setopt nocheckjobs                                              # Don't warn about running processes when exiting
setopt numericglobsort                                          # Sort filenames numerically when it makes sense
# setopt appendhistory                                            # Immediately append history instead of overwriting
setopt histignorealldups                                        # If a new command is a duplicate, remove the older one
setopt inc_append_history                                       # Save commands are added to the history immediately, otherwise only when shell exits.
# setopt nonomatch                                                # Hide error message if there is no match for the pattern
setopt notify                                                   # Report the status of background jobs immediately

WORDCHARS=${WORDCHARS//\/[&.;]}                                 # Don't consider certain characters part of the word

## History Configuration
HISTFILE=~/.zhistory
HISTSIZE=10000
SAVEHIST=10000

## ----- ALIAS Section -----
alias vim="nvim"
alias cp="cp -i"                                                # Confirm before overwriting something
alias df='df -h'                                                # Human-readable sizes
alias free='free -m'                                            # Show sizes in MB
alias gitu='git add . && git commit && git push'

alias ls='ls -alG' # my preferred listing
alias la='ls -aG'  # all files and dirs
alias ll='ls -lG'  # long format
alias lt='ls -aTG' # tree listing

# Changing "ls" to "exa" if available
if [[ -e /usr/local/bin/exa ]]; then
  alias ls='exa -al --color=always --group-directories-first' # my preferred listing
  alias la='exa -a --color=always --group-directories-first'  # all files and dirs
  alias ll='exa -l --color=always --group-directories-first'  # long format
  alias lt='exa -aT --color=always --group-directories-first' # tree listing
fi

# youtube-dl
alias yta-aac="youtube-dl --extract-audio --audio-format aac "
alias yta-best="youtube-dl --extract-audio --audio-format best "
alias yta-flac="youtube-dl --extract-audio --audio-format flac "
alias yta-m4a="youtube-dl --extract-audio --audio-format m4a "
alias yta-mp3="youtube-dl --extract-audio --audio-format mp3 "
alias yta-opus="youtube-dl --extract-audio --audio-format opus "
alias yta-vorbis="youtube-dl --extract-audio --audio-format vorbis "
alias yta-wav="youtube-dl --extract-audio --audio-format wav "
alias ytv-best="youtube-dl -f bestvideo+bestaudio "

alias dotfiles='/usr/bin/git --git-dir=/Users/cblte/.dotfiles/ --work-tree=/Users/cblte'

## Function section

# open manpages in a seperate window
function xmanpage() { open x-man-page://$@ ; }


## Prompt Section
# Enabling and setting git info var to be used in prompt config.
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
# This line obtains information from the vcs.
zstyle ':vcs_info:git*' formats "- (%b) "
precmd() {
    vcs_info
}

# Enable substitution in the prompt.
setopt prompt_subst

# Config for the prompt. PS1 synonym.
prompt='%2/ ${vcs_info_msg_0_}> '


## Prompt section
## install spaceship and starship through brew first!
## only uncommment one. Either starship or spaceship!

# Source the awesome starship.rs prompt
#eval "$(starship init zsh)"

# Source the awesome https://spaceship-prompt.sh/ prompt
autoload -U promptinit; promptinit
prompt spaceship
