# Installing perl-5.28.0 and python3.7.0
# 20180704

FROM centos:perl-5.28.0

MAINTAINER lrtao2010@163.com

RUN yum clean all && yum install \ 
                             gcc \  
                         gcc-c++ \  
                 zlib zlib-devel \ 
               bzip2 bzip2-devel \ 
                        openssl* \ 
           ncurses ncurses-devel \ 
             sqlite sqlite-devel \ 
         readline readline-devel \ 
                     tk tk-devel \ 
                 gdbm gdbm-devel \ 
                   db4 db4-devel \ 
           libpcap libpcap-devel \ 
                     xz xz-devel \ 
             libffi libffi-devel \
                   ncurses-devel -y 
RUN mkdir /root/.pip && mkdir -p /usr/local/python3.7 
 
 
ADD Python-3.7.0.tar.xz /usr/local/ 
COPY pip.conf /root/.pip/ 
 
 
WORKDIR /usr/local/Python-3.7.0 
RUN echo "export LANG=zh_CN.UTF-8" >> /root/.bash_profile \ 
    && echo "export LANGUAGE=zh_CN.UTF-8" >> /root/.bash_profile \ 
    && source /root/.bash_profile 
RUN ./configure --prefix=/usr/local/python3.7 
RUN make && make install 
 
 
RUN mv /usr/bin/python /usr/bin/python2.6.6 && ln -s /usr/local/python3.7/bin/python3.7 /usr/bin/python 
RUN sed -i s/python/python2.6.6/ /usr/bin/yum
 
 
RUN ln -s /usr/local/python3.7/bin/pip3 /usr/bin/pip 
RUN pip install -U pip 
 
WORKDIR /opt/ 
CMD ["/bin/bash"] 
