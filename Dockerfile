FROM ubuntu:12.04
MAINTAINER Nolan Nichols <nolan.nichols@gmail.com>
ENV UPDATED "Wed Apr 30 17:34:20 PDT 2014"

RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ precise-backports main restricted universe multiverse" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y ansible git
RUN ansible-galaxy install nicholsn.miniconda --force
RUN ansible-pull -U https://github.com/niquery/ansible-role-miniconda.git -d /ansible -i hosts local.yml