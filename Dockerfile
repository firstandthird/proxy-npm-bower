FROM nginx:1.7.9
MAINTAINER First+Third code@firstandthird.com

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

RUN mkdir -p /var/cache/npm/data && mkdir -p /var/cache/bower/data
ADD npm.conf /etc/nginx/conf.d/npm.conf
ADD bower.conf /etc/nginx/conf.d/bower.conf

EXPOSE 8001
EXPOSE 8002

CMD ["/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf"]
