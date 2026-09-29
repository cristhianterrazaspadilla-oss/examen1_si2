# Reservas y experiencia de compra

CU-15 a CU-22 · Plataforma: web.

[README del proyecto](../../../../../README.md) · [Índice general](../../../../../PAQUETES.md)

Estado físico: carpeta de navegación. El código localizado conserva sus ubicaciones actuales; este paquete no se ha trasladado en esta etapa.

Los enlaces apuntan a archivos reales. La presencia de código o pruebas no significa que se hayan ejecutado ni que el CU esté completo. Un archivo enlazado desde varios CU es compartido y no está duplicado.

## Casos de uso

### CU-15 — Gestionar reserva de múltiples prendas

[Documento UML](../../../../../docs/uml/ciclo1/reservas/CU-15/CU-15.md).

**Componentes/pantallas:** [product-detail.component.ts](../../features/client/product-detail.component.ts), [cart.component.ts](../../features/client/cart.component.ts); **Pruebas:** [product-detail.component.spec.ts](../../features/client/product-detail.component.spec.ts); **Servicios y tipos:** [client.service.ts](../../features/client/client.service.ts); **Rutas:** [client.routes.ts](../../features/client/client.routes.ts)

### CU-16 — Consulta y cancelación de reservas del cliente

[Documento UML](../../../../../docs/uml/ciclo2/reservas/CU-16/CU-16.md).

**Componentes/pantallas:** [reservations.component.ts](../../features/client/reservations.component.ts), [reservation-detail.component.ts](../../features/client/reservation-detail.component.ts); **Pruebas:** [reservations.component.spec.ts](../../features/client/reservations.component.spec.ts); **Servicios y tipos:** [client.service.ts](../../features/client/client.service.ts); **Rutas:** [client.routes.ts](../../features/client/client.routes.ts)

### CU-17 — Gestión de recepción y atención de reservas

[Documento UML](../../../../../docs/uml/ciclo1/reservas/CU-17/CU-17.md).

**Componentes/pantallas:** [staff-reservations.component.ts](../../features/staff/staff-reservations.component.ts); **Pruebas:** [staff-reservations.component.spec.ts](../../features/staff/staff-reservations.component.spec.ts); **Rutas:** [staff.routes.ts](../../features/staff/staff.routes.ts)

### CU-18 — Preparación de prendas reservadas

[Documento UML](../../../../../docs/uml/ciclo2/reservas/CU-18/CU-18.md).

**Componentes/pantallas:** [staff-reservations.component.ts](../../features/staff/staff-reservations.component.ts); **Pruebas:** [staff-reservations.component.spec.ts](../../features/staff/staff-reservations.component.spec.ts); **Rutas:** [staff.routes.ts](../../features/staff/staff.routes.ts)

### CU-19 — Vestidor virtual (probador AR)

[Documento UML](../../../../../docs/uml/ciclo2/reservas/CU-19/CU-19.md).

No localizada: sin implementación propia de este CU en esta plataforma.

Probador localizado solo en móvil, con apoyo ar-config del backend. No se acredita aquí el alcance completo del UML ni ejecución en cámara.

### CU-20 — Gestión del carrito de compras

[Documento UML](../../../../../docs/uml/ciclo2/reservas/CU-20/CU-20.md).

**Componentes/pantallas:** [cart.component.ts](../../features/client/cart.component.ts); **Pruebas:** [cart.component.spec.ts](../../features/client/cart.component.spec.ts); **Servicios y tipos:** [client.service.ts](../../features/client/client.service.ts); **Rutas:** [client.routes.ts](../../features/client/client.routes.ts)

### CU-21 — Realizar compra en línea (web/móvil)

[Documento UML](../../../../../docs/uml/ciclo2/ventas-pagos-inventario/CU-21/CU-21.md).

**Componentes/pantallas:** [checkout.component.ts](../../features/client/checkout.component.ts); **Pruebas:** [checkout.component.spec.ts](../../features/client/checkout.component.spec.ts); **Servicios y tipos:** [client.service.ts](../../features/client/client.service.ts); **Rutas:** [client.routes.ts](../../features/client/client.routes.ts)

### CU-22 — Consultar historial de compras

[Documento UML](../../../../../docs/uml/ciclo3/reservas-compra/CU-22/CU-22.md).

**Componentes/pantallas:** [purchase-history.component.ts](../../features/client/purchase-history.component.ts); **Servicios y tipos:** [client.service.ts](../../features/client/client.service.ts); **Rutas:** [client.routes.ts](../../features/client/client.routes.ts)

## Componentes/pantallas

- [product-detail.component.ts](../../features/client/product-detail.component.ts) — CU-15.
- [cart.component.ts](../../features/client/cart.component.ts) — CU-15, CU-20. Compartido por estos CU.
- [reservations.component.ts](../../features/client/reservations.component.ts) — CU-16.
- [reservation-detail.component.ts](../../features/client/reservation-detail.component.ts) — CU-16.
- [staff-reservations.component.ts](../../features/staff/staff-reservations.component.ts) — CU-17, CU-18. Compartido por estos CU.
- [checkout.component.ts](../../features/client/checkout.component.ts) — CU-21.
- [purchase-history.component.ts](../../features/client/purchase-history.component.ts) — CU-22.

## Pruebas

- [product-detail.component.spec.ts](../../features/client/product-detail.component.spec.ts) — CU-15.
- [reservations.component.spec.ts](../../features/client/reservations.component.spec.ts) — CU-16.
- [staff-reservations.component.spec.ts](../../features/staff/staff-reservations.component.spec.ts) — CU-17, CU-18. Compartido por estos CU.
- [cart.component.spec.ts](../../features/client/cart.component.spec.ts) — CU-20.
- [checkout.component.spec.ts](../../features/client/checkout.component.spec.ts) — CU-21.

## Servicios y tipos

- [client.service.ts](../../features/client/client.service.ts) — CU-15, CU-16, CU-20, CU-21, CU-22. Compartido por estos CU.

## Rutas

- [client.routes.ts](../../features/client/client.routes.ts) — CU-15, CU-16, CU-20, CU-21, CU-22. Compartido por estos CU.
- [staff.routes.ts](../../features/staff/staff.routes.ts) — CU-17, CU-18. Compartido por estos CU.

## Dependencias conservadas

[Autenticación compartida](../../core/auth/auth.service.ts); [cliente API y tipos compartidos](../../features/client/client.service.ts). Las llamadas administrativas que están dentro del componente permanecen allí.
