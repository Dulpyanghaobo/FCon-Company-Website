# 使用官方的 nginx 镜像作为基础镜像
FROM nginx:alpine

# 将网站内容复制到容器中的 nginx 默认目录
COPY . /usr/share/nginx/html

# 设置默认暴露端口
EXPOSE 80

# 通过nginx前台启动，保证容器在后台运行时不会停止
CMD ["nginx", "-g", "daemon off;"]
