@echo off
wsl --shutdown
echo close wsl.....
::-----------------请将vdisk file文件位置换成您自己的位置---------------------------------------
(echo select vdisk file="C:\Users\zzwzd\AppData\Local\Docker\wsl\data\ext4.vhdx"
::-----------------请将vdisk file文件位置换成您自己的位置---------------------------------------
echo attach vdisk readonly
echo compact vdisk
echo detach vdisk) | diskpart 
pause