FROM ubuntu:jammy

LABEL version="1.0"

RUN apt-get update
RUN apt-get install --yes --quiet curl inotify-tools

ENV QBITTORRENT_SERVER=localhost
ENV QBITTORRENT_PORT=8080
ENV QBITTORRENT_USER=admin
ENV QBITTORRENT_PASS=adminadmin
ENV PORT_FORWARDED=/gluetun/forwarded_port

COPY ./start.sh ./start.sh
RUN chmod 770 ./start.sh

CMD ["./start.sh"]
