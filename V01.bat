@echo off
COLOR B9
ECHO. ===========================================================================================
ECHO.                      WARNING����������Ҫ����ԱȨ������
ECHO.                                                           ���ߣ��ڵ�        �汾��V01
ECHO. ʹ��˵����
ECHO. ������������ھ���һ��¥����ʹ�����ڲ����жϿ�����ӵ�����·�����������������¥����֤��Ч��
ECHO. ��һ��ʹ���Ȳ�ѯ�Լ����Ե�����IP��Ȼ�������ʾ����IP��ַ�ĵ����ڶ�λ��
ECHO. ��������ѯ����IPΪ10.64.69.120����ô��ֻ��Ҫ����69����0.0
ECHO. ��Ϊ����IP�ᷢ���䶯�Լ����˼���ˮƽ���ޣ��ó����޷�����������Ч����������-��-
ECHO. �ڶ���ʹ��ǰ���ȸ�����ʾ����0�ָ���ʼ״̬��Ȼ���ٸ��ݵ�һ��ʹ��ʱ�Ĳ�����в�����
ECHO. ===========================================================================================
pause
:S
set /p number=����������IP�����ڶ�λ������0�ָ���ʼ״̬,����1��ѯ����IP:
if "%number%"=="0" goto Z

if "%number%"=="1" goto I

if "%number%"=="60" goto A0
if "%number%"=="61" goto A1
if "%number%"=="62" goto A2
if "%number%"=="63" goto A3
if "%number%"=="64" goto A4
if "%number%"=="65" goto A5
if "%number%"=="66" goto A6
if "%number%"=="67" goto A7
if "%number%"=="68" goto A8
if "%number%"=="69" goto A9
if "%number%"=="70" goto B0

if "%number%"=="71" goto B1
if "%number%"=="72" goto B2
if "%number%"=="73" goto B3
if "%number%"=="74" goto B4
if "%number%"=="75" goto B5
if "%number%"=="76" goto B6
if "%number%"=="77" goto B7
if "%number%"=="78" goto B8
if "%number%"=="79" goto B9
if "%number%"=="80" goto C0

goto :end
:I
ipconfig
goto S

:Z
route -p delete 10.0.0.0 mask 255.0.0.0 10.64.60.1
route -p delete 10.0.0.0 mask 255.0.0.0 10.64.61.1
route -p delete 10.0.0.0 mask 255.0.0.0 10.64.62.1
route -p delete 10.0.0.0 mask 255.0.0.0 10.64.63.1
route -p delete 10.0.0.0 mask 255.0.0.0 10.64.64.1
route -p delete 10.0.0.0 mask 255.0.0.0 10.64.65.1
route -p delete 10.0.0.0 mask 255.0.0.0 10.64.66.1
route -p delete 10.0.0.0 mask 255.0.0.0 10.64.67.1
route -p delete 10.0.0.0 mask 255.0.0.0 10.64.68.1
route -p delete 10.0.0.0 mask 255.0.0.0 10.64.69.1
route -p delete 10.0.0.0 mask 255.0.0.0 10.64.70.1
route -p delete 10.0.0.0 mask 255.0.0.0 10.64.71.1
route -p delete 10.0.0.0 mask 255.0.0.0 10.64.72.1
route -p delete 10.0.0.0 mask 255.0.0.0 10.64.73.1
route -p delete 10.0.0.0 mask 255.0.0.0 10.64.74.1
route -p delete 10.0.0.0 mask 255.0.0.0 10.64.75.1
route -p delete 10.0.0.0 mask 255.0.0.0 10.64.76.1
route -p delete 10.0.0.0 mask 255.0.0.0 10.64.77.1
route -p delete 10.0.0.0 mask 255.0.0.0 10.64.78.1
route -p delete 10.0.0.0 mask 255.0.0.0 10.64.79.1
route -p delete 10.0.0.0 mask 255.0.0.0 10.64.80.1

goto S

:A0
route -p add 10.0.0.0 mask 255.0.0.0 10.64.60.1
goto :end

:A1
route -p add 10.0.0.0 mask 255.0.0.0 10.64.61.1
goto :end

:A2
route -p add 10.0.0.0 mask 255.0.0.0 10.64.62.1
goto :end

:A3
route -p add 10.0.0.0 mask 255.0.0.0 10.64.63.1
goto :end

:A4
route -p add 10.0.0.0 mask 255.0.0.0 10.64.64.1
goto :end

:A5
route -p add 10.0.0.0 mask 255.0.0.0 10.64.65.1
goto :end

:A6
route -p add 10.0.0.0 mask 255.0.0.0 10.64.66.1
goto :end

:A7
route -p add 10.0.0.0 mask 255.0.0.0 10.64.67.1
goto :end

:A8
route -p add 10.0.0.0 mask 255.0.0.0 10.64.68.1
goto :end

:A9
route -p add 10.0.0.0 mask 255.0.0.0 10.64.69.1
goto :end

:B0
route -p add 10.0.0.0 mask 255.0.0.0 10.64.70.1
goto :end

:B1
route -p add 10.0.0.0 mask 255.0.0.0 10.64.71.1
goto :end

:B2
route -p add 10.0.0.0 mask 255.0.0.0 10.64.72.1
goto :end

:B3
route -p add 10.0.0.0 mask 255.0.0.0 10.64.73.1
goto :end

:B4
route -p add 10.0.0.0 mask 255.0.0.0 10.64.74.1
goto :end

:B5
route -p add 10.0.0.0 mask 255.0.0.0 10.64.75.1
goto :end

:B6
route -p add 10.0.0.0 mask 255.0.0.0 10.64.76.1
goto :end

:B7
route -p add 10.0.0.0 mask 255.0.0.0 10.64.77.1
goto :end

:B8
route -p add 10.0.0.0 mask 255.0.0.0 10.64.78.1
goto :end

:B9
route -p add 10.0.0.0 mask 255.0.0.0 10.64.79.1
goto :end

:C0
route -p add 10.0.0.0 mask 255.0.0.0 10.64.80.1
goto :end


:end
@echo off
echo ��������˳�
pause>nul
exit