FROM paraselene92/archlinux:1.3

RUN mkdir /build &&\
  chown -R aur:aur /build

WORKDIR /build
RUN sudo -u aur yay -Syu --noconfirm python python-pip python-botocore-v2-git &&\
  pacman -Syu --noconfirm python-s3transfer python-ruamel-yaml python-prompt_toolkit python-cryptography &&\
  echo 'export gisturl="$(curl https://api.github.com/gists/4d94969599366dadc8c8505dfaa03a9a | jq -cr .files.PKGBUILD.raw_url)"' >> ~/.bashrc &&\
  source ~/.bashrc &&\
  curl -O $gisturl &&\
  sudo -u aur makepkg -si --noconfirm &&\
  pip install pipenv autopep8 yapf flake8 neovim pudb

WORKDIR /root
RUN rm -rf /home/aur/.cache &&\
  rm -rf /build

CMD ["/usr/bin/fish"]
