FROM    alpine:3.18

RUN     apk update && apk add nginx openssl

# create ssl/tls certificate & key
RUN     mkdir -p /etc/nginx/ssl
RUN     openssl req \
        # certificate type
        -x509 \
        -nodes \
        # where to save the certificate
        -out /etc/nginx/ssl/inception.crt \
        # where to save the key
        -keyout /etc/nginx/ssl/inception.key \
        # set info here instead of getting prompted
        -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=stde-la-.42.fr/UID=stde-la-"

COPY    conf/nginx.conf /etc/nginx/nginx.conf

# start Nginx in foreground
CMD     ["nginx", "-g", "daemon off;"]