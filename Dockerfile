FROM rocker/verse
ENV PASSWORD=docker
RUN apt-get update -qq && apt-get upgrade -y && install2.r --error \
    --deps TRUE \
    feather \
    reshape2 \
    ggthemes \
    forecast \
    mice \
    odbc \
    mongolite \
    sendmailR
