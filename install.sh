#/bin/bash

DESTDIR=${DESTDIR:-"/usr/local"}
BINDIR=${BINDIR:-"${DESTDIR}/bin"}

SYSTEMDIR=${SYSTEMDIR:-"/etc/systemd/system"}

install -m 755 smtp2slack ${BINDIR}/smtp2slack
install -m 644 smtp2slack.service ${SYSTEMDIR}/smtp2slack.service

systemctl daemon-reload
