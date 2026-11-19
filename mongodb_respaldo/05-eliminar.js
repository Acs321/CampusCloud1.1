const d = db.getSiblingDB("CampusCloud");
print("ANTES");
printjson(
    d.detalles_servicios.findOne({
        codigo: "SER-06"
    })
);
printjson(
    d.detalles_servicios.deleteOne({
        codigo: "SER-06"
    })
);
print("DESPUES");
printjson(
    d.detalles_servicios.findOne({
        codigo: "SER-06"
    })
);
