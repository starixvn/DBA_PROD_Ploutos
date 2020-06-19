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
RUN yum update\ 
;	yum install -y epel-release\
;   yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm\
;   yum install -y yum-utils\
;   yum-config-manager --enable remi-php72\
;   yum install -y php php-fpm php-pdo php-mbstring php-xml php-mysql php-soap php-pear php-common php-opcache php-mcrypt php-cli php-gd php-curl php-zmq\
;   yum install -y nginx
RUN systemctl enable nginx\
;   systemctl enable php-fpm
ENTRYPOINT ["/usr/sbin/init"]
CMD ["systemctl"]