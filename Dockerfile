FROM m0elnx/alpine-x86

RUN apk update && \
	apk add openssl openvpn iptables socat curl

ADD ./bin /sbin

VOLUME /etc/openvpn

EXPOSE 1194/udp 8080/tcp

CMD run
