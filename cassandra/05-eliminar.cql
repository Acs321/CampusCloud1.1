SELECT *
FROM campuscloud.eventos_estudiante
WHERE estudiante_id = 'E03'
    AND fecha = '2026-11-14';

DELETE
FROM campuscloud.eventos_estudiante
WHERE estudiante_id = 'E03'
    AND fecha = '2026-11-14'
    AND momento = '2026-11-14T13:04:00Z'
    AND evento_id = 00000003-0000-0000-0000-000000000004;

SELECT *
FROM campuscloud.eventos_estudiante
WHERE estudiante_id = 'E03'
    AND fecha = '2026-11-14';
