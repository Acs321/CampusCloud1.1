MATCH (e:Estudiante {id: 'E01'})
RETURN e.nombre AS antes;

MATCH (e:Estudiante {id: 'E01'})
SET e.nombre = 'Ana Maria'
RETURN e.nombre AS despues;
