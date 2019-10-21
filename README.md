# Live streaming server using Nginx with RTMP module

### Operation System
- Ubuntu 18.04.2 LTS

### Prerequisites
- Nginx 1.17.4 from [Nginx.org](https://nginx.org/en/download.html) or [Github](https://github.com/nginx/nginx)
- Openssl 1.1.1 from [OpenSSL.org](https://www.openssl.org/source/) or [Github](https://github.com/openssl/openssl)
- Pcre 8.43 from [PCRE.org](https://ftp.pcre.org/pub/pcre/)
- Zlib 1.2.11 from [Zlib](https://www.zlib.net/)
- Nginx-rtmp-module from [Github](https://github.com/arut/nginx-rtmp-module)

### Build Nginx with RTMP module
- Generate Makefile
```shell
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
```
- Compile and install Nginx
```shell
sudo make install
```

### Nginx Configurations
- [nginx.conf](/nginx.conf)

### Reference
- Build Nignx on Ubuntu
  - [How To Install Nginx RTMP Server + HLS on Ubuntu 16.04 | EASY!](https://northwoodsdigital.com/how-to-install-nginx-rtmp-server-hls-on-ubuntu-16-04-easy/)
  - [Setting up HLS live streaming server using NGINX + nginx-rtmp-module on Ubuntu](https://docs.peer5.com/guides/setting-up-hls-live-streaming-server-using-nginx/)
  - [ubuntu搭建推流服務器Nginx+rtmp](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=357776)

- Nginx
  - [Nginx Directives](http://nginx.org/en/docs/dirindex.html)
  - [Nginx-rtmp-module Directives](https://github.com/arut/nginx-rtmp-module/wiki/Directives)

- FFmpeg
  - [FFmpeg Documentation](https://www.ffmpeg.org/ffmpeg.html)
  - [FFmpeg Formats Documentation](https://www.ffmpeg.org/ffmpeg-formats.html)
  - [Encoding for streaming sites](https://trac.ffmpeg.org/wiki/EncodingForStreamingSites)
  - [Live encoding with VP9 using FFmpeg](https://developers.google.com/media/vp9/live-encoding#live_encoding_with_vp9_using_ffmpeg)
