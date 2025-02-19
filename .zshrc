# export EDITOR=nvim
# Set the shell to zsh
export SHELL=/bin/zsh

setopt inc_append_history

source $HOME/.config/antigen/antigen.zsh
#
antigen use oh-my-zsh
antigen bundle git
antigen bundle 'zsh-users/zsh-syntax-highlighting'
antigen bundle 'zsh-users/zsh-autosuggestions'
antigen bundle 'agkozak/zsh-z'
antigen theme robbyrussell
antigen apply

# use block cursor
ZVM_CURSOR_STYLE_ENABLED=false

## My "Plugins"
sources=(
  'aliases'
  'git'
  'keymaps'
)

for s in "${sources[@]}"; do
  source $HOME/.config/zsh/custom/${s}.zsh
done

# eval "$(starship init zsh)"

export GOPATH="$HOME/go"
export JAVA_HOME="/opt/homebrew/opt/openjdk@17"
# export JDTLS_JVM_ARGS="-javaagent:$HOME/.local/share/java/lombok.jar"
export HISTSIZE=100000000
export SAVEHIST=$HISTSIZE
export HISTFILE=$HOME/.local/zsh_history

# path
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$HOME/.config/bin:$PATH"
export PATH="node_modules/.bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"
export PATH=/opt/homebrew/opt/node@20/bin:$PATH
# export PATH=$HOME/.asdf/shims/:$PATH
export PATH="$PATH:$HOME/.foundry/bin"
export PATH=~/.local/share/solana/install/active_release/bin:$PATH

echo "zsh's config loaded"
