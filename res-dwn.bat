@echo off
echo Res Downloader
set "username=Cher-IS-7"
set "repository=batch-testing"
set "branch=b9826b75f57ea378ce394e678490b7d2a86cc6ae"
set "folder=download"

curl -LJO https://api.github.com/repos/%username%/%repository%/zipball/%branch%/%folder%
