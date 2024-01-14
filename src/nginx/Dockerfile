FROM alpine:latest

RUN apk add nginx

RUN mkdir -p /usr/share/nginx/html

COPY index.html /usr/share/nginx/html/index.html

COPY conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]