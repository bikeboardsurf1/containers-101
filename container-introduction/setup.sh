mkdir containers101
mkdir /root/containers101/step2
mkdir /root/containers101/step3
mkdir /root/containers101/step4
mkdir /root/containers101/step5
mkdir /root/containers101/step6
mkdir /root/containers101/step7
mkdir /root/containers101/step8


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

cat > /root/containers101/step5/a/myfile <<EOL
FROM docker.io/rockylinux:9.2
RUN dnf install nginx -y
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80/tcp

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
EOL

#Step 5a
cat > /root/step5/a/myfile <<EOL
FROM docker.io/rockylinux:9.2
RUN dnf install nginx -y
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80/tcp

CMD ["/usr/sbin/nnginx", "-g", "daemon off;"]
EOL

#Step 5a
cat > /root/step5/a/nginx.conf <<EOL
server {
    listen 8091 default_server;
    listen [::]:8091 default_server; 
    root /var/www/html;  
    index index.html; 
    server_name _;  
    location / {
       try_files $uri $uri/ =404;
     }
}
EOL

#clean up
rm /root/Dockerfile
rm /root/index.html





