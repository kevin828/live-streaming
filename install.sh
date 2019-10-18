sudo apt install git build-essential

mkdir -p ~/project
cd ~/project
mkdir ngnix-src
cd ngnix-src

wget -c https://nginx.org/download/nginx-1.17.4.tar.gz
wget -c https://ftp.pcre.org/pub/pcre/pcre-8.43.tar.gz
wget -c https://www.zlib.net/zlib-1.2.11.tar.gz
wget -c https://www.openssl.org/source/openssl-1.1.1d.tar.gz
git clone https://github.com/arut/nginx-rtmp-module.git

tar -xzvf nginx-1.17.4.tar.gz
tar -xzvf pcre-8.43.tar.gz
tar -xzvf zlib-1.2.11.tar.gz
tar -xzvf openssl-1.1.1d.tar.gz

cd nginx-1.17.4

cat > cfg.sh << EOF
./configure \\
--prefix=/usr/local/nginx \\
--with-pcre=../pcre-8.43 \\
--with-openssl=../openssl-1.1.1d \\
--with-zlib=../zlib-1.2.11 \\
--with-http_ssl_module \\
--with-http_v2_module \\
--with-http_flv_module \\
--with-http_mp4_module \\
--add-module=../nginx-rtmp-module \\
EOF

chmod a+x cfg.sh
./cfg.sh

sudo make install
