@echo off
set origem=C:\Users\ruben.menezes\Desktop\teste1
set destino=C:\Users\ruben.menezes\Desktop\teste2
xcopy /s /e /h /i /c /y "%origem%" "%destino%"
if %errorlevel%==0 (
    curl -d "Backup concluido." ntfy.sh/monitoramento
) else (
    curl -d "Backup não concluido." ntfy.sh/monitoramento
)
pause
