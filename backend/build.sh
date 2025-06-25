#!/usr/bin/env bash

# 切换到项目根目录
cd ../

# 升级 pip
pip install --upgrade pip

# 安装依赖
pip install --no-build-isolation -r requirements.txt

# 收集静态文件
python manage.py collectstatic --noinput