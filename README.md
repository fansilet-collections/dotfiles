# Ansible Collection - mrbrandao.dotfiles

This collection has a set of roles and ansible plugins to install and configure
multiple applications used for a development desktop.

It started by automating the installation of my `dotfiles` and evolved to an full
automated and customized way of keeping `dotfiles` organized and maintained as a
code.

Here you'll find settings and configurations to create or sync your dotfiles
across multiple machines.

Tools are still being added to the collection, but here's a few list of what's
is already supported: `vim`, `tmux`, `bash`, `gpg`, `gnome` many more to come.  


This collection is maintained by [Fansible
Collection](https://github.com/fansible-collections), join us to add more cool
stuff in our ansible collections. :wink:

#### Installing:  

* Manual install from git URI:  
```bash
ansible-galaxy collection install mrbrandao.dotfiles
```
  
* Installing via requirements from galaxy:  

```yaml
# requirements.yml
---
collections:
  - name: mrbrandao.dotfiles
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
git clone --recurse-submodule https://github.com/fansible-collections/dotfiles.git
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

Authors and Information
------------------------

[Fansible Collection](https://github.com/fansible-collections)  
Igor Brandão <@mrbrandao>
