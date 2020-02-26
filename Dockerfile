FROM paraselene92/archlinux:latest

RUN sudo -u aur yay -Syyu --noconfirm python python-pip &&\
    pip install pipenv autopep8 yapf flake8 neovim

CMD ["/bin/bash"]
