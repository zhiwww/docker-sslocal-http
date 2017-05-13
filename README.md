# docker-sslocal-http
Another docker image of sslocal, with extra http supports

Proxy default listening port: 8123

## start the server
```shell
docker run -p 18123:8123 zhiwww/sslocal-http -s <ss_server_host> -p <ss_server_port> -k <password> -m <encryption_method>
```

## usage
```shell
export http_proxy=http://<container-ip>:18123
export https_proxy=http://<container-ip>:18123
```