FROM nginx:

COPY ./start.sh /start.sh

RUN chmod +x /start.sh && \
    touch /etc/nginx/conf.d/default.conf 

COPY ./proxy_params /etc/nginx/
COPY ./default.conf.tpl /etc/nginx/

ENTRYPOINT [ "sh", "-c", "/start.sh" ]