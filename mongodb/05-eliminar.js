const d = db.getSiblingDB("CampusCloud");

print("ANTES:");
printjson(
    d.detalles_servicios.findOne({
        _id: "SRV006"
    })
);

print("ELIMINACION:");
printjson(
    d.detalles_servicios.deleteOne({
        _id: "SRV006"
    })
);

print("DESPUES:");
printjson(
    d.detalles_servicios.findOne({
        _id: "SRV006"
    })
);

print("TOTAL:");
print(d.detalles_servicios.countDocuments({}));
