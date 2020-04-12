# gh - The GitHub CLI tool

`gh` is GitHub on the command line, and it's now available in beta. It brings pull requests, issues, and other GitHub concepts to
the terminal next to where you are already working with `git` and your code.

![screenshot](https://user-images.githubusercontent.com/98482/73286699-9f922180-41bd-11ea-87c9-60a2d31fd0ac.png)

## We need your feedback

GitHub CLI is currently early in its development, and we're hoping to get feedback from people using it.

If you've installed and used `gh`, we'd love for you to take a short survey here (no more than five minutes): https://forms.gle/umxd3h31c7aMQFKG7

And if you spot bugs or have features that you'd really like to see in `gh`, please check out the [contributing page][]

## Usage

- `gh pr [status, list, view, checkout, create]`
- `gh issue [status, list, view, create]`
- `gh help`

Check out the [docs][] for more information.


## Comparison with hub

For many years, [hub][] was the unofficial GitHub CLI tool. `gh` is a new project for us to explore
what an official GitHub CLI tool can look like with a fundamentally different design. While both
tools bring GitHub to the terminal, `hub` behaves as a proxy to `git` and `gh` is a standalone
tool.


## Installation and Upgrading

### macOS

Install: `brew install github/gh/gh`

Upgrade: `brew update && brew upgrade gh`

### Windows

`gh` is available via [scoop][]:

Install:

```
scoop bucket add github-gh https://github.com/cli/scoop-gh.git
scoop install gh
```

Upgrade: `scoop update gh`

Signed MSI installers are also available on the [releases page][].

### Debian/Ubuntu Linux

Install and upgrade:

1. Download the `.deb` file from the [releases page][]
2. `sudo apt install git && sudo dpkg -i gh_*_linux_amd64.deb`  install the downloaded file

### Fedora/Centos Linux

Install and upgrade:

1. Download the `.rpm` file from the [releases page][]
2. `sudo yum localinstall gh_*_linux_amd64.rpm` install the downloaded file

### Other platforms

Install a prebuilt binary from the [releases page][]

### [Build from source](/source.md)

<!-- TODO eventually we'll have https://cli.github.com/manual -->
[docs]: https://cli.github.io/cli/gh
[scoop]: https://scoop.sh
[releases page]: https://github.com/cli/cli/releases/latest
[hub]: https://github.com/github/hub
[contributing page]: https://github.com/cli/cli/blob/master/.github/CONTRIBUTING.md
