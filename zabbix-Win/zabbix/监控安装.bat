@ECHO OFF&PUSHD %~DP0 &TITLE zabbix ��װ��
mode con cols=80 lines=30
:menu
cls
echo.
echo zabbix �ͻ��˰�װ�˵�
echo ===============================================
echo.
echo ����1����װzabbix�ͻ���
echo.
echo ����2������zabbix�ͻ���
echo.
echo ����3�����zabbix�ͻ���
echo.
echo ����4���ر�zabbix�ͻ���
echo.
echo ����5��ɾ��zabbix�ͻ���
echo.
echo ===============================================
echo.
echo.
set /p user_input=���������֣�
if %user_input% equ 1 c:\zabbix\bin\win64\zabbix_agentd.exe -c c:\zabbix\conf\zabbix_agentd.win -i
if %user_input% equ 2 c:\zabbix\bin\win64\zabbix_agentd.exe -c c:\zabbix\conf\zabbix_agentd.win -s
if %user_input% equ 3 netstat -an |find "10050"
if %user_input% equ 4 c:\zabbix\bin\win64\zabbix_agentd.exe -c c:\zabbix\conf\zabbix_agentd.win -x
if %user_input% equ 5 c:\zabbix\bin\win64\zabbix_agentd.exe -c c:\zabbix\conf\zabbix_agentd.win -d
pause
goto menu