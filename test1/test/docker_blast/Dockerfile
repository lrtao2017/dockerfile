# ncbi-blast-2.2.26+
# 20180725

FROM centos:yum

MAINTAINER lrtao2010

ADD ncbi-blast-2.2.26+-x64-linux.tar.gz /usr/local/
RUN mv /usr/local/ncbi-blast-2.2.26+ /usr/local/blast
COPY blast.sh /etc/profile.d/

CMD ["/bin/bash"]
