# SNAP1.0beta.18
# 20180725

FROM centos:yum

MAINTAINER lrtao2010

ADD snap-beta.18-linux.tar.gz /usr/local/
RUN chmod 755 /usr/local/snap-aligner
RUN ln -s /usr/local/snap-aligner /usr/local/bin/snap-aligner
ADD glibc-2.14.tar.xz /usr/local/
WORKDIR /usr/local/glibc-2.14/
RUN mkdir build
WORKDIR /usr/local/glibc-2.14/build/
RUN yum install gcc gcc-c++ -y
RUN /usr/local/glibc-2.14/configure --prefix=/usr/local/glibc && make && make install
COPY glibc.sh /etc/profile.d/
WORKDIR /root/

CMD ["/bin/bash"]
