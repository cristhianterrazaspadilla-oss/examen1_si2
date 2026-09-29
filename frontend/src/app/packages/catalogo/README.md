# Gestión y consulta del catálogo

CU-06 a CU-14 · Plataforma: web.

[README del proyecto](../../../../../README.md) · [Índice general](../../../../../PAQUETES.md)

Estado físico: carpeta de navegación. El código localizado conserva sus ubicaciones actuales; este paquete no se ha trasladado en esta etapa.

Los enlaces apuntan a archivos reales. La presencia de código o pruebas no significa que se hayan ejecutado ni que el CU esté completo. Un archivo enlazado desde varios CU es compartido y no está duplicado.

## Casos de uso

### CU-06 — Gestionar ciudades y sucursales

[Documento UML](../../../../../docs/uml/ciclo1/gestion-catalogo/CU-06/CU-06.md).

**Componentes/pantallas:** [admin-locations.component.ts](../../features/admin/admin-locations.component.ts); **Rutas:** [admin.routes.ts](../../features/admin/admin.routes.ts)

### CU-07 — Gestionar productos de ropa

[Documento UML](../../../../../docs/uml/ciclo1/gestion-catalogo/CU-07/CU-07.md).

**Componentes/pantallas:** [admin-products.component.ts](../../features/admin/admin-products.component.ts); **Rutas:** [admin.routes.ts](../../features/admin/admin.routes.ts)

### CU-08 — Gestión de categorías, tallas y colores

[Documento UML](../../../../../docs/uml/ciclo2/gestion-catalogo/CU-08/CU-08.md).

**Componentes/pantallas:** [admin-catalog-config.component.ts](../../features/admin/admin-catalog-config.component.ts); **Rutas:** [admin.routes.ts](../../features/admin/admin.routes.ts)

### CU-09 — Gestión de temporadas y colecciones

[Documento UML](../../../../../docs/uml/ciclo2/gestion-catalogo/CU-09/CU-09.md).

**Componentes/pantallas:** [admin-catalog-config.component.ts](../../features/admin/admin-catalog-config.component.ts); **Rutas:** [admin.routes.ts](../../features/admin/admin.routes.ts)

### CU-10 — Gestión de proveedores

[Documento UML](../../../../../docs/uml/ciclo2/gestion-catalogo/CU-10/CU-10.md).

**Componentes/pantallas:** [admin-catalog-config.component.ts](../../features/admin/admin-catalog-config.component.ts); **Rutas:** [admin.routes.ts](../../features/admin/admin.routes.ts)

La web localizada lista y crea proveedores; no se localizó allí edición, aunque existe PATCH en backend.

### CU-11 — Gestionar promociones

[Documento UML](../../../../../docs/uml/ciclo3/gestion-catalogo/CU-11/CU-11.md).

**Componentes/pantallas:** [admin-promotions.component.ts](../../features/admin/admin-promotions.component.ts); **Rutas:** [admin.routes.ts](../../features/admin/admin.routes.ts)

### CU-12 — Consultar catálogo

[Documento UML](../../../../../docs/uml/ciclo1/gestion-catalogo/CU-12/CU-12.md).

**Componentes/pantallas:** [catalog.component.ts](../../features/client/catalog.component.ts); **Servicios y tipos:** [client.service.ts](../../features/client/client.service.ts); **Rutas:** [client.routes.ts](../../features/client/client.routes.ts)

### CU-13 — Buscar y filtrar prendas

[Documento UML](../../../../../docs/uml/ciclo1/gestion-catalogo/CU-13/CU-13.md).

**Componentes/pantallas:** [catalog.component.ts](../../features/client/catalog.component.ts); **Servicios y tipos:** [client.service.ts](../../features/client/client.service.ts); **Rutas:** [client.routes.ts](../../features/client/client.routes.ts)

### CU-14 — Consultar disponibilidad por sucursal

[Documento UML](../../../../../docs/uml/ciclo1/gestion-catalogo/CU-14/CU-14.md).

**Componentes/pantallas:** [product-detail.component.ts](../../features/client/product-detail.component.ts); **Pruebas:** [product-detail.component.spec.ts](../../features/client/product-detail.component.spec.ts); **Servicios y tipos:** [client.service.ts](../../features/client/client.service.ts); **Rutas:** [client.routes.ts](../../features/client/client.routes.ts)

## Componentes/pantallas

- [admin-locations.component.ts](../../features/admin/admin-locations.component.ts) — CU-06.
- [admin-products.component.ts](../../features/admin/admin-products.component.ts) — CU-07.
- [admin-catalog-config.component.ts](../../features/admin/admin-catalog-config.component.ts) — CU-08, CU-09, CU-10. Compartido por estos CU.
- [admin-promotions.component.ts](../../features/admin/admin-promotions.component.ts) — CU-11.
- [catalog.component.ts](../../features/client/catalog.component.ts) — CU-12, CU-13. Compartido por estos CU.
- [product-detail.component.ts](../../features/client/product-detail.component.ts) — CU-14.

## Rutas

- [admin.routes.ts](../../features/admin/admin.routes.ts) — CU-06, CU-07, CU-08, CU-09, CU-10, CU-11. Compartido por estos CU.
- [client.routes.ts](../../features/client/client.routes.ts) — CU-12, CU-13, CU-14. Compartido por estos CU.

## Servicios y tipos

- [client.service.ts](../../features/client/client.service.ts) — CU-12, CU-13, CU-14. Compartido por estos CU.

## Pruebas

- [product-detail.component.spec.ts](../../features/client/product-detail.component.spec.ts) — CU-14.

## Dependencias conservadas

[Autenticación compartida](../../core/auth/auth.service.ts); [cliente API y tipos compartidos](../../features/client/client.service.ts). Las llamadas administrativas que están dentro del componente permanecen allí.
