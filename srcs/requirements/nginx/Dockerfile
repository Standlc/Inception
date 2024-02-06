FROM    alpine:3.15

RUN     apk update && apk upgrade && apk add nginx

        # create folder for ssl/tsl config
RUN     mkdir -p /etc/nginx/ssl && apk add openssl

        # create ssl/tls certificate & key
RUN     openssl req \
        # certificate type
        -x509 \
        -nodes \
        # where to save the certificate
        -out /etc/nginx/ssl/inception.crt \
        # where to save the key
        -keyout /etc/nginx/ssl/inception.key \
        -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=stde-la-.42.fr/UID=stde-la-"

# RUN     mkdir -p /var/run/nginx
COPY    conf/nginx.conf /etc/nginx/nginx.conf

# RUN     mkdir -p /var/www/wordpress

CMD     ["nginx", "-g", "daemon off;"]