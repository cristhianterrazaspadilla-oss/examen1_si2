# Reservas y experiencia de compra

CU-15 a CU-22 · Plataforma: backend.

[README del proyecto](../../../../README.md) · [Índice general](../../../../PAQUETES.md)

Estado físico: los servicios enlazados están en este paquete o en el paquete dueño indicado. Rutas, esquemas, modelos y pruebas conservan sus ubicaciones actuales.

Los enlaces apuntan a archivos reales. La presencia de código o pruebas no significa que se hayan ejecutado ni que el CU esté completo. Un archivo enlazado desde varios CU es compartido y no está duplicado.

## Casos de uso

### CU-15 — Gestionar reserva de múltiples prendas

[Documento UML](../../../../docs/uml/ciclo1/reservas/CU-15/CU-15.md).

**Rutas/controladores:** [routes_reservations.py](../../api/v1/routes_reservations.py), [routes_cart.py](../../api/v1/routes_cart.py); **Servicios:** [reservation_service.py](services/reservation_service.py), [cart_service.py](services/cart_service.py), [stock_locking.py](../ventas_pagos_inventario/services/stock_locking.py); **Esquemas:** [reservation.py](../../schemas/reservation.py), [cart.py](../../schemas/cart.py); **Modelos compartidos:** [reservation.py](../../models/reservation.py), [inventory.py](../../models/inventory.py), [cart.py](../../models/cart.py); **Pruebas:** [test_reservations.py](../../../tests/test_reservations.py)

### CU-16 — Consulta y cancelación de reservas del cliente

[Documento UML](../../../../docs/uml/ciclo2/reservas/CU-16/CU-16.md).

**Rutas/controladores:** [routes_reservations.py](../../api/v1/routes_reservations.py); **Servicios:** [reservation_service.py](services/reservation_service.py); **Esquemas:** [reservation.py](../../schemas/reservation.py); **Modelos compartidos:** [reservation.py](../../models/reservation.py), [inventory.py](../../models/inventory.py); **Pruebas:** [test_reservations.py](../../../tests/test_reservations.py), [test_cu16_cu18.py](../../../tests/test_cu16_cu18.py)

### CU-17 — Gestión de recepción y atención de reservas

[Documento UML](../../../../docs/uml/ciclo1/reservas/CU-17/CU-17.md).

**Rutas/controladores:** [routes_reservations.py](../../api/v1/routes_reservations.py); **Servicios:** [reservation_service.py](services/reservation_service.py); **Esquemas:** [reservation.py](../../schemas/reservation.py); **Modelos compartidos:** [reservation.py](../../models/reservation.py), [inventory.py](../../models/inventory.py); **Pruebas:** [test_reservations.py](../../../tests/test_reservations.py), [test_cu16_cu18.py](../../../tests/test_cu16_cu18.py)

### CU-18 — Preparación de prendas reservadas

[Documento UML](../../../../docs/uml/ciclo2/reservas/CU-18/CU-18.md).

**Rutas/controladores:** [routes_reservations.py](../../api/v1/routes_reservations.py); **Servicios:** [reservation_service.py](services/reservation_service.py); **Esquemas:** [reservation.py](../../schemas/reservation.py); **Modelos compartidos:** [reservation.py](../../models/reservation.py), [inventory.py](../../models/inventory.py); **Pruebas:** [test_reservations.py](../../../tests/test_reservations.py), [test_cu16_cu18.py](../../../tests/test_cu16_cu18.py)

### CU-19 — Vestidor virtual (probador AR)

[Documento UML](../../../../docs/uml/ciclo2/reservas/CU-19/CU-19.md).

**Rutas/controladores:** [routes_catalog.py](../../api/v1/routes_catalog.py); **Servicios:** [catalog_service.py](../catalogo/services/catalog_service.py); **Esquemas:** [catalog.py](../../schemas/catalog.py); **Modelos compartidos:** [catalog.py](../../models/catalog.py)

Probador localizado solo en móvil, con apoyo ar-config del backend. No se acredita aquí el alcance completo del UML ni ejecución en cámara.

### CU-20 — Gestión del carrito de compras

[Documento UML](../../../../docs/uml/ciclo2/reservas/CU-20/CU-20.md).

**Rutas/controladores:** [routes_cart.py](../../api/v1/routes_cart.py); **Servicios:** [cart_service.py](services/cart_service.py); **Esquemas:** [cart.py](../../schemas/cart.py); **Modelos compartidos:** [cart.py](../../models/cart.py), [inventory.py](../../models/inventory.py); **Pruebas:** [test_cu20_cu21.py](../../../tests/test_cu20_cu21.py)

### CU-21 — Realizar compra en línea (web/móvil)

[Documento UML](../../../../docs/uml/ciclo2/ventas-pagos-inventario/CU-21/CU-21.md).

