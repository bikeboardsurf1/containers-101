mkdir containers101

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


mkdir /root/containers101/step5/a
mkdir /root/containers101/step5/b
mkdir /root/containers101/step5/c
mkdir /root/containers101/step5/d

#Copy Index files, Docker files will be unique every time

cp /root/index.html /root/containers101/step5/a/
cp /root/index.html /root/containers101/step5/b/
cp /root/index.html /root/containers101/step5/c/
cp /root/index.html /root/containers101/step5/d/

cat > /root/containers101/step5/a/myfile <<EOL
FROM docker.io/rockylinux:9.2
RUN dnf install nginx -y
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80/tcp

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
EOL

cat > /root/step5/a/myfile <<EOL
FROM docker.io/rockylinux:9.2
RUN dnf install nginx -y
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80/tcp

CMD ["/usr/sbin/nnginx", "-g", "daemon off;"]
EOL

#clean up
rm /root/Dockerfile
rm /root/index.html

cd /root/containers101





