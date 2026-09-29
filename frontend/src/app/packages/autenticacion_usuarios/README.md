# Autenticación y gestión de usuarios

CU-01 a CU-05 · Plataforma: web.

[README del proyecto](../../../../../README.md) · [Índice general](../../../../../PAQUETES.md)

Estado físico: carpeta de navegación. El código localizado conserva sus ubicaciones actuales; este paquete no se ha trasladado en esta etapa.

**Ubicación del código:** Este README es un índice: las pantallas y demás archivos enlazados permanecen en `features/`, `core/` o `shared/`, según cada enlace. Cada sección CU indica la pantalla, servicio, ruta o prueba localizada, o señala cuando no hay implementación propia.

**Recorrido entre plataformas:** [backend](../../../../../backend/app/packages/autenticacion_usuarios/README.md) · [móvil](../../../../../mobile/lib/packages/autenticacion_usuarios/README.md). El README backend muestra `api/` → `services/` → `schemas/` → modelos ORM compartidos en `app/models/`.

Los enlaces apuntan a archivos reales. La presencia de código o pruebas no significa que se hayan ejecutado ni que el CU esté completo. Un archivo enlazado desde varios CU es compartido y no está duplicado.

## Casos de uso

### CU-01 — Iniciar sesión

[Documento UML](../../../../../docs/uml/ciclo1/autenticacion-usuarios/CU-01/CU-01.md).

**Componentes/pantallas:** [login.component.ts](../../features/auth/login.component.ts); **Servicios y tipos:** [auth.service.ts](../../core/auth/auth.service.ts); **Rutas:** [auth.routes.ts](../../features/auth/auth.routes.ts)

### CU-02 — Cerrar sesión

[Documento UML](../../../../../docs/uml/ciclo1/autenticacion-usuarios/CU-02/CU-02.md).

**Servicios y tipos:** [auth.service.ts](../../core/auth/auth.service.ts); **Componentes/pantallas:** [client-shell.component.ts](../../features/client/client-shell.component.ts)

### CU-03 — Recuperación de contraseña

[Documento UML](../../../../../docs/uml/ciclo2/autenticacion-usuarios/CU-03/CU-03.md).

**Componentes/pantallas:** [forgot-password.component.ts](../../features/auth/forgot-password.component.ts), [reset-password.component.ts](../../features/auth/reset-password.component.ts); **Servicios y tipos:** [auth.service.ts](../../core/auth/auth.service.ts); **Rutas:** [auth.routes.ts](../../features/auth/auth.routes.ts)

El endpoint documenta recuperación con correo simulado; localizar archivos no acredita entrega de correo.

### CU-04 — Gestionar usuarios y roles

[Documento UML](../../../../../docs/uml/ciclo1/autenticacion-usuarios/CU-04/CU-04.md).

**Componentes/pantallas:** [admin-users.component.ts](../../features/admin/admin-users.component.ts); **Rutas:** [admin.routes.ts](../../features/admin/admin.routes.ts)

### CU-05 — Registro y gestión de perfil de cliente

[Documento UML](../../../../../docs/uml/ciclo2/autenticacion-usuarios/CU-05/CU-05.md).

**Componentes/pantallas:** [register.component.ts](../../features/auth/register.component.ts), [profile.component.ts](../../features/client/profile.component.ts); **Pruebas:** [register.component.spec.ts](../../features/auth/register.component.spec.ts); **Servicios y tipos:** [auth.service.ts](../../core/auth/auth.service.ts); **Rutas:** [client.routes.ts](../../features/client/client.routes.ts)

## Componentes/pantallas

- [login.component.ts](../../features/auth/login.component.ts) — CU-01.
- [client-shell.component.ts](../../features/client/client-shell.component.ts) — CU-02.
- [forgot-password.component.ts](../../features/auth/forgot-password.component.ts) — CU-03.
- [reset-password.component.ts](../../features/auth/reset-password.component.ts) — CU-03.
- [admin-users.component.ts](../../features/admin/admin-users.component.ts) — CU-04.
- [register.component.ts](../../features/auth/register.component.ts) — CU-05.
- [profile.component.ts](../../features/client/profile.component.ts) — CU-05.

## Servicios y tipos

- [auth.service.ts](../../core/auth/auth.service.ts) — CU-01, CU-02, CU-03, CU-05. Compartido por estos CU.

## Rutas

- [auth.routes.ts](../../features/auth/auth.routes.ts) — CU-01, CU-03. Compartido por estos CU.
- [admin.routes.ts](../../features/admin/admin.routes.ts) — CU-04.
- [client.routes.ts](../../features/client/client.routes.ts) — CU-05.

## Pruebas

- [register.component.spec.ts](../../features/auth/register.component.spec.ts) — CU-05.

## Dependencias conservadas

[Autenticación compartida](../../core/auth/auth.service.ts); [cliente API y tipos compartidos](../../features/client/client.service.ts). Las llamadas administrativas que están dentro del componente permanecen allí.
