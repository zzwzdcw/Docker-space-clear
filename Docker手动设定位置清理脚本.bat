@echo off
echo �����ù���ԱȨ�޴�
echo ��ΪWindows UAC���ԣ��޷���չ��ȡ�ļ�·�������ֶ��ڸ����ļ�·��
echo ������ѡ���ļ�--->shift+�Ҽ�--->����·��--->ճ���˿���
echo ���ļ���·��һ����C:\Users\���Լ����û���\AppData\Local\Docker\wsl\data��
set /p a=
echo %a%
wsl --shutdown
echo close wsl.....
::-----------------�뽫vdisk file�ļ�λ�û������Լ���λ��---------------------------------------
(echo select vdisk file=%a%
::-----------------�뽫vdisk file�ļ�λ�û������Լ���λ��---------------------------------------
echo attach vdisk readonly
echo compact vdisk
echo detach vdisk) | diskpart 
pause