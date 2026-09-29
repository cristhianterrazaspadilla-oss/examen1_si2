# Ventas, pagos e inventario

CU-23 a CU-29 · Plataforma: backend.

[README del proyecto](../../../../README.md) · [Índice general](../../../../PAQUETES.md)

Estado físico: rutas, servicios y esquemas con dueño claro están en su paquete. Los archivos mixtos o transversales, modelos ORM y pruebas conservan las ubicaciones enlazadas.

**Recorrido del CU:** abra su sección abajo y siga `api/` → `services/` → `schemas/` → `app/models/` mediante los enlaces de Rutas/controladores, Servicios, Esquemas y Modelos compartidos. Estas capas existen; un CU puede compartir archivos o no tener una capa propia. Los modelos ORM reales y compartidos permanecen en `app/models/` para evitar duplicarlos o romper sus relaciones. `app/services/__init__.py` se conserva como compatibilidad de paquete; la lógica de servicios actual está en `app/packages/*/services/`.

**Otras plataformas:** [web](../../../../frontend/src/app/packages/ventas_pagos_inventario/README.md) · [móvil](../../../../mobile/lib/packages/ventas_pagos_inventario/README.md).

Los enlaces apuntan a archivos reales. La presencia de código o pruebas no significa que se hayan ejecutado ni que el CU esté completo. Un archivo enlazado desde varios CU es compartido y no está duplicado.

## Casos de uso

### CU-23 — Venta presencial

[Documento UML](../../../../docs/uml/ciclo2/ventas-pagos-inventario/CU-23/CU-23.md).

**Rutas/controladores:** [routes_sales.py](api/routes_sales.py); **Servicios:** [sales_service.py](services/sales_service.py), [payment_service.py](services/payment_service.py); **Esquemas:** [sale.py](schemas/sale.py), [payment.py](schemas/payment.py); **Modelos compartidos:** [sales.py](../../models/sales.py), [reservation.py](../../models/reservation.py), [inventory.py](../../models/inventory.py); **Pruebas:** [test_cu23_cu24.py](../../../tests/test_cu23_cu24.py)

### CU-24 — Pago en caja y comprobante

[Documento UML](../../../../docs/uml/ciclo2/ventas-pagos-inventario/CU-24/CU-24.md).

**Rutas/controladores:** [routes_sales.py](api/routes_sales.py), [payments.py](../../payments/api/v1/payments.py); **Servicios:** [payment_service.py](services/payment_service.py), [receipt_service.py](services/receipt_service.py), [service.py](../../payments/domain/service.py), [factory.py](../../payments/factory.py); **Esquemas:** [payment.py](schemas/payment.py), [receipt.py](schemas/receipt.py); **Modelos compartidos:** [sales.py](../../models/sales.py); **Pruebas:** [test_cu23_cu24.py](../../../tests/test_cu23_cu24.py), [test_mock_checkout.py](../../../isolated_tests/test_mock_checkout.py)

Código de cobro y comprobante localizado; no acredita por sí solo emisión fiscal externa.

### CU-25 — Procesar pago electrónico

[Documento UML](../../../../docs/uml/ciclo3/ventas-pagos/CU-25/CU-25.md).

**Servicios:** [payment_service.py](services/payment_service.py), [service.py](../../payments/domain/service.py), [factory.py](../../payments/factory.py); **Esquemas:** [payment.py](schemas/payment.py); **Modelos compartidos:** [sales.py](../../models/sales.py); **Pruebas:** [test_cu25_payments.py](../../../tests/test_cu25_payments.py), [test_mock_checkout.py](../../../isolated_tests/test_mock_checkout.py); **Rutas/controladores:** [payments.py](../../payments/api/v1/payments.py)

### CU-26 — Consultar comprobantes y compras

[Documento UML](../../../../docs/uml/ciclo3/ventas-pagos/CU-26/CU-26.md).

**Rutas/controladores:** [routes_receipt.py](api/routes_receipt.py), [routes_sales.py](api/routes_sales.py); **Servicios:** [receipt_service.py](services/receipt_service.py); **Esquemas:** [receipt.py](schemas/receipt.py), [sale.py](schemas/sale.py); **Modelos compartidos:** [sales.py](../../models/sales.py)

### CU-27 — Gestionar existencias por sucursal

[Documento UML](../../../../docs/uml/ciclo3/ventas-pagos/CU-27/CU-27.md).

**Rutas/controladores:** [routes_inventory.py](api/routes_inventory.py); **Servicios:** [inventory_service.py](services/inventory_service.py), [stock_locking.py](services/stock_locking.py); **Esquemas:** [inventory.py](schemas/inventory.py); **Modelos compartidos:** [inventory.py](../../models/inventory.py), [movement.py](../../models/movement.py); **Pruebas:** [test_inventory.py](../../../tests/test_inventory.py), [test_stock_concurrency.py](../../../tests/test_stock_concurrency.py)

### CU-28 — Registrar movimientos de inventario

[Documento UML](../../../../docs/uml/ciclo3/ventas-pagos/CU-28/CU-28.md).

