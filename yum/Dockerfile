# Add and modify Alibaba Cloud yum source
# 20180627

FROM centos:6.8

MAINTAINER lrtao2010@yeah.net

RUN mkdir /etc/yum.repos.d/bak && mv /etc/yum.repos.d/*.repo /etc/yum.repos.d/bak

COPY *.repo /etc/yum.repos.d/

RUN yum clean all

CMD ["/bin/bash"]
