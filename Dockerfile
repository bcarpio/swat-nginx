FROM cyrusmc/nginxplus
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./nginx/conf/htpasswd /etc/nginx/conf/htpasswd
CMD /etc/init.d/nginx start && tail -f /var/log/nginx/access.log -f error.log
