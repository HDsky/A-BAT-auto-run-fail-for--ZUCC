@echo off
COLOR B9
ECHO. ===========================================================================================
ECHO.                      ���棡��������Ҫ����ԱȨ������
ECHO.                                                           ���ߣ���^&��        �汾��V06
ECHO. ʹ��˵����
ECHO. ������������������ZUCC��У������ѧ�����ң���ʹ�����ڲ����жϿ�����ӵ�����·���������
ECHO. ���������õ����û�ʹ�ã��ƶ���ͨ�û���ʹ���ƶ�ר�档
ECHO. ÿ����Ҫ������ͬʱ����ǰ��ʹ�ñ�����ʧЧ������������ͬʱ�������ٴ�ʹ�ñ�����
ECHO. Ŀǰ��֧��win7�����ϼ�������ϵͳ���°汾֧��һ���Զ�����-��-
ECHO. �汾˵����
ECHO. V06�汾ȥ����ż��ʧЧ���Զ���ȡ����ԱȨ��ģ�飬ͬʱŪ�˼���������0.0
ECHO. ������Ҫ����� https://hadky.pw/ �������ÿ�������
ECHO. ������������ϵhd852025@hotmail.com�ṩ������żȻ�鵽�һ�ظ��ġ�
ECHO. ===========================================================================================
pause

for /f "skip=1 tokens=2,3,4,5,6" %%i in ('wmic os get Caption') do set win=%%i%%j
echo ��ǰϵͳ�汾%win%
cd.>Gateway.txt
ipconfig/all>ipconfig.txt

if /i %win%==Windows7 goto Win7
if /i %Win%==Windows8 goto Win10
if /i %Win%==Windows10 goto Win10
if /i %Win%==Windows8.1 goto Win10

:win7
set flag=vsbat
for /f "delims=" %%i in (ipconfig.txt) do (
if  defined flag (
echo "%%i"|findstr /c:"��������" && set flag=
) else (
echo %%i|findstr /c:"Ĭ������"  && (set "t= %%i" & goto :DEAL)
)
)

:win10
set flag=vsbat
for /f "delims=" %%i in (ipconfig.txt) do (
if  defined flag (
echo "%%i"|findstr /c:"��̫��" && set flag=
) else (
echo %%i|findstr /c:"Ĭ������"  && (set "t= %%i" & goto :DEAL)
)
)

:DEAL
for /f "tokens=2 delims=:" %%i in ("%t%") do echo %%i >> Gateway.txt
echo	�ɹ���ȡ��
set/p var=<Gateway.txt
echo %var%
route add 10.0.0.0 mask 255.0.0.0%var%
route add 210.32.0.0 mask 255.255.240.0%var%
route add 210.32.128.0 mask 255.255.192.0%var%
route add 222.205.0.0 mask 255.255.128.0%var%
echo  ����DNS��ַing....
Netsh interface IP Set dns "ZUCC" static 10.61.10.10 primary
Netsh interface IP add dns "ZUCC" 114.114.114.114
ipconfig /flushdns
Echo  ���óɹ� 
goto END

:END
del Gateway.txt
del ipconfig.txt
pause