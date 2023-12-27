# devenv-act-runner
a gitea act runner based on nix, node and devenv.

## motivation

I'm self-hosting a Gitea instance on NixOS.
With the newly added [act runner](https://gitea.com/gitea/act_runner), a fork of [act](https://github.com/nektos/act), one can run GitHub Actions locally.
Since I'm using [devenv](https://devenv.sh/) and Nix for my builds in nearly all my repositories, I need a Nix executable in a CI runner.
Unfortunately, the official installation methods for installing Nix on `ubuntu-latest` don't work on a Gitea Act Runner.

## background

the official installation method for devenv for github actions doesn't work for gitea.
```prepare-job-environment-for-devenv.yaml
steps:
- uses: actions/checkout@v4
- uses: cachix/install-nix-action@v23
- uses: cachix/cachix-action@v12
  with:
    name: devenv
- name: Install devenv.sh
  run: nix profile install tarball+https://install.devenv.sh/latest
```
