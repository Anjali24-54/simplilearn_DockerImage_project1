FROM alpine:latest

RUN apk update && apk add --no-cache nginx

COPY index-custom.html /var/www/html/index.html

EXPOSE 80

#CMD ["nginx", "-g", "daemon off;"]

ENTRYPOINT nginx -g 'daemon off;'
