FROM alpine:latest

RUN apk add --no-cache tor && apk add --no-cache nyx 
RUN chown -Rv tor:nogroup /etc/tor

COPY	conf/torrc /etc/tor/torrc

EXPOSE 9050

COPY tor.sh .

RUN chmod +x tor.sh

CMD ["sh", "tor.sh"]