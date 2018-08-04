# fastqc_v0.10.1
# 20180724

FROM centos:yum

MAINTAINER lrtao2010

COPY jdk-8u171-linux-x64.rpm .
RUN rpm -ivh jdk-8u171-linux-x64.rpm
RUN rm -rf jdk-8u171-linux-x64.rpm

ADD fastqc.tar.gz /usr/local/
RUN chmod 755 /usr/local/FastQC/fastqc
RUN ln -s /usr/local/FastQC/fastqc /usr/local/bin/fastqc
RUN yum install perl -y
RUN yum clean all

CMD ["/bin/bash"]
