@echo off
title ��֪����6��
cls
echo ��Ŀ��������{1��2��������19}��ÿ��������������˻����������ֳ˻��ĺ�Ϊ_.
echo �����������ʼ����
pause >nul
echo ��Ŀ��������{1��2��������19}��ÿ��������������˻����������ֳ˻��ĺ�Ϊ_. >��֪����6��.txt
::ɾ�����м�¼
set num=
set /a num=0
set t1=
set t2=
set /a t1=1
set tmp=
set /a t2=%t1%+1
::����t1=1��t2=2
:loop
::Сѭ��
set /a tmp=%t1%*%t2%
::����˻�
set /a num=%num%+%tmp%
::д��˻�
set tmpecho=
set /a tmpecho=%num%-%tmp%
echo ������̣�%tmpecho%+%t1%��%t2%=%num%
echo ������̣�%tmpecho%+%t1%��%t2%=%num% >>��֪����6��.txt
if /i %t2%==19 goto bigloop
::��t2==19����ת��ѭ����t1������t2ԭʼֵ������
set /a t2=%t2%+1
::����ֻ��t2����
goto loop
::�ص�Сѭ��
:bigloop
::��ѭ��
set /a t1=%t1%+1
::t1����
set /a t2=%t1%+1
::t1���һ����������ֵt2
if /i %t2%==20 if /i %t1%==19 goto result
::����������������
goto loop
::�������Сѭ��
:result
echo ��������%num%
echo ��������%num% >>��֪����6��.txt
echo ����������˳�����
pause >nul