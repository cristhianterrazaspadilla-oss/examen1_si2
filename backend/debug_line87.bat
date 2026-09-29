@echo off
cd /d "%~dp0"
python -c "with open('app/packages/reportes_administracion/services/report_service.py') as f: lines = f.readlines(); [print(f'{i+84}: {repr(line)}') for i, line in enumerate(lines[83:95])]"
pause