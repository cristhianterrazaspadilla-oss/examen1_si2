@echo off
cd /d "%~dp0"
python -c "with open('app/packages/reportes_administracion/services/report_service.py', 'r') as f: content = f.read(); content = content.replace('query = self.db.query(Sale).filter(\n            Sale.paid_at >= start_date,\n            Sale.paid_at <= end_date,\n            Sale.status == SaleStatus.PAID,\n        }\n        }\n        if branch_id:', 'query = self.db.query(Sale).filter(\n            Sale.paid_at >= start_date,\n            Sale.paid_at <= end_date,\n            Sale.status == SaleStatus.PAID,\n        )\n        if branch_id:'); print('Fixed')"
pause