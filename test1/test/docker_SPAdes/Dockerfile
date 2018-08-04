# SPAdes-3.6.2
# 20180725

FROM centos:Python-2.7.14

MAINTAINER lrtao2010

ADD SPAdes-3.6.2-Linux.tar.gz /usr/local/
RUN mv /usr/local/SPAdes-3.6.2-Linux /usr/local/SPAdes
COPY spades.sh /etc/profile.d/
CMD ["/bin/bash"]
