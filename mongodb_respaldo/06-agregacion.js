const d = db.getSiblingDB("CampusCloud");
printjson(
    d.detalles_servicios
        .aggregate([
            {
                $group: {
                    _id: "$tipo",
                    total: {
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
