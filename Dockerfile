FROM alpine:latest
MAINTAINER Aplha
# 替换阿里云的源
RUN echo "http://mirrors.aliyun.com/alpine/latest-stable/main/" > /etc/apk/repositories
RUN echo "http://mirrors.aliyun.com/alpine/latest-stable/community/" >> /etc/apk/repositories
RUN apk update --no-cache && apk upgrade --no-cache
# 设置时区
RUN apk --no-cache add tzdata \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone
# 安装常用软件
RUN apk add --update --no-cache curl openssh vim wget bash && rm -rf /var/cache/apk/*

COPY entrypoint.sh /
RUN cd / && chmod +x entrypoint.sh
CMD ["curl","bash"]
ENTRYPOINT ["/entrypoint.sh"]
