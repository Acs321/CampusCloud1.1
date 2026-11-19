SELECT *
FROM campuscloud.eventos_estudiante
WHERE estudiante_id = 'E01'
    AND fecha >= '2026-11-11'
    AND fecha <= '2026-11-14';

SELECT *
FROM campuscloud.eventos_estudiante
WHERE estudiante_id = 'E02'
LIMIT 10;
