@echo off
set PATH=G:\Ruby32-x64\bin;%PATH%
bundle install
bundle exec jekyll serve --livereload
pause 