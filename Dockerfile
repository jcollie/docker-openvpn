FROM registry.fedoraproject.org/fedora:32

ENV LANG C.UTF-8

RUN dnf -y update && dnf -y install openvpn iproute iputils traceroute && rm -rf /var/cache/dnf /usr/share/doc

VOLUME /etc/openvpn
WORKDIR /etc/openvpn
CMD ["/usr/sbin/openvpn" ]
