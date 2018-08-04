# bowtie2-2.2.5
# 20180725

FROM centos:yum

MAINTAINER lrtao2010

ADD bowtie2.tar.gz /usr/local/
RUN mv /usr/local/bowtie2-2.2.5 /usr/local/bowtie2
COPY bowtie2.sh /etc/profile.d/
RUN yum install perl -y

CMD ["/bin/bash"]
