@echo off
docker system df
echo ��ѡ��ɾ��ѡ��
echo 1.ɾ������δ�� tag ��Ǻ�δ������ʹ�õľ���
echo 2.ɾ������δ������ʹ�õľ���
echo 3.ɾ������ֹͣ���е�����
echo 4.ɾ������δ�����صľ�
echo 5.ɾ����������
echo 6.ɾ�� docker ������Դ
echo ����������ֻ����vhdx�ռ�
::echo ��������ر�֤ѡ����ȷ����Ȼ���Զ��˳�������	
set /p c=
if %c% ==1 docker image prune
if %c% ==2 docker image prune -a
if %c% ==3 docker container prune
if %c% ==4 docker volume prune
if %c% ==5 docker network prune
if %c% ==6 docker system prune
docker system df
echo ����Ϊ���˳�Docker Desktop.exe
taskkill /f /im "Docker Desktop.exe"
echo ����Ϊ���˳�wsl...
wsl --shutdown
echo ��ΪWindows UAC���ԣ��޷���չ��ȡ�ļ�·�������ֶ��ڸ����ļ�·��
echo ������ѡ���ļ�--->shift+�Ҽ�--->����·��--->ճ���˿���
echo ���ļ���·��һ����C:\Users\���Լ����û���\AppData\Local\Docker\wsl\data��
set /p a=
echo %a%
echo ��ʼ����ռ�õĿռ�
::-----------------�뽫vdisk file�ļ�λ�û������Լ���λ��---------------------------------------
(echo select vdisk file=%a%
::-----------------�뽫vdisk file�ļ�λ�û������Լ���λ��---------------------------------------
echo attach vdisk readonly
echo compact vdisk
echo detach vdisk
echo exit) | diskpart 
echo ������
pause