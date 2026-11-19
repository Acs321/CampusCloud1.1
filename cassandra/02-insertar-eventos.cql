INSERT INTO campuscloud.eventos_estudiante (
    estudiante_id,
    fecha,
    momento,
    evento_id,
    servicio_id,
    accion
) VALUES (
    'E01',
    '2026-11-11',
    '2026-11-11T11:01:00Z',
    00000001-0000-0000-0000-000000000001,
    'S01',
    'consulta'
);

INSERT INTO campuscloud.eventos_estudiante (
    estudiante_id,
    fecha,
    momento,
    evento_id,
    servicio_id,
    accion
) VALUES (
    'E01',
    '2026-11-12',
    '2026-11-12T11:02:00Z',
    00000001-0000-0000-0000-000000000002,
    'S02',
    'consulta'
);

INSERT INTO campuscloud.eventos_estudiante (
    estudiante_id,
    fecha,
    momento,
    evento_id,
    servicio_id,
    accion
) VALUES (
    'E01',
    '2026-11-13',
    '2026-11-13T11:03:00Z',
    00000001-0000-0000-0000-000000000003,
    'S03',
    'consulta'
);

INSERT INTO campuscloud.eventos_estudiante (
    estudiante_id,
    fecha,
    momento,
    evento_id,
    servicio_id,
    accion
) VALUES (
    'E01',
    '2026-11-14',
    '2026-11-14T11:04:00Z',
    00000001-0000-0000-0000-000000000004,
    'S04',
    'consulta'
);

INSERT INTO campuscloud.eventos_estudiante (
    estudiante_id,
    fecha,
    momento,
    evento_id,
    servicio_id,
    accion
) VALUES (
    'E02',
    '2026-11-11',
    '2026-11-11T12:01:00Z',
    00000002-0000-0000-0000-000000000001,
    'S01',
    'consulta'
);

INSERT INTO campuscloud.eventos_estudiante (
    estudiante_id,
    fecha,
    momento,
    evento_id,
    servicio_id,
    accion
) VALUES (
    'E02',
    '2026-11-12',
    '2026-11-12T12:02:00Z',
    00000002-0000-0000-0000-000000000002,
    'S02',
    'consulta'
);

INSERT INTO campuscloud.eventos_estudiante (
    estudiante_id,
    fecha,
    momento,
    evento_id,
    servicio_id,
    accion
) VALUES (
    'E02',
    '2026-11-13',
    '2026-11-13T12:03:00Z',
    00000002-0000-0000-0000-000000000003,
    'S03',
    'consulta'
);

INSERT INTO campuscloud.eventos_estudiante (
    estudiante_id,
    fecha,
    momento,
    evento_id,
    servicio_id,
    accion
) VALUES (
    'E02',
    '2026-11-14',
    '2026-11-14T12:04:00Z',
    00000002-0000-0000-0000-000000000004,
    'S04',
    'consulta'
);

INSERT INTO campuscloud.eventos_estudiante (
    estudiante_id,
    fecha,
    momento,
    evento_id,
    servicio_id,
    accion
) VALUES (
    'E03',
    '2026-11-11',
    '2026-11-11T13:01:00Z',
    00000003-0000-0000-0000-000000000001,
    'S01',
    'consulta'
);

INSERT INTO campuscloud.eventos_estudiante (
    estudiante_id,
    fecha,
    momento,
    evento_id,
    servicio_id,
    accion
) VALUES (
    'E03',
    '2026-11-12',
    '2026-11-12T13:02:00Z',
    00000003-0000-0000-0000-000000000002,
    'S02',
    'consulta'
);

INSERT INTO campuscloud.eventos_estudiante (
    estudiante_id,
    fecha,
    momento,
    evento_id,
    servicio_id,
    accion
) VALUES (
    'E03',
    '2026-11-13',
    '2026-11-13T13:03:00Z',
    00000003-0000-0000-0000-000000000003,
    'S03',
    'consulta'
);

INSERT INTO campuscloud.eventos_estudiante (
    estudiante_id,
    fecha,
    momento,
    evento_id,
    servicio_id,
    accion
) VALUES (
    'E03',
    '2026-11-14',
    '2026-11-14T13:04:00Z',
    00000003-0000-0000-0000-000000000004,
    'S04',
    'consulta'
);

SELECT
    estudiante_id,
    fecha,
    momento,
    evento_id,
    accion
FROM campuscloud.eventos_estudiante
WHERE estudiante_id = 'E01';
