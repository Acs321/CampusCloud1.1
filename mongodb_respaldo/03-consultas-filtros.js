const d = db.getSiblingDB("CampusCloud");
print("Filtro 1: tipo academico");
printjson(
    d.detalles_servicios
        .find({
            tipo: "academico"
        })
        .toArray()
);
print("Filtro 2: activo true y cupo >= 40");
printjson(
    d.detalles_servicios
        .find({
            activo: true,
            "detalles.cupo": {
                $gte: 40
            }
        })
        .toArray()
);
print("Filtro 3: etiquetas incluye apoyo");
printjson(
    d.detalles_servicios
        .find({
            etiquetas: "apoyo"
        })
        .toArray()
);
