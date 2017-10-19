FROM ubuntu:xenial

MAINTAINER HarryPod

RUN apt-get update \
    && apt-get -q -y dist-upgrade \
    && DEBIAN_FRONTEND=noninteractive \
    apt-get -q -y install --no-install-recommends \
    apache2 \    
	mysql-client \
    mysql-server \
    php \    
    php-mysql \       
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


EXPOSE 80
EXPOSE 443
EXPOSE 3306