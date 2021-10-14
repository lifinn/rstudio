FROM rocker/verse
ENV PASSWORD=docker
RUN ln -s /usr/local/lib/R/site-library/littler/examples/update.r /usr/local/bin
RUN apt-get update -qq && apt-get upgrade -y && install2.r --error --deps TRUE \
    feather reshape2 ggthemes ggpubr \
    distr distrEx\
    forecast mice VIM caret \
    && update.r --ncpus 2 \
    && R -e "tinytex::install_tinytex()"
RUN wget -O /home/rstudio/install-getnonfreefonts https://www.tug.org/fonts/getnonfreefonts/install-getnonfreefonts \
    && texlua /home/rstudio/install-getnonfreefonts --sys \
    && getnonfreefonts --sys -a