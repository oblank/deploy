FROM centos:6.6

MAINTAINER shuchao <shuc324@gmail.com>

RUN yum update -y
RUN yum clean all
RUN rpm -ivh http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-centos-6-0.el6.ngx.noarch.rpm
RUN yum install -y nginx

RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN mkdir -p /data/www /etc/nginx/includes
RUN chown -R nginx:nginx /data/www

#TODO worker_processes, autoindex off
#TODO rename conf.d/default.conf as *.bak; site-enable config with suffix

RUN sed -Ei '/include \/etc\/nginx\/conf\.d\/\*\.conf/ a\    include\ \/etc\/nginx\/sites-enabled\/*\.conf;' /etc/nginx/nginx.conf

EXPOSE 80 443 8000

CMD ["nginx"]
