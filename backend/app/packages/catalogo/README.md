# Gestión y consulta del catálogo

CU-06 a CU-14 · Plataforma: backend.

[README del proyecto](../../../../README.md) · [Índice general](../../../../PAQUETES.md)

Estado físico: rutas, servicios y esquemas con dueño claro están en su paquete. Los archivos mixtos o transversales, modelos ORM y pruebas conservan las ubicaciones enlazadas.

**Recorrido del CU:** abra su sección abajo y siga `api/` → `services/` → `schemas/` → `app/models/` mediante los enlaces de Rutas/controladores, Servicios, Esquemas y Modelos compartidos. Estas capas existen; un CU puede compartir archivos o no tener una capa propia. Los modelos ORM reales y compartidos permanecen en `app/models/` para evitar duplicarlos o romper sus relaciones. `app/services/__init__.py` se conserva como compatibilidad de paquete; la lógica de servicios actual está en `app/packages/*/services/`.

**Otras plataformas:** [web](../../../../frontend/src/app/packages/catalogo/README.md) · [móvil](../../../../mobile/lib/packages/catalogo/README.md).

Los enlaces apuntan a archivos reales. La presencia de código o pruebas no significa que se hayan ejecutado ni que el CU esté completo. Un archivo enlazado desde varios CU es compartido y no está duplicado.

## Casos de uso

### CU-06 — Gestionar ciudades y sucursales

[Documento UML](../../../../docs/uml/ciclo1/gestion-catalogo/CU-06/CU-06.md).

**Rutas/controladores:** [routes_locations.py](api/routes_locations.py); **Servicios:** [location_service.py](services/location_service.py); **Esquemas:** [location.py](schemas/location.py); **Modelos compartidos:** [user.py](../../models/user.py); **Pruebas:** [test_locations.py](../../../tests/test_locations.py)

### CU-07 — Gestionar productos de ropa

[Documento UML](../../../../docs/uml/ciclo1/gestion-catalogo/CU-07/CU-07.md).

**Rutas/controladores:** [routes_products.py](api/routes_products.py); **Servicios:** [product_service.py](services/product_service.py); **Esquemas:** [product.py](schemas/product.py); **Modelos compartidos:** [catalog.py](../../models/catalog.py); **Pruebas:** [test_products.py](../../../tests/test_products.py)

### CU-08 — Gestión de categorías, tallas y colores

[Documento UML](../../../../docs/uml/ciclo2/gestion-catalogo/CU-08/CU-08.md).

**Rutas/controladores:** [routes_catalog_config.py](api/routes_catalog_config.py), [routes_catalog.py](api/routes_catalog.py); **Servicios:** [catalog_config_service.py](services/catalog_config_service.py); **Esquemas:** [catalog.py](schemas/catalog.py); **Modelos compartidos:** [catalog.py](../../models/catalog.py); **Pruebas:** [test_cu08_cu09_cu10.py](../../../tests/test_cu08_cu09_cu10.py)

### CU-09 — Gestión de temporadas y colecciones

[Documento UML](../../../../docs/uml/ciclo2/gestion-catalogo/CU-09/CU-09.md).

**Rutas/controladores:** [routes_catalog_config.py](api/routes_catalog_config.py); **Servicios:** [catalog_config_service.py](services/catalog_config_service.py); **Esquemas:** [catalog.py](schemas/catalog.py); **Modelos compartidos:** [catalog.py](../../models/catalog.py); **Pruebas:** [test_cu08_cu09_cu10.py](../../../tests/test_cu08_cu09_cu10.py)

### CU-10 — Gestión de proveedores

[Documento UML](../../../../docs/uml/ciclo2/gestion-catalogo/CU-10/CU-10.md).

**Rutas/controladores:** [routes_suppliers.py](api/routes_suppliers.py); **Servicios:** [supplier_service.py](services/supplier_service.py); **Esquemas:** [user.py](../../schemas/user.py); **Modelos compartidos:** [user.py](../../models/user.py); **Pruebas:** [test_cu08_cu09_cu10.py](../../../tests/test_cu08_cu09_cu10.py)

La web localizada lista y crea proveedores; no se localizó allí edición, aunque existe PATCH en backend.

### CU-11 — Gestionar promociones

[Documento UML](../../../../docs/uml/ciclo3/gestion-catalogo/CU-11/CU-11.md).

**Rutas/controladores:** [routes_promotions.py](api/routes_promotions.py); **Servicios:** [promotion_service.py](services/promotion_service.py); **Esquemas:** [promotions.py](schemas/promotions.py); **Modelos compartidos:** [analytics.py](../../models/analytics.py), [catalog.py](../../models/catalog.py)

