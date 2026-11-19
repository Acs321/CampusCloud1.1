const dbCampus = db.getSiblingDB("CampusCloud");
if (!dbCampus.getCollectionNames().includes("detalles_servicios"))
    dbCampus.createCollection("detalles_servicios");
printjson(dbCampus.getCollectionNames());
