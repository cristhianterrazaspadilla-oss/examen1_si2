# Reportes y control administrativo

CU-33 a CU-35 · Plataforma: backend.

[README del proyecto](../../../../README.md) · [Índice general](../../../../PAQUETES.md)

Estado físico: implementación de reportes trasladada a esta carpeta en la etapa 1.

**Recorrido del CU:** abra su sección abajo y siga `api/` → `services/` → `schemas/` → `app/models/` mediante los enlaces de Rutas/controladores, Servicios, Esquemas y Modelos compartidos. Estas capas existen; un CU puede compartir archivos o no tener una capa propia. Los modelos ORM reales y compartidos permanecen en `app/models/` para evitar duplicarlos o romper sus relaciones. `app/services/__init__.py` se conserva como compatibilidad de paquete; la lógica de servicios actual está en `app/packages/*/services/`.

**Otras plataformas:** [web](../../../../frontend/src/app/packages/reportes_administracion/README.md) · [móvil](../../../../mobile/lib/packages/reportes_administracion/README.md).

Los enlaces apuntan a archivos reales. La presencia de código o pruebas no significa que se hayan ejecutado ni que el CU esté completo. Un archivo enlazado desde varios CU es compartido y no está duplicado.

## Casos de uso

### CU-33 — Consultar reportes e indicadores

[Documento UML](../../../../docs/uml/ciclo3/reportes/CU-33/CU-33.md).

**Rutas/controladores:** [routes_reports.py](api/routes_reports.py); **Servicios:** [report_service.py](services/report_service.py); **Esquemas:** [report.py](schemas/report.py), [reports.py](schemas/reports.py); **Modelos compartidos:** [sales.py](../../models/sales.py), [inventory.py](../../models/inventory.py), [catalog.py](../../models/catalog.py), [user.py](../../models/user.py); **Pruebas:** [test_cu33_cu34_cu35_reports.py](../../../tests/packages/reportes_administracion/test_cu33_cu34_cu35_reports.py)

### CU-34 — Consultar bitácora y trazabilidad del sistema

[Documento UML](../../../../docs/uml/ciclo3/reportes/CU-34/CU-34.md).

**Rutas/controladores:** [routes_reports.py](api/routes_reports.py); **Servicios:** [audit_service.py](services/audit_service.py); **Esquemas:** [report.py](schemas/report.py), [reports.py](schemas/reports.py); **Modelos compartidos:** [analytics.py](../../models/analytics.py), [user.py](../../models/user.py); **Pruebas:** [test_cu33_cu34_cu35_reports.py](../../../tests/packages/reportes_administracion/test_cu33_cu34_cu35_reports.py)

### CU-35 — Consultar información consolidada de ventas e inventario

[Documento UML](../../../../docs/uml/ciclo3/reportes/CU-35/CU-35.md).

**Rutas/controladores:** [routes_reports.py](api/routes_reports.py); **Servicios:** [report_service.py](services/report_service.py); **Esquemas:** [report.py](schemas/report.py), [reports.py](schemas/reports.py); **Modelos compartidos:** [sales.py](../../models/sales.py), [inventory.py](../../models/inventory.py), [catalog.py](../../models/catalog.py), [user.py](../../models/user.py); **Pruebas:** [test_cu33_cu34_cu35_reports.py](../../../tests/packages/reportes_administracion/test_cu33_cu34_cu35_reports.py)

## Rutas/controladores

- [routes_reports.py](api/routes_reports.py) — CU-33, CU-34, CU-35. Compartido por estos CU.

## Servicios

- [report_service.py](services/report_service.py) — CU-33, CU-35. Compartido por estos CU.
- [audit_service.py](services/audit_service.py) — CU-34.

## Esquemas

- [report.py](schemas/report.py) — CU-33, CU-34, CU-35. Compartido por estos CU.
- [reports.py](schemas/reports.py) — CU-33, CU-34, CU-35. Compartido por estos CU.

## Modelos compartidos

- [sales.py](../../models/sales.py) — CU-33, CU-35. Compartido por estos CU.
- [inventory.py](../../models/inventory.py) — CU-33, CU-35. Compartido por estos CU.
- [catalog.py](../../models/catalog.py) — CU-33, CU-35. Compartido por estos CU.
- [user.py](../../models/user.py) — CU-33, CU-34, CU-35. Compartido por estos CU.
- [analytics.py](../../models/analytics.py) — CU-34.

## Pruebas

- [test_cu33_cu34_cu35_reports.py](../../../tests/packages/reportes_administracion/test_cu33_cu34_cu35_reports.py) — CU-33, CU-34, CU-35. Compartido por estos CU.

## Dependencias conservadas

[Registro central de rutas](../../api/v1/router.py); [sesión y autorización](../../core/dependencies.py); [esquemas comunes](../../schemas/common.py).

Los modelos mixtos siguen en `app/models/`; no se separan tablas ni clases ORM. `report.py` es el esquema importado por el router; `reports.py` conserva sus declaraciones existentes sin fusionarlas. CU-33, CU-34 y CU-35 comparten router y archivo de pruebas.

La suite enlazada conserva el `tests/conftest.py` superior: requiere una base desechable identificada y no se ejecuta durante esta etapa.
