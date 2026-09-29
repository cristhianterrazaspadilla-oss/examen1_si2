@echo off
cd /d "%~dp0"
python -c "import sys; sys.path.insert(0, '.'); from app.packages.reportes_administracion.services.report_service import ReportService; print('Import successful')"
pause