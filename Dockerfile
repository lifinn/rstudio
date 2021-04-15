FROM rocker/verse
ENV PASSWORD=docker
RUN ln -s /usr/local/lib/R/site-library/littler/examples/update.r /usr/local/bin
RUN apt-get update -qq && apt-get upgrade -y && install2.r --error \
    --deps TRUE \
    feather \
    reshape2 \
    ggthemes \
    ggpubr \
    forecast \
    mice \
    VIM \
    caret \
    odbc \
    mongolite \
    sendmailR
RUN update.r --ncpus 2
RUN R -e "tinytex::install_tinytex()"