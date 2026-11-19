const d = db.getSiblingDB("CampusCloud");

print("AGREGACION POR CATEGORIA:");

printjson(
    d.detalles_servicios
        .aggregate([
            {
                $group: {
                    _id: "$categoria",
                    totalServicios: {
                        $sum: 1
                    }
                }
            },
            {
                $sort: {
                    _id: 1
                }
            }
        ])
        .toArray()
);
