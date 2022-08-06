FROM docker.uclv.cu/ubuntu/bind9

COPY named.conf.local /etc/bind/
COPY named.conf.options /etc/bind/
COPY db.domain.com /var/cache/bind/
