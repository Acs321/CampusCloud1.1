// Ejecutar el archivo una sola vez en Neo4j Browser (o usar :source con una ruta accesible).
MERGE (a:Estudiante {id: 'E01'})
SET a.nombre = 'Ana'
MERGE (b:Estudiante {id: 'E02'})
SET b.nombre = 'Bruno'
MERGE (c:Estudiante {id: 'E03'})
SET c.nombre = 'Carla'
MERGE (d:Estudiante {id: 'E04'})
SET d.nombre = 'Diego'
MERGE (e:Estudiante {id: 'E05'})
SET e.nombre = 'Elena'
MERGE (s1:Servicio {id: 'S01'})
SET s1.nombre = 'Biblioteca'
MERGE (s2:Servicio {id: 'S02'})
SET s2.nombre = 'Tutorias'
MERGE (s3:Servicio {id: 'S03'})
SET s3.nombre = 'Gimnasio'
MERGE (s4:Servicio {id: 'S04'})
SET s4.nombre = 'Becas'
MERGE (a)-[:USA]->(s1)
MERGE (a)-[:USA]->(s2)
MERGE (b)-[:USA]->(s1)
MERGE (b)-[:USA]->(s3)
MERGE (c)-[:USA]->(s2)
MERGE (c)-[:USA]->(s4)
MERGE (d)-[:USA]->(s3)
MERGE (d)-[:USA]->(s4)
MERGE (e)-[:USA]->(s1)
RETURN count(*) AS filas_cargadas;
