# docker-archlinux-python

This is "Archlinux container with Python" for myself.

## Run

```console
docker pull paraselene92/archlinux-python:tagname
docker run -i -t --rm -w /home/work -u work -v (pwd):/home/work paraselene92/archlinux-python:tagname
```

Tagname is optional. Default is `latest`. Tagname equals repository tag name(-v). In case repository tag name is "v1.0", tagname is "1.0".

## Description

- Using base image is `paraselene92/archlinux`. This image is my own image.[Repository](https://github.com/paraselene92/docker-archlinux).
- Using AUR helper is `yay`.
- Python 3.8 
- Clone from `dotfile` repository. You can install it in this container.

```console
cd /home/work/dotfiles
./install.sh
```

- Users
  - work: for work
  - aur: for yay install
- Installed packages
  - aws-cli-v2 (Build with PKGBUILD)
    - [PKGBUILD](https://gist.githubusercontent.com/paraselene92/4d94969599366dadc8c8505dfaa03a9a/raw/80ab83c54187d9acc1682c478e1d0d59149ce640/PKGBUILD)
  - neovim
  - docker
  - git
  - jq
  - man
  - neovim
  - openssh
  - tig
  - unzip
  - vim
- Python package
  - python-pip
  - python-botocore-v2-git
  - pipenv
  - autopep8
  - yapf
  - flake8
  - pudb
