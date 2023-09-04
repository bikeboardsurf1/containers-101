#create necessary exercise directories
mkdir -p /root/containers101/step{1..8}

cat > /root/Dockerfile <<EOL
FROM docker.io/rockylinux:9.2
RUN dnf install nginx -y
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80/tcp

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
EOL


cat > /root/index.html <<EOL
<!DOCTYPE html>
<html>
<head>
<title>Containers 101</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
p.ex1 {
  border: 1px solid green; 
  padding: 20px;
  background-color:MediumSeaGreen;
  color: white;
  font-size:250%;
}

</style>
</head>
<body>
<br/><br/><br/><br/>
<p class="ex1">C<i class="fa fa-circle-o" style="font-size:30px;color:red"></i>ntainers 1<i class="fa fa-circle-o" style="font-size:40px;color:red"></i>1</p>
</body>
</html>
EOL

cp /root/Dockerfile /root/containers101/step2/
cp /root/Dockerfile /root/containers101/step3/
cp /root/Dockerfile /root/containers101/step4/


#Copy Index files, some Docker files in step 5 will be unique to the exercise

cp /root/index.html /root/containers101/step2/
cp /root/index.html /root/containers101/step3/
cp /root/index.html /root/containers101/step4/
cp /root/index.html /root/containers101/step5/
cp /root/index.html /root/containers101/step6/
cp /root/index.html /root/containers101/step7/
cp /root/index.html /root/containers101/step8/

cat > /root/containers101/step5/myfile <<EOL
FROM docker.io/rockylinux:9.2
RUN dnf install nginx -y
COPY index.html /usr/share/nginx/html/index.html
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80/tcp

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
EOL

cat > /root/containers101/step5/nginx.conf <<EOL
#user  nobody;
worker_processes  1;

events {
    worker_connections  1024;
}


http {
    include       mime.types;
    default_type  application/octet-stream;

    #log_format  main  '$remote_addr - $remote_user [$time_local] "$request" '
    #                  '$status $body_bytes_sent "$http_referer" '
    #                  '"$http_user_agent" "$http_x_forwarded_for"';

    #access_log  logs/access.log  main;

    sendfile        on;

    keepalive_timeout  65;

    #gzip  on;

    server {
        listen       8085;
        server_name  localhost;

        #charset koi8-r;

        #access_log  logs/host.access.log  main;

        location / {
            root   html;
            index  index.html index.htm;
        }

        #error_page  404              /404.html;

        # redirect server error pages to the static page /50x.html
        #
        error_page   500 502 503 504  /50x.html;
        location = /50x.html {
            root   html;
        }

    }

}
EOL

#clean up
rm /root/Dockerfile
rm /root/index.html
