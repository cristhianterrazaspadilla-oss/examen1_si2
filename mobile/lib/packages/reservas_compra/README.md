# Reservas y experiencia de compra

CU-15 a CU-22 · Plataforma: movil.

[README del proyecto](../../../../README.md) · [Índice general](../../../../PAQUETES.md)

Estado físico: carpeta de navegación. El código localizado conserva sus ubicaciones actuales; este paquete no se ha trasladado en esta etapa.

**Ubicación del código:** este README es un índice. Las pantallas y demás archivos móviles enlazados permanecen en `features/` o `core/`; este paquete contiene documentación, no pantallas trasladadas. Cada sección CU indica los archivos localizados o la ausencia de implementación propia.

**Recorrido entre plataformas:** [backend](../../../../backend/app/packages/reservas_compra/README.md) · [web](../../../../frontend/src/app/packages/reservas_compra/README.md). El README backend muestra `api/` → `services/` → `schemas/` → modelos ORM compartidos en `app/models/`.

Los enlaces apuntan a archivos reales. La presencia de código o pruebas no significa que se hayan ejecutado ni que el CU esté completo. Un archivo enlazado desde varios CU es compartido y no está duplicado.

## Casos de uso

### CU-15 — Gestionar reserva de múltiples prendas

[Documento UML](../../../../docs/uml/ciclo1/reservas/CU-15/CU-15.md).

**Pantallas/widgets:** [product_detail_screen.dart](../../features/catalog/product_detail_screen.dart); **Controladores:** [reservation_controller.dart](../../features/reservations/reservation_controller.dart); **Modelos:** [reservation_models.dart](../../features/reservations/reservation_models.dart); **Pruebas:** [cart_reservation_requests_test.dart](../../../test/cart_reservation_requests_test.dart)

### CU-16 — Consulta y cancelación de reservas del cliente

[Documento UML](../../../../docs/uml/ciclo2/reservas/CU-16/CU-16.md).

**Pantallas/widgets:** [reservations_screen.dart](../../features/reservations/reservations_screen.dart), [reservation_detail_screen.dart](../../features/reservations/reservation_detail_screen.dart); **Controladores:** [reservation_controller.dart](../../features/reservations/reservation_controller.dart); **Modelos:** [reservation_models.dart](../../features/reservations/reservation_models.dart); **Rutas:** [reservation_routes.dart](../../features/reservations/reservation_routes.dart); **Pruebas:** [cart_reservation_requests_test.dart](../../../test/cart_reservation_requests_test.dart)

### CU-17 — Gestión de recepción y atención de reservas

[Documento UML](../../../../docs/uml/ciclo1/reservas/CU-17/CU-17.md).

No localizada: sin implementación propia de este CU en esta plataforma.

### CU-18 — Preparación de prendas reservadas

[Documento UML](../../../../docs/uml/ciclo2/reservas/CU-18/CU-18.md).

No localizada: sin implementación propia de este CU en esta plataforma.

### CU-19 — Vestidor virtual (probador AR)

[Documento UML](../../../../docs/uml/ciclo2/reservas/CU-19/CU-19.md).

**Pantallas/widgets:** [ar_fitting_screen.dart](../../features/ar_fitting/ar_fitting_screen.dart), [garment_overlay_painter.dart](../../features/ar_fitting/garment_overlay_painter.dart); **Servicios:** [pose_detector.dart](../../features/ar_fitting/pose_detector.dart); **Rutas:** [ar_fitting_routes.dart](../../features/ar_fitting/ar_fitting_routes.dart); **Pruebas:** [garment_overlay_painter_test.dart](../../../test/garment_overlay_painter_test.dart)

Probador localizado solo en móvil, con apoyo ar-config del backend. No se acredita aquí el alcance completo del UML ni ejecución en cámara.

### CU-20 — Gestión del carrito de compras

[Documento UML](../../../../docs/uml/ciclo2/reservas/CU-20/CU-20.md).

