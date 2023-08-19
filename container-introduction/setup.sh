cat > /root/Dockerfile <<EOL
FROM docker.io/rockylinux:9.2
RUN dnf install nginx -y
COPY default /etc/nginx/sites-available/default
EXPOSE 80/tcp

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
EOL


cat > /root/default <<EOL
server {
    listen 80 default_server;
    listen [::]:80 default_server;
    
    root /usr/share/nginx/html;
    index index.html index.htm;

    server_name _;
    location / {
        try_files $uri $uri/ =404;
    }
}
EOL
