FROM nginx:alpine

LABEL maintainer="CaeruxLab-TA"

RUN apk update \
    && apk upgrade \
    && apk --update add logrotate \
    && apk add --no-cache openssl \
    && apk add --no-cache bash

# Copy our nginx config
RUN rm -Rf /etc/nginx/nginx.conf
RUN rm -Rf /etc/nginx/conf.d/default.conf
ADD /nginx.conf /etc/nginx/nginx.conf
ADD conf/default.conf /etc/nginx/conf.d/default.conf

# nginx site conf
RUN mkdir -p /etc/nginx/sites-available/ && \
mkdir -p /etc/nginx/sites-enabled/ && \
mkdir -p /etc/nginx/ssl/ 

# Enable site / virtualhost 
ADD sites-available/demo_virtualhost.conf /etc/nginx/sites-available/demo_virtualhost.conf
RUN ln -s /etc/nginx/sites-available/demo_virtualhost.conf /etc/nginx/sites-enabled/demo_virtualhost.conf

EXPOSE 80 443