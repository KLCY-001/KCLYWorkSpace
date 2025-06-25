#!/usr/bin/env bash

cd "$(dirname "$0")"

# 升级 pip，并禁用 PEP 517（否则会依赖 setuptools.build_meta）
pip install --upgrade pip setuptools wheel

# 安装依赖，禁用 build isolation（PEP 517）
pip install --no-build-isolation -r requirements.txt

# 收集静态文件（可选）
python manage.py collectstatic --noinput || echo "No static files."