const d = db.getSiblingDB("CampusCloud");

print("ANTES:");
printjson(
    d.detalles_servicios.findOne({
        _id: "SRV005"
    })
);

print("ACTUALIZACION:");
printjson(
    d.detalles_servicios.updateOne(
        {
            _id: "SRV005"
        },
        {
            $set: {
                "detalles.equipos": 35
            }
        }
    )
);

print("DESPUES:");
printjson(
    d.detalles_servicios.findOne({
        _id: "SRV005"
    })
);