**Rutas/controladores:** [routes_inventory.py](api/routes_inventory.py); **Servicios:** [inventory_service.py](services/inventory_service.py), [stock_locking.py](services/stock_locking.py); **Esquemas:** [inventory.py](schemas/inventory.py); **Modelos compartidos:** [inventory.py](../../models/inventory.py), [movement.py](../../models/movement.py); **Pruebas:** [test_inventory.py](../../../tests/test_inventory.py), [test_stock_concurrency.py](../../../tests/test_stock_concurrency.py)

Implementación parcial frente al UML: consulta y ajustes IN/OUT; no se localizó POST /inventory/movements con todos los tipos y filtros descritos.

### CU-29 — Registrar recepción de productos

[Documento UML](../../../../docs/uml/ciclo3/ventas-pagos/CU-29/CU-29.md).

**Rutas/controladores:** [routes_reception.py](api/routes_reception.py); **Servicios:** [reception_service.py](services/reception_service.py), [stock_locking.py](services/stock_locking.py); **Esquemas:** [reception.py](schemas/reception.py); **Modelos compartidos:** [movement.py](../../models/movement.py), [inventory.py](../../models/inventory.py); **Pruebas:** [test_stock_concurrency.py](../../../tests/test_stock_concurrency.py)

Implementación parcial frente al UML: recepción en una fase; no se localizó el flujo posterior PATCH /receive y sus estados.

## Rutas/controladores

- [routes_sales.py](api/routes_sales.py) — CU-23, CU-24, CU-26. Compartido por estos CU.
- [payments.py](../../payments/api/v1/payments.py) — CU-24, CU-25. Compartido por estos CU.
- [routes_receipt.py](api/routes_receipt.py) — CU-26.
- [routes_inventory.py](api/routes_inventory.py) — CU-27, CU-28. Compartido por estos CU.
- [routes_reception.py](api/routes_reception.py) — CU-29.

## Servicios

- [sales_service.py](services/sales_service.py) — CU-23.
- [payment_service.py](services/payment_service.py) — CU-23, CU-24, CU-25. Compartido por estos CU.
- [receipt_service.py](services/receipt_service.py) — CU-24, CU-26. Compartido por estos CU.
- [service.py](../../payments/domain/service.py) — CU-24, CU-25. Compartido por estos CU.
- [factory.py](../../payments/factory.py) — CU-24, CU-25. Compartido por estos CU.
- [inventory_service.py](services/inventory_service.py) — CU-27, CU-28. Compartido por estos CU.
- [stock_locking.py](services/stock_locking.py) — CU-27, CU-28, CU-29. Compartido por estos CU.
- [reception_service.py](services/reception_service.py) — CU-29.

## Esquemas

- [sale.py](schemas/sale.py) — CU-23, CU-26. Compartido por estos CU.
- [payment.py](schemas/payment.py) — CU-23, CU-24, CU-25. Compartido por estos CU.
- [receipt.py](schemas/receipt.py) — CU-24, CU-26. Compartido por estos CU.
- [inventory.py](schemas/inventory.py) — CU-27, CU-28. Compartido por estos CU.
- [reception.py](schemas/reception.py) — CU-29.

## Modelos compartidos

- [sales.py](../../models/sales.py) — CU-23, CU-24, CU-25, CU-26. Compartido por estos CU.
- [reservation.py](../../models/reservation.py) — CU-23.
- [inventory.py](../../models/inventory.py) — CU-23, CU-27, CU-28, CU-29. Compartido por estos CU.
- [movement.py](../../models/movement.py) — CU-27, CU-28, CU-29. Compartido por estos CU.

## Pruebas

- [test_cu23_cu24.py](../../../tests/test_cu23_cu24.py) — CU-23, CU-24. Compartido por estos CU.
- [test_mock_checkout.py](../../../isolated_tests/test_mock_checkout.py) — CU-24, CU-25. Compartido por estos CU.
- [test_cu25_payments.py](../../../tests/test_cu25_payments.py) — CU-25.
- [test_inventory.py](../../../tests/test_inventory.py) — CU-27, CU-28. Compartido por estos CU.
- [test_stock_concurrency.py](../../../tests/test_stock_concurrency.py) — CU-27, CU-28, CU-29. Compartido por estos CU.

## Dependencias conservadas

[Registro central de rutas](../../api/v1/router.py); [sesión y autorización](../../core/dependencies.py); [esquemas comunes](../../schemas/common.py).

`stock_locking.py` tiene un único dueño aquí. Además de ventas, recepción e inventario, lo importa [reservation_service.py](../reservas_compra/services/reservation_service.py). `sales_service.py` se usa también en la compra en línea (CU-21); `receipt_service.py` y pagos se comparten con consulta de comprobantes (CU-26).

Ventas y sincronización de inventario usan [notification_service.py](../autenticacion_usuarios/services/notification_service.py), cuyo dueño único es autenticación/usuarios. Las ventas de reservas importan [reservation_service.py](../reservas_compra/services/reservation_service.py); cada servicio permanece en un solo archivo.