### CU-12 — Consultar catálogo

[Documento UML](../../../../docs/uml/ciclo1/gestion-catalogo/CU-12/CU-12.md).

**Rutas/controladores:** [routes_catalog.py](api/routes_catalog.py); **Servicios:** [catalog_service.py](services/catalog_service.py); **Esquemas:** [catalog.py](schemas/catalog.py); **Modelos compartidos:** [catalog.py](../../models/catalog.py), [inventory.py](../../models/inventory.py); **Pruebas:** [test_catalog.py](../../../tests/test_catalog.py)

### CU-13 — Buscar y filtrar prendas

[Documento UML](../../../../docs/uml/ciclo1/gestion-catalogo/CU-13/CU-13.md).

**Rutas/controladores:** [routes_catalog.py](api/routes_catalog.py); **Servicios:** [catalog_service.py](services/catalog_service.py); **Esquemas:** [catalog.py](schemas/catalog.py); **Modelos compartidos:** [catalog.py](../../models/catalog.py), [inventory.py](../../models/inventory.py); **Pruebas:** [test_catalog.py](../../../tests/test_catalog.py)

### CU-14 — Consultar disponibilidad por sucursal

[Documento UML](../../../../docs/uml/ciclo1/gestion-catalogo/CU-14/CU-14.md).

**Rutas/controladores:** [routes_catalog.py](api/routes_catalog.py); **Servicios:** [catalog_service.py](services/catalog_service.py); **Esquemas:** [catalog.py](schemas/catalog.py); **Modelos compartidos:** [catalog.py](../../models/catalog.py), [inventory.py](../../models/inventory.py); **Pruebas:** [test_catalog.py](../../../tests/test_catalog.py)

## Rutas/controladores

- [routes_locations.py](api/routes_locations.py) — CU-06.
- [routes_products.py](api/routes_products.py) — CU-07.
- [routes_catalog_config.py](api/routes_catalog_config.py) — CU-08, CU-09. Compartido por estos CU.
- [routes_catalog.py](api/routes_catalog.py) — CU-08, CU-12, CU-13, CU-14. Compartido por estos CU.
- [routes_suppliers.py](api/routes_suppliers.py) — CU-10.
- [routes_promotions.py](api/routes_promotions.py) — CU-11.

## Servicios

- [location_service.py](services/location_service.py) — CU-06.
- [product_service.py](services/product_service.py) — CU-07.
- [catalog_config_service.py](services/catalog_config_service.py) — CU-08, CU-09. Compartido por estos CU.
- [supplier_service.py](services/supplier_service.py) — CU-10.
- [promotion_service.py](services/promotion_service.py) — CU-11.
- [catalog_service.py](services/catalog_service.py) — CU-12, CU-13, CU-14. Compartido por estos CU.

## Esquemas

- [location.py](schemas/location.py) — CU-06.
- [product.py](schemas/product.py) — CU-07.
- [catalog.py](schemas/catalog.py) — CU-08, CU-09, CU-12, CU-13, CU-14. Compartido por estos CU.
- [user.py](../../schemas/user.py) — CU-10.
- [promotions.py](schemas/promotions.py) — CU-11.

## Modelos compartidos

- [user.py](../../models/user.py) — CU-06, CU-10. Compartido por estos CU.
- [catalog.py](../../models/catalog.py) — CU-07, CU-08, CU-09, CU-11, CU-12, CU-13, CU-14. Compartido por estos CU.
- [analytics.py](../../models/analytics.py) — CU-11.
- [inventory.py](../../models/inventory.py) — CU-12, CU-13, CU-14. Compartido por estos CU.

## Pruebas

- [test_locations.py](../../../tests/test_locations.py) — CU-06.
- [test_products.py](../../../tests/test_products.py) — CU-07.
- [test_cu08_cu09_cu10.py](../../../tests/test_cu08_cu09_cu10.py) — CU-08, CU-09, CU-10. Compartido por estos CU.
- [test_catalog.py](../../../tests/test_catalog.py) — CU-12, CU-13, CU-14. Compartido por estos CU.

## Dependencias conservadas

[Registro central de rutas](../../api/v1/router.py); [sesión y autorización](../../core/dependencies.py); [esquemas comunes](../../schemas/common.py).

[user.py](../../schemas/user.py) contiene también esquemas de usuarios y roles, por lo que el CU-10 lo comparte con el paquete de autenticación. Permanece en su ubicación actual sin dividirse.
