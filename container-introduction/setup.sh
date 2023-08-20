cat > /root/Dockerfile <<EOL
FROM docker.io/rockylinux:9.2
RUN dnf install nginx -y
COPY default /etc/nginx/sites-available/default
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
