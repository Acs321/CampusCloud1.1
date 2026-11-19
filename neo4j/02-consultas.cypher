// Consulta 1: servicios usados por Ana
MATCH (e:Estudiante {id: 'E01'})-[:USA]->(s:Servicio)
RETURN
    e.nombre AS estudiante,
    s.nombre AS servicio;

// Consulta 2: estudiantes que comparten un servicio
MATCH (a:Estudiante)-[:USA]->(s:Servicio)<-[:USA]-(b:Estudiante)
WHERE a.id < b.id
RETURN
    a.nombre,
    s.nombre,
    b.nombre;

// Consulta 3: recomendacion de servicio aun no usado
MATCH (e:Estudiante {id: 'E01'})
    -[:USA]->(:Servicio)
    <-[:USA]-(otro:Estudiante)
    -[:USA]->(recomendado:Servicio)
WHERE NOT (e)-[:USA]->(recomendado)
RETURN
    recomendado.nombre AS recomendacion,
    count(DISTINCT otro) AS coincidencias
ORDER BY coincidencias DESC;

// Visualizar grafo
MATCH (e:Estudiante)-[r:USA]->(s:Servicio)
RETURN
    e,
    r,
    s;
