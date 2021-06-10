@echo off
echo 必须用管理员权限打开
echo 因为Windows UAC策略，无法拓展获取文件路径，请手动在复制文件路径
echo 方法：选择文件--->shift+右键--->复制路径--->粘贴此框内
echo 该文件的路径一般在C:\Users\你自己的用户名\AppData\Local\Docker\wsl\data下
set /p a=
echo %a%
wsl --shutdown
echo close wsl.....
::-----------------请将vdisk file文件位置换成您自己的位置---------------------------------------
(echo select vdisk file=%a%
::-----------------请将vdisk file文件位置换成您自己的位置---------------------------------------
echo attach vdisk readonly
echo compact vdisk
echo detach vdisk) | diskpart 
pause