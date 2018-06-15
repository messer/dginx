FROM alpine:edge
RUN apk --no-cache --update add nginx nginx-mod-http-headers-more
ADD ./config/ /etc/nginx/
EXPOSE 80
STOPSIGNAL SIGTERM
CMD ["nginx", "-g", "daemon off;"]
