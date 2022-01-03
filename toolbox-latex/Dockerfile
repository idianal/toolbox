FROM idianal/toolbox
LABEL maintainer="Al Idian <al.idian@acm.org>"

RUN echo idianal | sudo -S apt update && \
    echo idianal | sudo -S DEBIAN_FRONTEND="noninteractive" apt install -y \
        texlive latexmk texlive-fonts-extra texlive-latex-extra biber

USER idianal
WORKDIR /home/idianal
CMD ["bash"]
