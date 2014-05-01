FROM ubuntu:12.04
MAINTAINER Nolan Nichols <nolan.nichols@gmail.com>
ENV UPDATED "Wed Apr 30 18:29:41 PDT 2014"

RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ precise-backports main restricted universe multiverse" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y ansible git sudo bzip2
RUN ansible-galaxy install nicholsn.miniconda --force
WORKDIR /etc/ansible/roles/nicholsn.miniconda
RUN ansible-playbook -i hosts local.yml -v

EXPOSE 22 