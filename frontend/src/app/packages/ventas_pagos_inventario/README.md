# Ventas, pagos e inventario

CU-23 a CU-29 · Plataforma: web.

[README del proyecto](../../../../../README.md) · [Índice general](../../../../../PAQUETES.md)

Estado físico: carpeta de navegación. El código localizado conserva sus ubicaciones actuales; este paquete no se ha trasladado en esta etapa.

Los enlaces apuntan a archivos reales. La presencia de código o pruebas no significa que se hayan ejecutado ni que el CU esté completo. Un archivo enlazado desde varios CU es compartido y no está duplicado.

## Casos de uso

### CU-23 — Venta presencial

[Documento UML](../../../../../docs/uml/ciclo2/ventas-pagos-inventario/CU-23/CU-23.md).

**Componentes/pantallas:** [pos.component.ts](../../features/pos/pos.component.ts); **Rutas:** [pos.routes.ts](../../features/pos/pos.routes.ts)

### CU-24 — Pago en caja y comprobante

[Documento UML](../../../../../docs/uml/ciclo2/ventas-pagos-inventario/CU-24/CU-24.md).

**Componentes/pantallas:** [pos.component.ts](../../features/pos/pos.component.ts); **Rutas:** [pos.routes.ts](../../features/pos/pos.routes.ts)

Código de cobro y comprobante localizado; no acredita por sí solo emisión fiscal externa.

### CU-25 — Procesar pago electrónico

[Documento UML](../../../../../docs/uml/ciclo3/ventas-pagos/CU-25/CU-25.md).

**Componentes/pantallas:** [checkout.component.ts](../../features/client/checkout.component.ts); **Pruebas:** [checkout.component.spec.ts](../../features/client/checkout.component.spec.ts); **Servicios y tipos:** [client.service.ts](../../features/client/client.service.ts); **Rutas:** [client.routes.ts](../../features/client/client.routes.ts)

### CU-26 — Consultar comprobantes y compras

[Documento UML](../../../../../docs/uml/ciclo3/ventas-pagos/CU-26/CU-26.md).

**Componentes/pantallas:** [purchase-history.component.ts](../../features/client/purchase-history.component.ts), [pos.component.ts](../../features/pos/pos.component.ts); **Servicios y tipos:** [client.service.ts](../../features/client/client.service.ts); **Rutas:** [client.routes.ts](../../features/client/client.routes.ts), [pos.routes.ts](../../features/pos/pos.routes.ts)

### CU-27 — Gestionar existencias por sucursal

[Documento UML](../../../../../docs/uml/ciclo3/ventas-pagos/CU-27/CU-27.md).

**Componentes/pantallas:** [admin-inventory.component.ts](../../features/admin/admin-inventory.component.ts); **Rutas:** [admin.routes.ts](../../features/admin/admin.routes.ts)

### CU-28 — Registrar movimientos de inventario

[Documento UML](../../../../../docs/uml/ciclo3/ventas-pagos/CU-28/CU-28.md).

**Componentes/pantallas:** [admin-inventory.component.ts](../../features/admin/admin-inventory.component.ts), [admin-reception.component.ts](../../features/admin/admin-reception.component.ts); **Rutas:** [admin.routes.ts](../../features/admin/admin.routes.ts)

Implementación parcial frente al UML: consulta y ajustes IN/OUT; no se localizó POST /inventory/movements con todos los tipos y filtros descritos.

### CU-29 — Registrar recepción de productos

[Documento UML](../../../../../docs/uml/ciclo3/ventas-pagos/CU-29/CU-29.md).

**Componentes/pantallas:** [admin-reception.component.ts](../../features/admin/admin-reception.component.ts); **Rutas:** [admin.routes.ts](../../features/admin/admin.routes.ts)

Implementación parcial frente al UML: recepción en una fase; no se localizó el flujo posterior PATCH /receive y sus estados.

## Componentes/pantallas

- [pos.component.ts](../../features/pos/pos.component.ts) — CU-23, CU-24, CU-26. Compartido por estos CU.
- [checkout.component.ts](../../features/client/checkout.component.ts) — CU-25.
- [purchase-history.component.ts](../../features/client/purchase-history.component.ts) — CU-26.
- [admin-inventory.component.ts](../../features/admin/admin-inventory.component.ts) — CU-27, CU-28. Compartido por estos CU.
- [admin-reception.component.ts](../../features/admin/admin-reception.component.ts) — CU-28, CU-29. Compartido por estos CU.

## Rutas

- [pos.routes.ts](../../features/pos/pos.routes.ts) — CU-23, CU-24, CU-26. Compartido por estos CU.
- [client.routes.ts](../../features/client/client.routes.ts) — CU-25, CU-26. Compartido por estos CU.
- [admin.routes.ts](../../features/admin/admin.routes.ts) — CU-27, CU-28, CU-29. Compartido por estos CU.

## Pruebas

- [checkout.component.spec.ts](../../features/client/checkout.component.spec.ts) — CU-25.

## Servicios y tipos

- [client.service.ts](../../features/client/client.service.ts) — CU-25, CU-26. Compartido por estos CU.

## Dependencias conservadas

[Autenticación compartida](../../core/auth/auth.service.ts); [cliente API y tipos compartidos](../../features/client/client.service.ts). Las llamadas administrativas que están dentro del componente permanecen allí.
