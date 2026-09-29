# Inteligencia artificial

CU-30 a CU-32 · Plataforma: backend.

[README del proyecto](../../../../README.md) · [Índice general](../../../../PAQUETES.md)

Estado físico: los servicios enlazados están en este paquete o en el paquete dueño indicado. Rutas, esquemas, modelos y pruebas conservan sus ubicaciones actuales.

Los enlaces apuntan a archivos reales. La presencia de código o pruebas no significa que se hayan ejecutado ni que el CU esté completo. Un archivo enlazado desde varios CU es compartido y no está duplicado.

## Casos de uso

### CU-30 — Recomendar productos mediante IA

[Documento UML](../../../../docs/uml/ciclo3/inteligencia-artificial/CU-30/CU-30.md).

**Rutas/controladores:** [routes_ai.py](../../api/v1/routes_ai.py), [routes_recommendations.py](../../api/v1/routes_recommendations.py); **Servicios:** [ai_service.py](services/ai_service.py), [recommender.py](../../ml/recommender.py), [embeddings.py](../../ml/embeddings.py), [vector_store.py](../../ml/vector_store.py); **Esquemas:** [ai.py](../../schemas/ai.py), [recommendation.py](../../schemas/recommendation.py); **Modelos compartidos:** [analytics.py](../../models/analytics.py), [catalog.py](../../models/catalog.py), [inventory.py](../../models/inventory.py); **Pruebas:** [test_recommendations.py](../../../tests/test_recommendations.py)

### CU-31 — Asistir al cliente mediante IA

[Documento UML](../../../../docs/uml/ciclo3/inteligencia-artificial/CU-31/CU-31.md).

**Rutas/controladores:** [routes_ai.py](../../api/v1/routes_ai.py); **Servicios:** [ai_service.py](services/ai_service.py); **Esquemas:** [ai.py](../../schemas/ai.py)

### CU-32 — Generar consultas y reportes mediante IA

[Documento UML](../../../../docs/uml/ciclo3/inteligencia-artificial/CU-32/CU-32.md).

**Rutas/controladores:** [routes_ai.py](../../api/v1/routes_ai.py); **Servicios:** [ai_service.py](services/ai_service.py); **Esquemas:** [ai.py](../../schemas/ai.py)

## Rutas/controladores

- [routes_ai.py](../../api/v1/routes_ai.py) — CU-30, CU-31, CU-32. Compartido por estos CU.
- [routes_recommendations.py](../../api/v1/routes_recommendations.py) — CU-30.

## Servicios

- [ai_service.py](services/ai_service.py) — CU-30, CU-31, CU-32. Compartido por estos CU.
- [recommender.py](../../ml/recommender.py) — CU-30.
- [embeddings.py](../../ml/embeddings.py) — CU-30.
- [vector_store.py](../../ml/vector_store.py) — CU-30.

## Esquemas

- [ai.py](../../schemas/ai.py) — CU-30, CU-31, CU-32. Compartido por estos CU.
- [recommendation.py](../../schemas/recommendation.py) — CU-30.

## Modelos compartidos

- [analytics.py](../../models/analytics.py) — CU-30.
- [catalog.py](../../models/catalog.py) — CU-30.
- [inventory.py](../../models/inventory.py) — CU-30.

## Pruebas

- [test_recommendations.py](../../../tests/test_recommendations.py) — CU-30.

## Dependencias conservadas

[Registro central de rutas](../../api/v1/router.py); [sesión y autorización](../../core/dependencies.py); [esquemas comunes](../../schemas/common.py).
