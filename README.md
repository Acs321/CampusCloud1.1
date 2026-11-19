# CampusCloud · Unidad II · Practicas NoSQL

Proyecto academico basado en los scripts SQL de la Unidad I del material compartido, con una configuracion nueva y reproducible para la Unidad II. No contiene contrasenas ni ejecuciones simuladas.

## Requisitos
Docker Desktop con Docker Compose v2, VS Code; MongoDB Compass y navegador web opcionales. Cassandra necesita RAM; iniciar un gestor a la vez si el equipo es limitado.

## Configurar
1. Abrir la carpeta raiz en VS Code.
2. Copiar `docker/.env.example` a `docker/.env` **sin subir el archivo a Git**.
3. Establecer contrasenas locales robustas. Para MongoDB el usuario sugerido es `salvador`; para Neo4j Community se utiliza el usuario inicial `neo4j`; Cassandra tiene autenticacion deshabilitada por defecto en esta practica local y no debe exponerse a redes no confiables.
4. Usar `docker compose --env-file docker/.env -f docker/compose.yaml config` para validar.

## Comandos (desde la raiz)
- MongoDB: `docker compose --env-file docker/.env -f docker/compose.yaml up -d mongo-cloud`
- Neo4j: `docker compose --env-file docker/.env -f docker/compose.yaml up -d neo4j-cloud`
- Cassandra: `docker compose --env-file docker/.env -f docker/compose.yaml up -d cassandra-cloud`
- Contenedores: `docker compose --env-file docker/.env -f docker/compose.yaml ps`
- Detener sin borrar volumenes: `docker compose --env-file docker/.env -f docker/compose.yaml down`
- SQL Server de Unidad I, opcional: `docker compose --env-file docker/.env -f docker/compose.yaml --profile unidad1 up -d sql-server-cloud`

## Ejecutar scripts
- MongoDB, desde MongoDB Compass con Playground (copiar el contenido), o por `mongosh` ejecutando JS en orden 01 a 06. En Mongo shell usar autenticacion; no pegar claves en capturas.
- Neo4j: abrir `http://localhost:7474`, autenticarse como `neo4j` y pegar cada consulta Cypher individualmente. Nota: varios comandos separados por `;` pueden requerir ejecución por separado en Browser.
- Cassandra: `docker exec -it campuscloud-cassandra cqlsh` y ejecutar instrucciones CQL por archivo o copiar los comandos en orden. Esperar a que Cassandra complete el arranque.

## Evidencias
Capturas reales, tomadas en tu equipo, dentro de `evidencias/unidad-ii/{generales,mongodb,neo4j,cassandra}/`. Consultar el reporte editable y `docs/pruebas.md` para la lista exacta.

## Notas importantes
- No ejecutar `docker compose down -v` durante las pruebas de persistencia: elimina volumenes y datos.
- Las variables de inicializacion de MongoDB y Neo4j NO cambian automaticamente credenciales de volumenes previamente creados. Usar volumen nuevo o rotar credenciales de forma explicita.
- Los scripts SQL de Unidad I se conservan como referencia; las modificaciones al entorno son propias de esta practica, no resultados verificados.
- Para Cassandra la clave primaria prioriza consultas por estudiante y fecha; no se permiten filtros arbitrarios eficientes sin redisenar tablas.
