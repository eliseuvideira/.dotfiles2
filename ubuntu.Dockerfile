FROM ubuntu

RUN ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime

RUN apt-get update

RUN apt-get install -y sudo zsh

RUN chsh -s /bin/zsh

RUN groupadd wheel

RUN useradd -m -G wheel -s /bin/zsh ubuntu

RUN yes 123 | passwd ubuntu

RUN echo '%wheel   ALL=(ALL:ALL) ALL' >/etc/sudoers && chmod -w /etc/sudoers

USER ubuntu
