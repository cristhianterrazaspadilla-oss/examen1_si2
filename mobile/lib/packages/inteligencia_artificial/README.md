# Inteligencia artificial

CU-30 a CU-32 · Plataforma: movil.

[README del proyecto](../../../../README.md) · [Índice general](../../../../PAQUETES.md)

Estado físico: carpeta de navegación. El código localizado conserva sus ubicaciones actuales; este paquete no se ha trasladado en esta etapa.

**Ubicación del código:** este README es un índice. Las pantallas y demás archivos móviles enlazados permanecen en `features/` o `core/`; este paquete contiene documentación, no pantallas trasladadas. Cada sección CU indica los archivos localizados o la ausencia de implementación propia.

**Recorrido entre plataformas:** [backend](../../../../backend/app/packages/inteligencia_artificial/README.md) · [web](../../../../frontend/src/app/packages/inteligencia_artificial/README.md). El README backend muestra `api/` → `services/` → `schemas/` → modelos ORM compartidos en `app/models/`.

Los enlaces apuntan a archivos reales. La presencia de código o pruebas no significa que se hayan ejecutado ni que el CU esté completo. Un archivo enlazado desde varios CU es compartido y no está duplicado.

## Casos de uso

### CU-30 — Recomendar productos mediante IA

[Documento UML](../../../../docs/uml/ciclo3/inteligencia-artificial/CU-30/CU-30.md).

**Pantallas/widgets:** [recommendations_screen.dart](../../features/ai/recommendations_screen.dart); **Modelos:** [models.dart](../../core/models/models.dart); **Rutas:** [ai_routes.dart](../../features/ai/ai_routes.dart); **Pruebas:** [api_contract_test.dart](../../../test/api_contract_test.dart)

### CU-31 — Asistir al cliente mediante IA

[Documento UML](../../../../docs/uml/ciclo3/inteligencia-artificial/CU-31/CU-31.md).

**Pantallas/widgets:** [ai_chat_screen.dart](../../features/ai/ai_chat_screen.dart); **Rutas:** [ai_routes.dart](../../features/ai/ai_routes.dart)

### CU-32 — Generar consultas y reportes mediante IA

[Documento UML](../../../../docs/uml/ciclo3/inteligencia-artificial/CU-32/CU-32.md).

No localizada: sin implementación propia de este CU en esta plataforma.

## Pantallas/widgets

- [recommendations_screen.dart](../../features/ai/recommendations_screen.dart) — CU-30.
- [ai_chat_screen.dart](../../features/ai/ai_chat_screen.dart) — CU-31.

## Modelos

- [models.dart](../../core/models/models.dart) — CU-30.

## Rutas

- [ai_routes.dart](../../features/ai/ai_routes.dart) — CU-30, CU-31. Compartido por estos CU.

## Pruebas

- [api_contract_test.dart](../../../test/api_contract_test.dart) — CU-30.

## Dependencias conservadas

[Cliente API](../../core/network/api_client.dart); [providers](../../core/di/providers.dart); [modelos compartidos](../../core/models/models.dart). Los controladores/modelos que viven dentro de una pantalla permanecen allí.
