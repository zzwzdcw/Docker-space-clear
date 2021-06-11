@echo off
docker system df
echo 请选择删除选项
echo 1.删除所有未被 tag 标记和未被容器使用的镜像
echo 2.删除所有未被容器使用的镜像
echo 3.删除所有停止运行的容器
echo 4.删除所有未被挂载的卷
echo 5.删除所有网络
echo 6.删除 docker 所有资源
echo 输入其它键只清理vhdx空间
::echo ！！！务必保证选择正确，不然会自动退出！！！	
set /p c=
if %c% ==1 docker image prune
if %c% ==2 docker image prune -a
if %c% ==3 docker container prune
if %c% ==4 docker volume prune
if %c% ==5 docker network prune
if %c% ==6 docker system prune
docker system df
echo 正在为您退出Docker Desktop.exe
taskkill /f /im "Docker Desktop.exe"
echo 正在为您退出wsl...
wsl --shutdown
echo 开始清理占用的空间
::-----------------请将vdisk file文件位置换成您自己的位置---------------------------------------
(echo select vdisk file="C:\Users\zzwzd\AppData\Local\Docker\wsl\data\ext4.vhdx"
::-----------------请将vdisk file文件位置换成您自己的位置---------------------------------------
echo attach vdisk readonly
echo compact vdisk
echo detach vdisk
echo exit) | diskpart 
echo 结束！
pause