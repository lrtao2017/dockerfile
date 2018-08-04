# sickle-master-1.33
# 20180725

FROM centos:yum

MAINTAINER lrtao2010

ADD sickle.tar.gz /usr/local/
RUN mv /usr/local/sickle-master /usr/local/sickle
WORKDIR /usr/local/sickle
RUN yum install gcc -y
RUN yum install zlib-devel -y
RUN make
RUN ln -s /usr/local/sickle/sickle /usr/local/bin/sickle
WORKDIR /root/

CMD ["/bin/bash"]
