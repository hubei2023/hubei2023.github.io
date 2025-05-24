@echo off
chcp 65001
echo 正在启动 Jekyll 服务器...

:: 设置 Ruby 环境
set PATH=G:\Ruby32-x64\bin;%PATH%

:: 检查 Ruby 是否可用
ruby -v >nul 2>&1
if errorlevel 1 (
    echo 错误：Ruby 未正确安装或未添加到 PATH
    echo 请确保 Ruby 已安装在 G:\Ruby32-x64 目录
    pause
    exit /b 1
)

:: 切换到项目目录
cd /d G:\hubei2023.github.io
if errorlevel 1 (
    echo 错误：无法切换到项目目录
    pause
    exit /b 1
)

:: 安装依赖
echo 正在安装依赖...
bundle install
if errorlevel 1 (
    echo 错误：bundle install 失败
    pause
    exit /b 1
)

:: 启动 Jekyll
echo 正在启动 Jekyll 服务器...
G:\Ruby32-x64\bin\bundle exec jekyll serve --livereload --trace
if errorlevel 1 (
    echo 错误：Jekyll 服务器启动失败
    pause
    exit /b 1
)

pause 