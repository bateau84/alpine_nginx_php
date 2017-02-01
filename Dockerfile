FROM bateau/alpine_baseimage:3.5

ADD . /build/

RUN build/prepare.sh && \
    build/system_services.sh && \
    build/cleanup.sh

EXPOSE 80
EXPOSE 443
