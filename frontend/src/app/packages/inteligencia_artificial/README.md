# Inteligencia artificial

CU-30 a CU-32 · Plataforma: web.

[README del proyecto](../../../../../README.md) · [Índice general](../../../../../PAQUETES.md)

Estado físico: carpeta de navegación. El código localizado conserva sus ubicaciones actuales; este paquete no se ha trasladado en esta etapa.

Los enlaces apuntan a archivos reales. La presencia de código o pruebas no significa que se hayan ejecutado ni que el CU esté completo. Un archivo enlazado desde varios CU es compartido y no está duplicado.

## Casos de uso

### CU-30 — Recomendar productos mediante IA

[Documento UML](../../../../../docs/uml/ciclo3/inteligencia-artificial/CU-30/CU-30.md).

**Componentes/pantallas:** [recommendations.component.ts](../../features/client/recommendations.component.ts); **Servicios y tipos:** [client.service.ts](../../features/client/client.service.ts); **Rutas:** [client.routes.ts](../../features/client/client.routes.ts)

### CU-31 — Asistir al cliente mediante IA

[Documento UML](../../../../../docs/uml/ciclo3/inteligencia-artificial/CU-31/CU-31.md).

**Componentes/pantallas:** [chat.component.ts](../../features/client/chat.component.ts); **Servicios y tipos:** [client.service.ts](../../features/client/client.service.ts); **Rutas:** [client.routes.ts](../../features/client/client.routes.ts)

### CU-32 — Generar consultas y reportes mediante IA

[Documento UML](../../../../../docs/uml/ciclo3/inteligencia-artificial/CU-32/CU-32.md).

**Componentes/pantallas:** [admin-ai-reports.component.ts](../../features/admin/admin-ai-reports.component.ts); **Rutas:** [admin.routes.ts](../../features/admin/admin.routes.ts)

## Componentes/pantallas

- [recommendations.component.ts](../../features/client/recommendations.component.ts) — CU-30.
- [chat.component.ts](../../features/client/chat.component.ts) — CU-31.
- [admin-ai-reports.component.ts](../../features/admin/admin-ai-reports.component.ts) — CU-32.

## Servicios y tipos

- [client.service.ts](../../features/client/client.service.ts) — CU-30, CU-31. Compartido por estos CU.

## Rutas

- [client.routes.ts](../../features/client/client.routes.ts) — CU-30, CU-31. Compartido por estos CU.
- [admin.routes.ts](../../features/admin/admin.routes.ts) — CU-32.

## Dependencias conservadas

[Autenticación compartida](../../core/auth/auth.service.ts); [cliente API y tipos compartidos](../../features/client/client.service.ts). Las llamadas administrativas que están dentro del componente permanecen allí.
