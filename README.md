## Ostree Native Container for my Personal Laptop
The whole idea of this repository is to have a way to easily deploy my personal laptop. Tools for development are placed in [another toolbox repository](https://github.com/karuboniru/toolbox_daily/)

[![Container Build](https://github.com/karuboniru/ostree-container/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/karuboniru/ostree-container/actions/workflows/docker-publish.yml)

## How to use it
... If you are willing to use the container ...
```
rpm-ostree reset # https://github.com/fedora-silverblue/issue-tracker/issues/528
rpm-ostree rebase ostree-unverified-registry:quay.io/karuboniru/ostree-container:master
```

## Refs
 - https://fedoraproject.org/wiki/Changes/OstreeNativeContainerStable
 - https://fedoraproject.org/wiki/Changes/OstreeNativeContainer
 - https://coreos.github.io/rpm-ostree/container/