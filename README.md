Sauron
====

## Introduction

This project is a set for CI and Monitoring.

## Requirements

* [VirtualBox](https://www.virtualbox.org) 
* [Vagrant](http://vagrantup.com)

## Setup

    $ git clone --recursive https://github.com/acfreitas/sauron.git
    $ cd sauron
    $ vagrant up

P.S. Use git clone --recursive for clone [git submodules](http://git-scm.com/docs/git-submodule).

## The Box contains

- [Ubuntu 12.04 LTS 32-bit](https://atlas.hashicorp.com/hashicorp/boxes/precise32)
- [Jenkins](http://jenkins-ci.org/)
- [PostgreSQL](http://www.postgresql.org/)

## Dependencies

- [opscode-cookbooks/apt](https://github.com/opscode-cookbooks/apt)
- [opscode-cookbooks/openssl](https://github.com/opscode-cookbooks/openssl)
- [opscode-cookbooks/build-essential](https://github.com/opscode-cookbooks/build-essential)
- [opscode-cookbooks/jenkins](https://github.com/opscode-cookbooks/jenkins)
- [opscode-cookbooks/yum](https://github.com/opscode-cookbooks/yum)
- [opscode-cookbooks/yum-epel](https://github.com/opscode-cookbooks/yum-epel)
- [hw-cookbooks/runit](https://github.com/hw-cookbooks/runit)
- [hw-cookbooks/postgresql](https://github.com/hw-cookbooks/postgresql)
- [sethvargo/chef-sugar](https://github.com/sethvargo/chef-sugar)

## More information
Check the [Vagrant documentation](http://vagrantup.com/v1/docs/index.html) and [Chef Solo documentation](https://docs.chef.io/chef_solo.html)