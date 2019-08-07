# kubectl-prettifier-script
 A kubectl wrapper applying syntax highlighting to kubectl output.

## Installation

Requires [`highlight`][1].

Edit your shell resource file (`~/.bashrc`, `~/.zshrc`, `~/.shrc` etc):


```sh
# Set location or hardcode below
export KUBECTL_PRETTIFIER=~/bin/kubectl-prettifier-script.sh

# Set alias
alias kubectl="kubectl-wrapper"

function kubectl-wrapper () {
  `$KUBECTL_PRETTIFIER "$@"`
}

```

[1]: http://manpages.ubuntu.com/manpages/cosmic/man1/highlight.1.html
