# Developer Documentation

## Dev Containers

### Overview

Official VS Code documentation on developing inside containers: : [Developing inside a Container](https://code.visualstudio.com/docs/devcontainers/containers).
The Development Container Specification can be found [here](https://containers.dev/implementors/spec/).

The following terraform feature is used (Terraform, tflint, and TFGrunt (terraform))[https://github.com/devcontainers/features/blob/main/src/terraform/README.md].

### Getting Started

1. Prerequisites have been met as outlined in the [Installation Guide](https://code.visualstudio.com/docs/devcontainers/containers#_installation) for containers

2. Adjust the version specified in the [devcontainer.json](./.devcontainer/devcontainer.json) file to match the release you want to test.

3. Selecting the Dev Containers: Rebuild and open in container... command from the Command Palette (F1).

#### Custom Code

Custom code has been added to [install.sh](./.devcontainer/library-scripts/install.sh) to enable the use of prerelease images.

Functions:

- find_version_from_terraform_releases

## Releases

- [Terraform Releases](https://releases.hashicorp.com/terraform/)

## Issues

- [Addition of "extends" top level property to enable simple configuration inheritance](https://github.com/devcontainers/spec/issues/22)
