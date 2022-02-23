# Docker-space-clear
## 背景介绍
在Windows下使用docker的话，生成的.vhdx虚拟硬盘文件只增不减，但很多镜像使用之后可能不会继续使用，占用的空间却不会被自动释放，本项目解决了占用空间不会被自动释放的问题。

## 使用说明

### Docker手动设定位置清理脚本.bat

1. 仅在Windows下使用
2. 必须使用管理员运行
3. 保证Docker已经退出，本脚本会自动关闭wsl
4. 选择您的.vhdx文件（文件一般在C:\Users\你自己的用户名\AppData\Local\Docker\wsl\data下）
5. shift+右键
6. 复制路径
7. 打开文件，粘贴到窗口中等待运行结束即可

### Docker固定位置清理脚本.bat ⭐

1. 我觉得没有理由不用这个版本
2. 仅在Windows下使用
3. 必须使用管理员运行
4. 保证Docker已经退出，本脚本会自动关闭wsl
5. 右键点击Docker清理脚本（修改位置).bat
6. 选择编辑
7. 将此处文件路径（"C:\Users\zzwzd\AppData\Local\Docker\wsl\data\ext4.vhdx"）修改为您的文件路径（文件一般在C:\Users\你自己的用户名\AppData\Local\Docker\wsl\data下）
8. 保存即可运行

>测试如何使用一个pr
