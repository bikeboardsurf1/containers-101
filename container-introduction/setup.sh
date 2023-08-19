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

sudo apt-get install -y wget apt-transport-https gnupg lsb-release
wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | sudo apt-key add -
echo deb https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main | sudo tee -a /etc/apt/sources.list.d/trivy.list
sudo apt-get -y update
sudo apt-get install -y trivy
