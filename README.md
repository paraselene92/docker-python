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

## Version
- v1.71
  - Update base image `paraselene92/archlinux:1.71`
- v1.7
  - Update Arch linux regularly. (Update base image `paraselene92/archlinux:1.7`)
- v1.6
  - Update Arch linux regularly. (Update base image `paraselene92/archlinux:1.6`)
- v1.5
  - Update base image `paraselene92/archlinux:1.5`
- v1.3
  - Update Arch linux regularly. (Update base image `paraselene92/archlinux:1.3`)
