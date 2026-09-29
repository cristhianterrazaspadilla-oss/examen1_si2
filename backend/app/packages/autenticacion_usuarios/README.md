# Autenticación y gestión de usuarios

CU-01 a CU-05 · Plataforma: backend.

[README del proyecto](../../../../README.md) · [Índice general](../../../../PAQUETES.md)

Estado físico: los servicios enlazados están en este paquete o en el paquete dueño indicado. Rutas, esquemas, modelos y pruebas conservan sus ubicaciones actuales.

Los enlaces apuntan a archivos reales. La presencia de código o pruebas no significa que se hayan ejecutado ni que el CU esté completo. Un archivo enlazado desde varios CU es compartido y no está duplicado.

## Casos de uso

### CU-01 — Iniciar sesión

[Documento UML](../../../../docs/uml/ciclo1/autenticacion-usuarios/CU-01/CU-01.md).

**Rutas/controladores:** [routes_auth.py](../../api/v1/routes_auth.py); **Servicios:** [auth_service.py](services/auth_service.py); **Esquemas:** [auth.py](../../schemas/auth.py); **Modelos compartidos:** [user.py](../../models/user.py); **Pruebas:** [test_auth_users.py](../../../tests/test_auth_users.py)

### CU-02 — Cerrar sesión

[Documento UML](../../../../docs/uml/ciclo1/autenticacion-usuarios/CU-02/CU-02.md).

**Rutas/controladores:** [routes_auth.py](../../api/v1/routes_auth.py); **Esquemas:** [common.py](../../schemas/common.py); **Pruebas:** [test_auth_users.py](../../../tests/test_auth_users.py)

### CU-03 — Recuperación de contraseña

[Documento UML](../../../../docs/uml/ciclo2/autenticacion-usuarios/CU-03/CU-03.md).

**Rutas/controladores:** [routes_auth.py](../../api/v1/routes_auth.py); **Servicios:** [auth_service.py](services/auth_service.py), [notification_service.py](services/notification_service.py); **Esquemas:** [auth.py](../../schemas/auth.py); **Modelos compartidos:** [user.py](../../models/user.py), [analytics.py](../../models/analytics.py); **Pruebas:** [test_cu03_cu05.py](../../../tests/test_cu03_cu05.py)

El endpoint documenta recuperación con correo simulado; localizar archivos no acredita entrega de correo.

### CU-04 — Gestionar usuarios y roles

[Documento UML](../../../../docs/uml/ciclo1/autenticacion-usuarios/CU-04/CU-04.md).

**Rutas/controladores:** [routes_users.py](../../api/v1/routes_users.py); **Servicios:** [user_service.py](services/user_service.py); **Esquemas:** [user.py](../../schemas/user.py); **Modelos compartidos:** [user.py](../../models/user.py); **Pruebas:** [test_auth_users.py](../../../tests/test_auth_users.py)

### CU-05 — Registro y gestión de perfil de cliente

[Documento UML](../../../../docs/uml/ciclo2/autenticacion-usuarios/CU-05/CU-05.md).

**Rutas/controladores:** [routes_auth.py](../../api/v1/routes_auth.py), [routes_clients.py](../../api/v1/routes_clients.py); **Servicios:** [auth_service.py](services/auth_service.py); **Esquemas:** [auth.py](../../schemas/auth.py), [client.py](../../schemas/client.py); **Modelos compartidos:** [user.py](../../models/user.py); **Pruebas:** [test_cu03_cu05.py](../../../tests/test_cu03_cu05.py)

## Rutas/controladores

- [routes_auth.py](../../api/v1/routes_auth.py) — CU-01, CU-02, CU-03, CU-05. Compartido por estos CU.
- [routes_users.py](../../api/v1/routes_users.py) — CU-04.
- [routes_clients.py](../../api/v1/routes_clients.py) — CU-05.

## Servicios

- [auth_service.py](services/auth_service.py) — CU-01, CU-03, CU-05. Compartido por estos CU.
- [notification_service.py](services/notification_service.py) — CU-03.
- [user_service.py](services/user_service.py) — CU-04.

## Esquemas

- [auth.py](../../schemas/auth.py) — CU-01, CU-03, CU-05. Compartido por estos CU.
- [common.py](../../schemas/common.py) — CU-02.
- [user.py](../../schemas/user.py) — CU-04.
- [client.py](../../schemas/client.py) — CU-05.

## Modelos compartidos

- [user.py](../../models/user.py) — CU-01, CU-03, CU-04, CU-05. Compartido por estos CU.
- [analytics.py](../../models/analytics.py) — CU-03.

## Pruebas

- [test_auth_users.py](../../../tests/test_auth_users.py) — CU-01, CU-02, CU-04. Compartido por estos CU.
- [test_cu03_cu05.py](../../../tests/test_cu03_cu05.py) — CU-03, CU-05. Compartido por estos CU.

## Dependencias conservadas

[Registro central de rutas](../../api/v1/router.py); [sesión y autorización](../../core/dependencies.py); [esquemas comunes](../../schemas/common.py).

`notification_service.py` tiene un único dueño físico aquí. Además de CU-03, lo importan [reservation_service.py](../reservas_compra/services/reservation_service.py), [sales_service.py](../ventas_pagos_inventario/services/sales_service.py) y [inventory_sync.py](../../tasks/inventory_sync.py). Su modelo ORM `Notification` continúa en [analytics.py](../../models/analytics.py).
