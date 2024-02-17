# Ansible Collection - fansilet.dotfiles

This collection has a set of roles and ansible plugins to install and configure
multiple applications used for a development desktop.

It started by automating the installation of my `dotfiles` and evolved to a full
automated and customized way of keeping `dotfiles` organized and maintained as a
code.

Here you'll find settings and configurations to create or sync your dotfiles
across multiple machines.

Some tools are still being added to the collection, but here's a few list of what
is already supported: `vim`, `tmux`, `bash`, `gpg`, `gnome` and many more to come.  


This collection is maintained by [Fansilet
Collection](https://github.com/fansilet-collections), join us to add more cool
stuff in our ansible collections. :wink:

#### Installing:  

* Manual install from git URI:  
```bash
ansible-galaxy collection install fansilet.dotfiles
```
  
* Installing via requirements from galaxy:  

```yaml
# requirements.yml
---
collections:
  - name: fansilet.dotfiles
    version: 0.1.0
```

```bash
ansible-galaxy collection install -r requirements.yml -p collections/
```

#### Building the Collection:  

```bash
ansible-galaxy collection build
```

* Cloning the latest `development` version:  

```bash
git clone --recurse-submodule https://github.com/fansilet-collections/dotfiles.git
```

* Using the [`Makefile`](Makefile):  
_alternativelly is possible to build and push the collection using the
`Makefile` e.g:_  

```bash
# build the collection
make build
```

```bash
# cleaning the built collection
make clean
```

```bash
# publish the collection to ansible-galaxy
make push
```

#### Collection Roles:

TDB

License
-------

[GPL-2.0-or-later](https://spdx.org/licenses/GPL-2.0-or-later.html)

Authors and Acknowledge
------------------------

* [Fansilet Collection](https://github.com/fansilet-collections)  
* [Igor Brandão](https://github.com/mrbrandao) <@mrbrandao>  
