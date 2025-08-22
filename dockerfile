FROM debian
LABEL maintainer="Al Idian <al.idian@acm.org>"

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

RUN apt update && \
    apt install -y curl git locales sudo tmux vim wget && \
    locale-gen en_CA.UTF-8 && \
    adduser --quiet --disabled-password --gecos "Al Idian" idianal && \
    echo "idianal:idianal" | chpasswd && \
    usermod -aG sudo idianal && \
    git clone https://github.com/idianal/dotfiles.git /home/idianal/dotfiles && \
    chmod 700 /home/idianal/dotfiles/dotfiles && \
    /home/idianal/dotfiles/dotfiles --tag linux --file /home/idianal/dotfiles/config && \
    chown -R idianal:idianal /home/idianal

USER idianal
WORKDIR /home/idianal
CMD ["bash"]
