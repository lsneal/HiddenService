FROM alpine:latest

RUN apk add --no-cache tor && apk add nginx
RUN chown -Rv tor:nogroup /etc/tor

RUN mkdir -p /usr/share/nginx/html

COPY index.html /usr/share/nginx/html/index.html

COPY	conf/torrc /etc/tor/torrc
COPY	conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 9050
EXPOSE 80

CMD ["sh", "-c", "tor -f /etc/tor/torrc & nginx -g 'daemon off;'"]

#COPY script_tor.sh .
#RUN chmod +x script_tor.sh
#CMD ["sh", "script_tor.sh"]
#RUN sh script_tor.sh
#CMD ["sh", "-c", "nginx -g 'daemon off;'"]