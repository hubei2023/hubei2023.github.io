@echo off
cd /d G:\hubei2023.github.io
set PATH=G:\Ruby32-x64\bin;%PATH%
echo Starting Jekyll server...
bundle exec jekyll serve --host 127.0.0.1 --port 4000
echo Jekyll server stopped.
pause 