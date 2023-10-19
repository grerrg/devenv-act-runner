# devenv-act-runner
a gitea act runner based on nix, node and devenv.

## motivation

create a docker container where [devenv](https://devenv.sh/) is installed for gitea act runners and gitea actions to be run on.

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
