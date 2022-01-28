# Add brew to the PATH
[ -f "/opt/homebrew/bin/brew" ] && eval "$(/opt/homebrew/bin/brew shellenv)"

# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Add tab completion for many Bash commands
[ -f $(brew --prefix)/etc/bash_completion ] && source $(brew --prefix)/etc/bash_completion

# fzf : command line fuzzy finder
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

[ -f "${HOME}/.iterm2_shell_integration.bash" ] && source "${HOME}/.iterm2_shell_integration.bash"

# Node version manager
export VOLTA_HOME=$HOME/.volta
export PATH="$VOLTA_HOME/bin:$PATH"
[ -s "$(brew --prefix)/opt/volta/etc/bash_completion.d/volta" ] && source "$(brew --prefix)/opt/volta/etc/bash_completion.d/volta"  # This loads volta bash_completion

# GCloud utility
[ -f "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc" ] && source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc"
[ -f "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc" ] && source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc"

## Keep compatibility with older installation (no brew installation)
[ -f "${HOME}/bin/google-cloud-sdk/path.bash.inc" ] && source "${HOME}/bin/google-cloud-sdk/path.bash.inc"
[ -f "${HOME}/bin/google-cloud-sdk/completion.bash.inc" ] && source "${HOME}/bin/google-cloud-sdk/completion.bash.inc"



# default java version
setjdk 11

[ -s "${SERVIO_LOCATION}/tools/dotfiles/.servio.sh" ] && source "${SERVIO_LOCATION}/tools/dotfiles/.servio.sh"
