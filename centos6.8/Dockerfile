FROM scratch
MAINTAINER The CentOS Project <cloud-ops@centos.org>
ADD c68-docker.tar.xz /
LABEL name="CentOS Base Image" \
    vendor="CentOS" \
    license="GPLv2" \
    build-date="2016-06-02"

RUN ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
# Default command
CMD ["/bin/bash"]
