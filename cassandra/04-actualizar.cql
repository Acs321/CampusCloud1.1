SELECT *
FROM campuscloud.eventos_estudiante
WHERE estudiante_id = 'E01'
    AND fecha = '2026-11-11';

UPDATE campuscloud.eventos_estudiante
SET accion = 'acceso_validado'
WHERE estudiante_id = 'E01'
    AND fecha = '2026-11-11'
    AND momento = '2026-11-11T11:01:00Z'
    AND evento_id = 00000001-0000-0000-0000-000000000001;

SELECT *
FROM campuscloud.eventos_estudiante
WHERE estudiante_id = 'E01'
    AND fecha = '2026-11-11';
