# Based on centos:Python-3.6.0 Install perl-5.28.0 and cpan 
# 20180710

FROM centos:python3.6

MAINTAINER lrtao2010@163.com

RUN yum clean all  && yum install -y gcc \
                   && mkdir /usr/local/perl

ADD perl-5.28.0.tar.gz /usr/local/

WORKDIR /usr/local/perl-5.28.0/

RUN ./Configure -des -Dprefix=/usr/local/perl
RUN make && make test && make install

RUN ln -fs /usr/local/perl/bin/perl /usr/bin/perl
RUN ln -s /usr/local/perl/bin/cpan /usr/bin/cpan

RUN (echo y;echo o conf urllist pop http://www.cpan.org/;echo o conf urllist push http://mirrors.aliyun.com/CPAN/;echo o conf commit)|cpan

#安装模块并测试
#RUN perl -MCPAN -e 'install Net::Server'
#RUN perl -MNet::Server -e1
#RUN cpan -i MONGODB/MongoDB-v0.708.4.0.tar.gz

WORKDIR /opt/

CMD ["/bin/bash"]
