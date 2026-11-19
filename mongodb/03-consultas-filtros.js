const d = db.getSiblingDB("CampusCloud");

print("CONSULTA 1: Servicios academicos");
printjson(
    d.detalles_servicios
        .find(
            {
                categoria: "Academico"
            },
            {
                _id: 1,
                nombre: 1,
                categoria: 1
            }
        )
        .toArray()
);

print("CONSULTA 2: Servicios con etiqueta internet");
printjson(
    d.detalles_servicios
        .find(
            {
                etiquetas: "internet"
            },
            {
                _id: 1,
                nombre: 1,
                etiquetas: 1
            }
        )
        .toArray()
);

print("CONSULTA 3: Servicios presenciales");
printjson(
    d.detalles_servicios
        .find(
            {
                "detalles.modalidad": "Presencial"
            },
            {
                _id: 1,
                nombre: 1,
                detalles: 1
            }
        )
        .toArray()
);
