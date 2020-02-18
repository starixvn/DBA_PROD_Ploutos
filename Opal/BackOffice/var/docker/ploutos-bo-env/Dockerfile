FROM centos:7
ENV container docker
RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;
VOLUME [ "/sys/fs/cgroup" ]
RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash -\
;   yum clean all && yum makecache fast\
;   yum install -y gcc-c++ make\
;   yum install -y nodejs\
;   yum install -y epel-release\
;   yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm\
;   yum install -y yum-utils\
;   yum-config-manager --enable remi-php72\
;   yum install -y php php-fpm php-pdo php-mbstring php-xml php-mysql php-soap php-pear php-common php-opcache php-mcrypt php-cli php-gd php-curl php-zmq\
;   yum install -y nginx
RUN yum install -y unzip\
;   yum install -y java-11-openjdk-devel
COPY src/*.zip /usr/local/ploutos/src/
RUN cd /usr/local/ploutos\
;   unzip src/ploutos-bo-webapp.zip -d bo-webapp\
;   unzip src/ploutos-bo-api.zip -d bo-api\
;   chmod -R 777 bo-api/var
RUN systemctl enable nginx\
;   systemctl enable php-fpm
COPY webapp/webpack.pagcor.config.js /usr/local/ploutos/bo-webapp/
RUN cd /usr/local/ploutos/bo-webapp\
;   npm install --unsafe-perm\
;   npm run build_pagcor
COPY src/athena-apiconnector-svc.jar /usr/local/ploutos/athena-api/
COPY athena/athena-apiconnector-svc.service /etc/systemd/system/
CMD ["/usr/sbin/init"]