**Rutas/controladores:** [routes_cart.py](../../api/v1/routes_cart.py), [payments.py](../../payments/api/v1/payments.py); **Servicios:** [sales_service.py](../ventas_pagos_inventario/services/sales_service.py), [payment_service.py](../ventas_pagos_inventario/services/payment_service.py), [cart_service.py](services/cart_service.py), [service.py](../../payments/domain/service.py), [factory.py](../../payments/factory.py); **Esquemas:** [cart.py](../../schemas/cart.py), [sale.py](../../schemas/sale.py), [payment.py](../../schemas/payment.py); **Modelos compartidos:** [sales.py](../../models/sales.py), [cart.py](../../models/cart.py), [inventory.py](../../models/inventory.py); **Pruebas:** [test_cu20_cu21.py](../../../tests/test_cu20_cu21.py), [test_mock_checkout.py](../../../isolated_tests/test_mock_checkout.py)

### CU-22 — Consultar historial de compras

[Documento UML](../../../../docs/uml/ciclo3/reservas-compra/CU-22/CU-22.md).

**Rutas/controladores:** [routes_history.py](../../api/v1/routes_history.py); **Servicios:** [history_service.py](services/history_service.py); **Esquemas:** [history.py](../../schemas/history.py); **Modelos compartidos:** [sales.py](../../models/sales.py), [reservation.py](../../models/reservation.py)

## Rutas/controladores

- [routes_reservations.py](../../api/v1/routes_reservations.py) — CU-15, CU-16, CU-17, CU-18. Compartido por estos CU.
- [routes_cart.py](../../api/v1/routes_cart.py) — CU-15, CU-20, CU-21. Compartido por estos CU.
- [routes_catalog.py](../../api/v1/routes_catalog.py) — CU-19.
- [payments.py](../../payments/api/v1/payments.py) — CU-21.
- [routes_history.py](../../api/v1/routes_history.py) — CU-22.

## Servicios

- [reservation_service.py](services/reservation_service.py) — CU-15, CU-16, CU-17, CU-18. Compartido por estos CU.
- [cart_service.py](services/cart_service.py) — CU-15, CU-20, CU-21. Compartido por estos CU.
- [stock_locking.py](../ventas_pagos_inventario/services/stock_locking.py) — CU-15.
- [catalog_service.py](../catalogo/services/catalog_service.py) — CU-19.
- [sales_service.py](../ventas_pagos_inventario/services/sales_service.py) — CU-21.
- [payment_service.py](../ventas_pagos_inventario/services/payment_service.py) — CU-21.
- [service.py](../../payments/domain/service.py) — CU-21.
- [factory.py](../../payments/factory.py) — CU-21.
- [history_service.py](services/history_service.py) — CU-22.

## Esquemas

- [reservation.py](../../schemas/reservation.py) — CU-15, CU-16, CU-17, CU-18. Compartido por estos CU.
- [cart.py](../../schemas/cart.py) — CU-15, CU-20, CU-21. Compartido por estos CU.
- [catalog.py](../../schemas/catalog.py) — CU-19.
- [sale.py](../../schemas/sale.py) — CU-21.
- [payment.py](../../schemas/payment.py) — CU-21.
- [history.py](../../schemas/history.py) — CU-22.

## Modelos compartidos

- [reservation.py](../../models/reservation.py) — CU-15, CU-16, CU-17, CU-18, CU-22. Compartido por estos CU.
- [inventory.py](../../models/inventory.py) — CU-15, CU-16, CU-17, CU-18, CU-20, CU-21. Compartido por estos CU.
- [cart.py](../../models/cart.py) — CU-15, CU-20, CU-21. Compartido por estos CU.
- [catalog.py](../../models/catalog.py) — CU-19.
- [sales.py](../../models/sales.py) — CU-21, CU-22. Compartido por estos CU.

## Pruebas

- [test_reservations.py](../../../tests/test_reservations.py) — CU-15, CU-16, CU-17, CU-18. Compartido por estos CU.
- [test_cu16_cu18.py](../../../tests/test_cu16_cu18.py) — CU-16, CU-17, CU-18. Compartido por estos CU.
- [test_cu20_cu21.py](../../../tests/test_cu20_cu21.py) — CU-20, CU-21. Compartido por estos CU.
- [test_mock_checkout.py](../../../isolated_tests/test_mock_checkout.py) — CU-21.

## Dependencias conservadas

[Registro central de rutas](../../api/v1/router.py); [sesión y autorización](../../core/dependencies.py); [esquemas comunes](../../schemas/common.py).

`reservation_service.py` es compartido por CU-15 a CU-18 y se importa desde [sales_service.py](../ventas_pagos_inventario/services/sales_service.py). Reservas importa [stock_locking.py](../ventas_pagos_inventario/services/stock_locking.py), cuyo dueño único es ventas/inventario. `cart_service.py` consulta el modelo compartido de inventario. `history_service.py` consulta modelos de ventas e inventario sin moverlos.

Las transiciones de reserva usan [notification_service.py](../autenticacion_usuarios/services/notification_service.py), cuyo dueño único es autenticación/usuarios.