**Pantallas/widgets:** [cart_screen.dart](../../features/cart/cart_screen.dart); **Controladores:** [cart_controller.dart](../../features/cart/cart_controller.dart); **Modelos:** [models.dart](../../core/models/models.dart); **Rutas:** [cart_routes.dart](../../features/cart/cart_routes.dart); **Pruebas:** [cart_reservation_requests_test.dart](../../../test/cart_reservation_requests_test.dart)

### CU-21 — Realizar compra en línea (web/móvil)

[Documento UML](../../../../docs/uml/ciclo2/ventas-pagos-inventario/CU-21/CU-21.md).

**Pantallas/widgets:** [checkout_screen.dart](../../features/cart/checkout_screen.dart); **Servicios:** [checkout_attempt.dart](../../features/cart/checkout_attempt.dart); **Rutas:** [cart_routes.dart](../../features/cart/cart_routes.dart); **Pruebas:** [checkout_attempt_test.dart](../../../test/checkout_attempt_test.dart), [api_contract_test.dart](../../../test/api_contract_test.dart)

### CU-22 — Consultar historial de compras

[Documento UML](../../../../docs/uml/ciclo3/reservas-compra/CU-22/CU-22.md).

**Pantallas/widgets:** [purchase_history_screen.dart](../../features/profile/purchase_history_screen.dart); **Rutas:** [profile_routes.dart](../../features/profile/profile_routes.dart); **Pruebas:** [api_contract_test.dart](../../../test/api_contract_test.dart)

## Pantallas/widgets

- [product_detail_screen.dart](../../features/catalog/product_detail_screen.dart) — CU-15.
- [reservations_screen.dart](../../features/reservations/reservations_screen.dart) — CU-16.
- [reservation_detail_screen.dart](../../features/reservations/reservation_detail_screen.dart) — CU-16.
- [ar_fitting_screen.dart](../../features/ar_fitting/ar_fitting_screen.dart) — CU-19.
- [garment_overlay_painter.dart](../../features/ar_fitting/garment_overlay_painter.dart) — CU-19.
- [cart_screen.dart](../../features/cart/cart_screen.dart) — CU-20.
- [checkout_screen.dart](../../features/cart/checkout_screen.dart) — CU-21.
- [purchase_history_screen.dart](../../features/profile/purchase_history_screen.dart) — CU-22.

## Controladores

- [reservation_controller.dart](../../features/reservations/reservation_controller.dart) — CU-15, CU-16. Compartido por estos CU.
- [cart_controller.dart](../../features/cart/cart_controller.dart) — CU-20.

## Modelos

- [reservation_models.dart](../../features/reservations/reservation_models.dart) — CU-15, CU-16. Compartido por estos CU.
- [models.dart](../../core/models/models.dart) — CU-20.

## Pruebas

- [cart_reservation_requests_test.dart](../../../test/cart_reservation_requests_test.dart) — CU-15, CU-16, CU-20. Compartido por estos CU.
- [garment_overlay_painter_test.dart](../../../test/garment_overlay_painter_test.dart) — CU-19.
- [checkout_attempt_test.dart](../../../test/checkout_attempt_test.dart) — CU-21.
- [api_contract_test.dart](../../../test/api_contract_test.dart) — CU-21, CU-22. Compartido por estos CU.

## Rutas

- [reservation_routes.dart](../../features/reservations/reservation_routes.dart) — CU-16.
- [ar_fitting_routes.dart](../../features/ar_fitting/ar_fitting_routes.dart) — CU-19.
- [cart_routes.dart](../../features/cart/cart_routes.dart) — CU-20, CU-21. Compartido por estos CU.
- [profile_routes.dart](../../features/profile/profile_routes.dart) — CU-22.

## Servicios

- [pose_detector.dart](../../features/ar_fitting/pose_detector.dart) — CU-19.
- [checkout_attempt.dart](../../features/cart/checkout_attempt.dart) — CU-21.

## Dependencias conservadas

[Cliente API](../../core/network/api_client.dart); [providers](../../core/di/providers.dart); [modelos compartidos](../../core/models/models.dart). Los controladores/modelos que viven dentro de una pantalla permanecen allí.
