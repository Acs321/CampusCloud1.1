CREATE KEYSPACE IF NOT EXISTS campuscloud
WITH replication = {
    'class': 'SimpleStrategy',
    'replication_factor': 1
};

CREATE TABLE IF NOT EXISTS campuscloud.eventos_estudiante (
    estudiante_id text,
    fecha date,
    momento timestamp,
    evento_id uuid,
    servicio_id text,
    accion text,
    PRIMARY KEY ((estudiante_id), fecha, momento, evento_id)
) WITH CLUSTERING ORDER BY (
    fecha DESC,
    momento DESC,
    evento_id ASC
);

DESCRIBE TABLE campuscloud.eventos_estudiante;
