# Gestión y consulta del catálogo

CU-06 a CU-14 · Plataforma: movil.

[README del proyecto](../../../../README.md) · [Índice general](../../../../PAQUETES.md)

Estado físico: carpeta de navegación. El código localizado conserva sus ubicaciones actuales; este paquete no se ha trasladado en esta etapa.

Los enlaces apuntan a archivos reales. La presencia de código o pruebas no significa que se hayan ejecutado ni que el CU esté completo. Un archivo enlazado desde varios CU es compartido y no está duplicado.

## Casos de uso

### CU-06 — Gestionar ciudades y sucursales

[Documento UML](../../../../docs/uml/ciclo1/gestion-catalogo/CU-06/CU-06.md).

No localizada: sin implementación propia de este CU en esta plataforma.

### CU-07 — Gestionar productos de ropa

[Documento UML](../../../../docs/uml/ciclo1/gestion-catalogo/CU-07/CU-07.md).

No localizada: sin implementación propia de este CU en esta plataforma.

### CU-08 — Gestión de categorías, tallas y colores

[Documento UML](../../../../docs/uml/ciclo2/gestion-catalogo/CU-08/CU-08.md).

No localizada: sin implementación propia de este CU en esta plataforma.

### CU-09 — Gestión de temporadas y colecciones

[Documento UML](../../../../docs/uml/ciclo2/gestion-catalogo/CU-09/CU-09.md).

No localizada: sin implementación propia de este CU en esta plataforma.

### CU-10 — Gestión de proveedores

[Documento UML](../../../../docs/uml/ciclo2/gestion-catalogo/CU-10/CU-10.md).

No localizada: sin implementación propia de este CU en esta plataforma.

La web localizada lista y crea proveedores; no se localizó allí edición, aunque existe PATCH en backend.

### CU-11 — Gestionar promociones

[Documento UML](../../../../docs/uml/ciclo3/gestion-catalogo/CU-11/CU-11.md).

Parcial: consulta de promociones; no se localizó gestión administrativa móvil. **Pantallas/widgets:** [promotions_screen.dart](../../features/promotions/promotions_screen.dart); **Controladores:** [promotions_controller.dart](../../features/promotions/promotions_controller.dart); **Modelos:** [promotion_models.dart](../../features/promotions/promotion_models.dart); **Rutas:** [promotions_routes.dart](../../features/promotions/promotions_routes.dart)

### CU-12 — Consultar catálogo

[Documento UML](../../../../docs/uml/ciclo1/gestion-catalogo/CU-12/CU-12.md).

**Pantallas/widgets:** [catalog_screen.dart](../../features/catalog/catalog_screen.dart), [product_detail_screen.dart](../../features/catalog/product_detail_screen.dart); **Controladores:** [catalog_controller.dart](../../features/catalog/catalog_controller.dart); **Modelos:** [catalog.dart](../../core/models/catalog.dart); **Rutas:** [catalog_routes.dart](../../features/catalog/catalog_routes.dart)

### CU-13 — Buscar y filtrar prendas

[Documento UML](../../../../docs/uml/ciclo1/gestion-catalogo/CU-13/CU-13.md).

**Pantallas/widgets:** [catalog_screen.dart](../../features/catalog/catalog_screen.dart), [product_detail_screen.dart](../../features/catalog/product_detail_screen.dart), [filter_sheet.dart](../../features/catalog/widgets/filter_sheet.dart); **Controladores:** [catalog_controller.dart](../../features/catalog/catalog_controller.dart); **Modelos:** [catalog.dart](../../core/models/catalog.dart); **Rutas:** [catalog_routes.dart](../../features/catalog/catalog_routes.dart)

### CU-14 — Consultar disponibilidad por sucursal

[Documento UML](../../../../docs/uml/ciclo1/gestion-catalogo/CU-14/CU-14.md).

**Pantallas/widgets:** [catalog_screen.dart](../../features/catalog/catalog_screen.dart), [product_detail_screen.dart](../../features/catalog/product_detail_screen.dart); **Controladores:** [catalog_controller.dart](../../features/catalog/catalog_controller.dart); **Modelos:** [catalog.dart](../../core/models/catalog.dart); **Rutas:** [catalog_routes.dart](../../features/catalog/catalog_routes.dart)

## Pantallas/widgets

- [promotions_screen.dart](../../features/promotions/promotions_screen.dart) — CU-11.
- [catalog_screen.dart](../../features/catalog/catalog_screen.dart) — CU-12, CU-13, CU-14. Compartido por estos CU.
- [product_detail_screen.dart](../../features/catalog/product_detail_screen.dart) — CU-12, CU-13, CU-14. Compartido por estos CU.
- [filter_sheet.dart](../../features/catalog/widgets/filter_sheet.dart) — CU-13.

## Controladores

- [promotions_controller.dart](../../features/promotions/promotions_controller.dart) — CU-11.
- [catalog_controller.dart](../../features/catalog/catalog_controller.dart) — CU-12, CU-13, CU-14. Compartido por estos CU.

## Modelos

- [promotion_models.dart](../../features/promotions/promotion_models.dart) — CU-11.
- [catalog.dart](../../core/models/catalog.dart) — CU-12, CU-13, CU-14. Compartido por estos CU.

## Rutas

- [promotions_routes.dart](../../features/promotions/promotions_routes.dart) — CU-11.
- [catalog_routes.dart](../../features/catalog/catalog_routes.dart) — CU-12, CU-13, CU-14. Compartido por estos CU.

## Dependencias conservadas

[Cliente API](../../core/network/api_client.dart); [providers](../../core/di/providers.dart); [modelos compartidos](../../core/models/models.dart). Los controladores/modelos que viven dentro de una pantalla permanecen allí.
