apt update -y
apt install -y nginx
apt install -y curl

systemctl enable nginx

echo "<h1> psh Testweb </h1>" > /usr/share/nginx/html/index.html
