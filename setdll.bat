@echo off
:: author ���
mode con cols=100 lines=30
color 0a
title setdll for firefox By ���
if not exist "%~dp0firefox.exe" (echo.) || if not exist "%~dp0xul.dll" (
echo û�ҵ�����ļ�,��ѳ������firefox.exe����Ŀ¼����ִ��.
pause
exit
)
echo setdll for firefox By ���(QQ:970852638)
echo ===============================================================================
echo ��Ҫ���ܣ�
echo * ��firefox.exeע����Ƴ�DLL�ļ�
echo * ��ѡ [ע��]����[�Ƴ�]
echo * ��ѡ 32λ(x86)��64λ(x64)
echo ʹ��˵����
echo * ����ѡ��ҳ�棬ѡ�� 1 ��ΪĬ��ѡ��
echo * ����ѡ��ҳ���ڵ���ʱ 1 ���Ӻ��Զ�ѡ��Ĭ��ѡ��
echo ===============================================================================
echo ��ѡ����ע��DLL�����Ƴ�DLL
echo 1.ע�롾Ĭ�ϡ�
echo 2.�Ƴ�
echo ===============================================================================
choice  /c 12 /n /m "������Ŀ��ѡ��ǰ�����֣�" /d 1 /t 60
if %errorlevel%==2 set arg1=r&set arg2=�Ƴ�
if %errorlevel%==1 set arg1=d&set arg2=ע��
cls
echo ===============================================================================
echo ��ѡ����%arg2%32λ����64λfirefox��DLL
echo 1.32λ(x86)��Ĭ�ϡ�
echo 2.64λ(x64)
echo ===============================================================================
choice  /c 12 /n /m "������Ŀ��ѡ��ǰ�����֣�" /d 1 /t 60
if %errorlevel%==2 set arch=64
if %errorlevel%==1 set arch=32
cls
setdll%arch%.exe /%arg1%:portable%arch%.dll firefox.exe
setdll%arch%.exe /%arg1%:portable%arch%.dll xul.dll
if exist firefox.exe# echo %arg2%ʧ�ܣ�����ϸ�Ķ�ʹ��˵��.txt�ļ���&pause&del /s /q firefox.exe#&del /s /q xul.dll#&exit
if exist firefox.exe~ echo %arg2%�ɹ�������ϸ�Ķ�ʹ��˵��.txt��readme.txt��portable.ini�ļ���&pause&del /s /q firefox.exe~&del /s /q xul.dll~
del /s /q setdll*.exe
if %arch%==32 del /s /q portable64.dll
if %arch%==64 del /s /q portable32.dll
del /s/q %0
exit