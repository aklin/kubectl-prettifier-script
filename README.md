# kubectl-prettifier-script
 A kubectl wrapper applying syntax highlighting to kubectl output.

## Installation

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
