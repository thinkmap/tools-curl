# tools-curl
Alpine-based image with just curl

Usage
#### 直接传参，运行curl命令
$ docker run --rm registry.cn-shanghai.aliyuncs.com/allthink/curl curl -fsSL https://www.google.com/
#### 运行一个长时间延迟命令sleep，保证容器处于运行状态
$ docker run -d --name curl registry.cn-shanghai.aliyuncs.com/allthink/curl sleep 9999999

Tags

registry.cn-shanghai.aliyuncs.com/allthink/curl:latest: based on alpine:latest

License

Copyright © 2020 Appropriate Computing

All contents licensed under the MIT License
