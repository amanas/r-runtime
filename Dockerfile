FROM rocker/r-base

LABEL maintainer="Andrés Mañas Mañas"

RUN apt-get update -qq && apt-get -y --no-install-recommends install \
  libxml2-dev \
  libcairo2-dev \
  libssl-dev \
  libssh2-1-dev \
  libsqlite-dev \
  libmariadbd-dev \
  libmariadbclient-dev \
  libpq-dev \
  unixodbc-dev \
  libsasl2-dev \
  libcurl4-gnutls-dev 

RUN install2.r --error --deps TRUE \
    tidyverse \
    dplyr \
    xts \
    plumber

RUN ["R", "--vanilla"]
