@echo off
:start
echo ��ѡ��ɾ��ѡ��
echo 1.ɾ������δ�� tag ��Ǻ�δ������ʹ�õľ���
echo 2.ɾ������δ������ʹ�õľ���
echo 3.ɾ������ֹͣ���е�����
echo 4.ɾ������δ�����صľ�
echo 5.ɾ����������
echo 6.ɾ�� docker ������Դ
echo ��������ر�֤ѡ����ȷ����Ȼ���Զ��˳�������
set /p c=
if %c% ==1 (
docker image prune
)else if %c% ==2 (
docker image prune -a
)else if %c% ==3 (
docker container prune
)else if %c% ==4 (
docker volume prune
)else if %c% ==5 (
docker network prune
)else if %c% ==6 (
docker system prune
)esle (
goto start
)
:main
echo ɾ���������Ϊ���˳�Docker Desktop.exe
taskkill /f /im "Docker Desktop.exe"
echo ����Ϊ���˳�wsl...
wsl --shutdown
echo ��ʼ����ռ�õĿռ�
::-----------------�뽫vdisk file�ļ�λ�û������Լ���λ��---------------------------------------
(echo select vdisk file="C:\Users\zzwzd\AppData\Local\Docker\wsl\data\ext4.vhdx"
::-----------------�뽫vdisk file�ļ�λ�û������Լ���λ��---------------------------------------
echo attach vdisk readonly
echo compact vdisk
echo detach vdisk) | diskpart 
pause