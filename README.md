# kubectl-prettifier-script
 A kubectl wrapper applying syntax highlighting to kubectl output.

## Installation

1. Install [`highlight`][1].
1. Create a file named `kubectl-prettify` somewhere on your `$PATH`.
1. Copy the [script contents][2] into the new file.
1. Make the new file executable: `chmod +x /usr/bin/kubectl-prettify`.
1. Verify correct installation with `kubectl plugins list`.
1. (Optional) Alias: `alias kubectl="kubectl prettify"`.


## Supported Systems

| System  | Support |
|---------|:-------:|
| Linux   | ✓ |
| OSX     | ✗ |
| Windows | ✗ |

[1]: http://manpages.ubuntu.com/manpages/cosmic/man1/highlight.1.html
[2]: https://github.com/aklin/kubectl-prettifier-script/blob/master/kubectl-wrapper.sh
