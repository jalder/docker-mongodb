FROM centos:7

COPY ["./repos/mongodb-org-4.0.repo","/etc/yum.repos.d/mongodb-org-4.0.repo"]

RUN yum -y update && \
    yum -y install mongodb-org-server mongodb-org-shell

COPY ["./conf/mongod.conf","/etc/mongod.conf"]

USER mongod

CMD mongod -f /etc/mongod.conf
