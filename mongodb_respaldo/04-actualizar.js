const d = db.getSiblingDB("CampusCloud");
print("ANTES");
printjson(
    d.detalles_servicios.findOne({
        codigo: "SER-02"
    })
);
printjson(
    d.detalles_servicios.updateOne(
        {
            codigo: "SER-02"
        },
        {
            $set: {
                "detalles.cupo": 35
            }
        }
    )
);
print("DESPUES");
printjson(
    d.detalles_servicios.findOne({
        codigo: "SER-02"
    })
);
