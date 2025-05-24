@echo off
chcp 65001
echo 开始调试 Jekyll...

:: 设置环境
set PATH=G:\Ruby32-x64\bin;%PATH%
cd /d G:\hubei2023.github.io

:: 检查 Ruby 版本
echo === Ruby 版本 ===
ruby -v

:: 检查 Bundle 版本
echo === Bundle 版本 ===
bundle -v

:: 检查 Jekyll 版本
echo === Jekyll 版本 ===
bundle exec jekyll -v

:: 检查配置文件
echo === 检查配置文件 ===
if exist _config.yml (
    echo _config.yml 存在
) else (
    echo 错误：_config.yml 不存在
)

:: 尝试构建网站
echo === 尝试构建网站 ===
bundle exec jekyll build --trace

:: 如果构建成功，尝试启动服务器
if %errorlevel% equ 0 (
    echo === 构建成功，启动服务器 ===
    bundle exec jekyll serve --livereload --trace
) else (
    echo === 构建失败 ===
)

pause 