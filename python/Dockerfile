# Installing Python 2.7.14 and Pip
# 20180627

FROM centos:yum

MAINTAINER lrtao2010@163.com

RUN yum clean all  && yum install -y gcc zlib zlib-devel openssl openssl-devel readline readline-devel bzip2 bzip2-devel \
                   && mkdir /usr/local/python2.7 \
                   && mkdir /root/.pip

ADD Python-2.7.14.tgz /usr/local/
ADD setuptools-38.4.0.tar.gz /usr/local/
ADD pip-9.0.1.tar.gz /usr/local/
COPY pip.conf /root/.pip/
COPY pydistutils.cfg /root/.pydistutils.cfg

WORKDIR /usr/local/Python-2.7.14

RUN ./configure --enable-optimizations --prefix=/usr/local/python2.7/
RUN sed -i '219,221s/#//' Modules/Setup
RUN make && make install

RUN mv /usr/bin/python /usr/bin/python2.6.6 && ln -s /usr/local/python2.7/bin/python2.7 /usr/bin/python
RUN sed -i s/python/python2.6.6/ /usr/bin/yum

WORKDIR /usr/local/setuptools-38.4.0 
RUN /usr/bin/python setup.py install

WORKDIR /usr/local/pip-9.0.1
RUN python setup.py install

RUN ln -s /usr/local/python2.7/bin/pip /usr/bin/pip
RUN ln -s /usr/local/python2.7/bin/easy_install /usr/bin/easy_install

RUN pip install --upgrade pip

WORKDIR /opt/

CMD ["/bin/bash"]
