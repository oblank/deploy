FROM centos:6.6

MAINTAINER shuchao <shuc324@gmail.com>

RUN { \
	echo "[mongodb-org-3.0]"; \
	echo "name=MongoDB Repository"; \
	echo "baseurl=https://repo.mongodb.org/yum/redhat/\$releasever/mongodb-org/3.0/x86_64/"; \
	echo "gpgcheck=0"; \
	echo "enabled=1"; \
} > /etc/yum.repos.d/mongodb-org-3.0.repo

RUN yum update -y
RUN yum clean all
RUN yum install -y mongodb-org

ENV AUTH yes
ENV STORAGE_ENGINE wiredTiger
ENV JOURNALING yes


#TODO store data each db

ADD run.sh /run.sh
ADD set_mongodb_password.sh /set_mongodb_password.sh

EXPOSE 27017 28017

VOLUME /data/db

CMD ["/run.sh"]
#CMD ["/sbin/init"]
