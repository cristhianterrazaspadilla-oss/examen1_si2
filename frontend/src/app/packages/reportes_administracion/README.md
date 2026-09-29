# Reportes y control administrativo

CU-33 a CU-35 · Plataforma: web.

[README del proyecto](../../../../../README.md) · [Índice general](../../../../../PAQUETES.md)

Estado físico: implementación de reportes trasladada a esta carpeta en la etapa 1.

Los enlaces apuntan a archivos reales. La presencia de código o pruebas no significa que se hayan ejecutado ni que el CU esté completo. Un archivo enlazado desde varios CU es compartido y no está duplicado.

## Casos de uso

### CU-33 — Consultar reportes e indicadores

[Documento UML](../../../../../docs/uml/ciclo3/reportes/CU-33/CU-33.md).

**Componentes/pantallas:** [admin-reports.component.ts](pages/admin-reports.component.ts); **Rutas:** [admin.routes.ts](../../features/admin/admin.routes.ts)

### CU-34 — Consultar bitácora y trazabilidad del sistema

[Documento UML](../../../../../docs/uml/ciclo3/reportes/CU-34/CU-34.md).

**Componentes/pantallas:** [admin-reports.component.ts](pages/admin-reports.component.ts); **Rutas:** [admin.routes.ts](../../features/admin/admin.routes.ts)

### CU-35 — Consultar información consolidada de ventas e inventario

[Documento UML](../../../../../docs/uml/ciclo3/reportes/CU-35/CU-35.md).

**Componentes/pantallas:** [admin-reports.component.ts](pages/admin-reports.component.ts); **Rutas:** [admin.routes.ts](../../features/admin/admin.routes.ts)

## Componentes/pantallas

- [admin-reports.component.ts](pages/admin-reports.component.ts) — CU-33, CU-34, CU-35. Compartido por estos CU.

## Rutas

- [admin.routes.ts](../../features/admin/admin.routes.ts) — CU-33, CU-34, CU-35. Compartido por estos CU.

## Dependencias conservadas

[Autenticación compartida](../../core/auth/auth.service.ts); [configuración de API](../../core/environments/environment.ts); [botón compartido](../../shared/ui/button/button.component.ts). Este componente hace sus llamadas HTTP directamente; no utiliza ClientService.

CU-33, CU-34 y CU-35 comparten un único `AdminReportsComponent`. Incluye plantilla, tipos locales y llamadas HTTP; no se extraen servicios o modelos nuevos. No se localizó un spec dedicado de este componente. La ruta administrativa existente se conserva.
