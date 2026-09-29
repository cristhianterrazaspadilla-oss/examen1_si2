# Autenticación y gestión de usuarios

CU-01 a CU-05 · Plataforma: movil.

[README del proyecto](../../../../README.md) · [Índice general](../../../../PAQUETES.md)

Estado físico: carpeta de navegación. El código localizado conserva sus ubicaciones actuales; este paquete no se ha trasladado en esta etapa.

Los enlaces apuntan a archivos reales. La presencia de código o pruebas no significa que se hayan ejecutado ni que el CU esté completo. Un archivo enlazado desde varios CU es compartido y no está duplicado.

## Casos de uso

### CU-01 — Iniciar sesión

[Documento UML](../../../../docs/uml/ciclo1/autenticacion-usuarios/CU-01/CU-01.md).

**Pantallas/widgets:** [login_screen.dart](../../features/auth/login_screen.dart); **Controladores:** [auth_controller.dart](../../features/auth/auth_controller.dart); **Rutas:** [auth_routes.dart](../../features/auth/auth_routes.dart)

### CU-02 — Cerrar sesión

[Documento UML](../../../../docs/uml/ciclo1/autenticacion-usuarios/CU-02/CU-02.md).

**Controladores:** [auth_controller.dart](../../features/auth/auth_controller.dart); **Pantallas/widgets:** [profile_screen.dart](../../features/profile/profile_screen.dart)

### CU-03 — Recuperación de contraseña

[Documento UML](../../../../docs/uml/ciclo2/autenticacion-usuarios/CU-03/CU-03.md).

**Pantallas/widgets:** [forgot_password_screen.dart](../../features/auth/forgot_password_screen.dart), [reset_password_screen.dart](../../features/auth/reset_password_screen.dart); **Rutas:** [auth_routes.dart](../../features/auth/auth_routes.dart)

El endpoint documenta recuperación con correo simulado; localizar archivos no acredita entrega de correo.

### CU-04 — Gestionar usuarios y roles

[Documento UML](../../../../docs/uml/ciclo1/autenticacion-usuarios/CU-04/CU-04.md).

No localizada: sin implementación propia de este CU en esta plataforma.

### CU-05 — Registro y gestión de perfil de cliente

[Documento UML](../../../../docs/uml/ciclo2/autenticacion-usuarios/CU-05/CU-05.md).

**Pantallas/widgets:** [register_screen.dart](../../features/auth/register_screen.dart), [profile_screen.dart](../../features/profile/profile_screen.dart); **Controladores:** [auth_controller.dart](../../features/auth/auth_controller.dart); **Rutas:** [profile_routes.dart](../../features/profile/profile_routes.dart)

## Pantallas/widgets

- [login_screen.dart](../../features/auth/login_screen.dart) — CU-01.
- [profile_screen.dart](../../features/profile/profile_screen.dart) — CU-02, CU-05. Compartido por estos CU.
- [forgot_password_screen.dart](../../features/auth/forgot_password_screen.dart) — CU-03.
- [reset_password_screen.dart](../../features/auth/reset_password_screen.dart) — CU-03.
- [register_screen.dart](../../features/auth/register_screen.dart) — CU-05.

## Controladores

- [auth_controller.dart](../../features/auth/auth_controller.dart) — CU-01, CU-02, CU-05. Compartido por estos CU.

## Rutas

- [auth_routes.dart](../../features/auth/auth_routes.dart) — CU-01, CU-03. Compartido por estos CU.
- [profile_routes.dart](../../features/profile/profile_routes.dart) — CU-05.

## Dependencias conservadas

[Cliente API](../../core/network/api_client.dart); [providers](../../core/di/providers.dart); [modelos compartidos](../../core/models/models.dart). Los controladores/modelos que viven dentro de una pantalla permanecen allí.
