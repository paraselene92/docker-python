FROM paraselene92/archlinux:latest

RUN mkdir /build &&\
  chown -R aur:aur /build

WORKDIR /build
RUN sudo -u aur yay -Syu --noconfirm python python-pip python-botocore-v2-git &&\
  pacman -Syu --noconfirm python-s3transfer python-ruamel-yaml python-prompt_toolkit python-cryptography &&\
  curl -O https://gist.githubusercontent.com/paraselene92/4d94969599366dadc8c8505dfaa03a9a/raw/80ab83c54187d9acc1682c478e1d0d59149ce640/PKGBUILD &&\
  sudo -u aur makepkg -si --noconfirm &&\
  pip install pipenv autopep8 yapf flake8 neovim

WORKDIR /root
RUN rm -rf /home/aur/.cache &&\
  rm -rf /build

CMD ["/usr/bin/fish"]
