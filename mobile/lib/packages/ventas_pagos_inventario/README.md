# Ventas, pagos e inventario

CU-23 a CU-29 · Plataforma: movil.

[README del proyecto](../../../../README.md) · [Índice general](../../../../PAQUETES.md)

Estado físico: carpeta de navegación. El código localizado conserva sus ubicaciones actuales; este paquete no se ha trasladado en esta etapa.

**Ubicación del código:** este README es un índice. Las pantallas y demás archivos móviles enlazados permanecen en `features/` o `core/`; este paquete contiene documentación, no pantallas trasladadas. Cada sección CU indica los archivos localizados o la ausencia de implementación propia.

**Recorrido entre plataformas:** [backend](../../../../backend/app/packages/ventas_pagos_inventario/README.md) · [web](../../../../frontend/src/app/packages/ventas_pagos_inventario/README.md). El README backend muestra `api/` → `services/` → `schemas/` → modelos ORM compartidos en `app/models/`.

Los enlaces apuntan a archivos reales. La presencia de código o pruebas no significa que se hayan ejecutado ni que el CU esté completo. Un archivo enlazado desde varios CU es compartido y no está duplicado.

## Casos de uso

### CU-23 — Venta presencial

[Documento UML](../../../../docs/uml/ciclo2/ventas-pagos-inventario/CU-23/CU-23.md).

No localizada: sin implementación propia de este CU en esta plataforma.

### CU-24 — Pago en caja y comprobante

[Documento UML](../../../../docs/uml/ciclo2/ventas-pagos-inventario/CU-24/CU-24.md).

No localizada: sin implementación propia de este CU en esta plataforma.

Código de cobro y comprobante localizado; no acredita por sí solo emisión fiscal externa.

### CU-25 — Procesar pago electrónico

[Documento UML](../../../../docs/uml/ciclo3/ventas-pagos/CU-25/CU-25.md).

**Pantallas/widgets:** [checkout_screen.dart](../../features/cart/checkout_screen.dart); **Servicios:** [checkout_attempt.dart](../../features/cart/checkout_attempt.dart); **Rutas:** [cart_routes.dart](../../features/cart/cart_routes.dart); **Pruebas:** [checkout_attempt_test.dart](../../../test/checkout_attempt_test.dart), [api_contract_test.dart](../../../test/api_contract_test.dart)

### CU-26 — Consultar comprobantes y compras

[Documento UML](../../../../docs/uml/ciclo3/ventas-pagos/CU-26/CU-26.md).

**Pantallas/widgets:** [purchase_history_screen.dart](../../features/profile/purchase_history_screen.dart); **Rutas:** [profile_routes.dart](../../features/profile/profile_routes.dart); **Pruebas:** [api_contract_test.dart](../../../test/api_contract_test.dart)

### CU-27 — Gestionar existencias por sucursal

[Documento UML](../../../../docs/uml/ciclo3/ventas-pagos/CU-27/CU-27.md).

No localizada: sin implementación propia de este CU en esta plataforma.

### CU-28 — Registrar movimientos de inventario

[Documento UML](../../../../docs/uml/ciclo3/ventas-pagos/CU-28/CU-28.md).

No localizada: sin implementación propia de este CU en esta plataforma.

Implementación parcial frente al UML: consulta y ajustes IN/OUT; no se localizó POST /inventory/movements con todos los tipos y filtros descritos.

### CU-29 — Registrar recepción de productos

[Documento UML](../../../../docs/uml/ciclo3/ventas-pagos/CU-29/CU-29.md).

No localizada: sin implementación propia de este CU en esta plataforma.

Implementación parcial frente al UML: recepción en una fase; no se localizó el flujo posterior PATCH /receive y sus estados.

## Pantallas/widgets

- [checkout_screen.dart](../../features/cart/checkout_screen.dart) — CU-25.
- [purchase_history_screen.dart](../../features/profile/purchase_history_screen.dart) — CU-26.

## Servicios

- [checkout_attempt.dart](../../features/cart/checkout_attempt.dart) — CU-25.

## Rutas

- [cart_routes.dart](../../features/cart/cart_routes.dart) — CU-25.
- [profile_routes.dart](../../features/profile/profile_routes.dart) — CU-26.

## Pruebas

- [checkout_attempt_test.dart](../../../test/checkout_attempt_test.dart) — CU-25.
- [api_contract_test.dart](../../../test/api_contract_test.dart) — CU-25, CU-26. Compartido por estos CU.

## Dependencias conservadas

[Cliente API](../../core/network/api_client.dart); [providers](../../core/di/providers.dart); [modelos compartidos](../../core/models/models.dart). Los controladores/modelos que viven dentro de una pantalla permanecen allí.
