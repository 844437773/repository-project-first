#!/bin/bash

# 设置环境变量
export NODE_ENV=production

# 清理旧的构建文件
rm -rf dist

# 安装依赖
npm install

# 构建项目
npm run build

# 部署到nginx目录
sudo cp -r dist/* /usr/local/nginx/html/

# 重启nginx
sudo systemctl restart nginx 