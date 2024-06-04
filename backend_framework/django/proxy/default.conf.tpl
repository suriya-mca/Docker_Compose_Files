server {
    listen ${LISTEN_PORT};

    location /static {
        alias /vol/static;
    }

    location /media {
        alias /vol/media;
    }

    location / {
        proxy_pass http://${APP_HOST}:${APP_PORT};
        include /etc/nginx/proxy_params;
    }
}