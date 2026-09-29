@echo off
cd /d "%~dp0"
python -c "with open('app/packages/reportes_administracion/services/report_service.py') as f: lines = f.readlines(); [print(f'{i+53}: {repr(line)}') for i, line in enumerate(lines[52:65])]"
pause