FROM rocker/verse

RUN apt-get update -qq && apt-get upgrade -y && install2.r --error \
    --deps TRUE \
    reshape2 \
    ggthemes \
    forecast \
    mice
