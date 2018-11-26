FROM fedora:latest

ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8

RUN dnf -y install \
  make \
  python3-docutils \
  python3-sphinx \
  python3-sphinx_rtd_theme \
  latexmk \
  texlive-latex \
  texlive-collection-latexrecommended \
  texlive-collection-latexextra \
  texlive-collection-fontsrecommended \
  texlive-collection-fontsextra \
  texlive-ec \
  texlive-cm-super \
 && dnf clean all

RUN ln -s /usr/bin/sphinx-build-3 /usr/bin/sphinx-build

CMD ["/bin/bash"]

