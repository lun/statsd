FROM node:5-onbuild

RUN npm install https://github.com/lun/statsd-elasticsearch-backend/tarball/0.4.2

EXPOSE 8125/udp
EXPOSE 8126

ENTRYPOINT [ "node", "stats.js", "/etc/statsd/statsd.conf.js" ]
