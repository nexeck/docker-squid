FROM nexeck/base-s6

MAINTAINER Marcel Beck <marcel@beck.im>

# Squid config environment
ENV SQUID_CACHE_DIR=/var/cache/squid \
    SQUID_DISK_CACHE_SIZE=1024 \
    SQUID_MEM_CACHE_SIZE=256 \
    SQUID_SSL_DIR=/etc/squid/ssl \
    SQUID_USER=squid \
    SQUID_GROUP=squid

RUN apk add --no-cache squid ca-certificates openssl

COPY rootfs /

EXPOSE 3128 3129 3130
