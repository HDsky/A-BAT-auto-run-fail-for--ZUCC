@echo off
COLOR B9
ECHO. ===========================================================================================
ECHO.                      ���棡��������Ҫ����ԱȨ������
ECHO.                                                           ���ߣ���^&��        �汾��V05
ECHO. ʹ��˵����
ECHO. ������������������ZUCC��У������ѧ�����ң���ʹ�����ڲ����жϿ�����ӵ�����·���������
ECHO. ��������޵����û�ʹ��0.0���ƶ���ͨ�û���ʹ���ƶ�ר�档�����������������ϵ�󱨣����˱�֤������޲�����
ECHO. ÿ����Ҫ�õ�������ͬʱ����ǰ��ʹ�ñ�����ʧЧ���������������Ӳ��ź�����������ͬʱ�������ٴ�ʹ�ñ�����
ECHO. Ŀǰ֧��win7������ϵͳ���°汾֧��һ���Զ�����-��-
ECHO. �汾˵����
ECHO. V05�汾��V03��V04�汾�Ļ����Ͻ�����ƶ���Ӫ��DNS�ٳֵ����⣬����ֵ��ע��������������������Ļ������������������
ECHO. ������Ҫ����ϵhd852025@hotmail.com    żȻ�鵽�һ�ظ��ġ�
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
echo %%i|findstr /c:"Ĭ������"  && (set "t= %%i" & goto :DELL)
)
)


:DEAL
for /f "tokens=2 delims=:" %%i in ("%t%") do echo %%i >> Gateway.txt
echo	�ɹ���ȡ��
set/p var=<Gateway.txt
echo %var%
route add 10.0.0.0 mask 255.0.0.0%var%
Echo  ���óɹ� 
goto END


:DELL
for /f "tokens=2 delims=:" %%i in ("%t%") do echo %%i >> Gateway.txt
echo	�ɹ���ȡ��
set/p var=<Gateway.txt
echo %var%
route add 10.0.0.0 mask 255.0.0.0%var%
Echo  ���óɹ� 
goto END

:END
del Gateway.txt
del ipconfig.txt
pause