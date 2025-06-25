#!/usr/bin/env bash

# 安装依赖，禁用build isolation
pip install --upgrade pip
pip install --no-build-isolation -r requirements.txt

# 收集静态文件（如果你有）
python manage.py collectstatic --noinput