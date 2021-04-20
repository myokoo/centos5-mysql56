FROM astj/centos5-vault
COPY ./rpms/MySQL-* /tmp/
RUN yum install -y perl.x86_64 libaio.x86_64 which && \
    rpm -ih /tmp/MySQL-* && \
    rm  -rf /tmp/MySQL-*
