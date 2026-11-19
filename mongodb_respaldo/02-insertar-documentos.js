const d = db.getSiblingDB("CampusCloud");
d.detalles_servicios.deleteMany({
    codigo: {
        $in: ["SER-01", "SER-02", "SER-03", "SER-04", "SER-05", "SER-06"]
    }
});
printjson(
    d.detalles_servicios.insertMany([
        {
            codigo: "SER-01",
            nombre: "Biblioteca digital",
            tipo: "academico",
            etiquetas: ["libros", "consulta"],
            detalles: {
                modalidad: "online",
                cupo: 120
            },
            activo: true
        },
        {
            codigo: "SER-02",
            nombre: "Tutorías",
            tipo: "academico",
            etiquetas: ["apoyo", "asesoria"],
            detalles: {
                modalidad: "mixta",
                cupo: 30
            },
            activo: true
        },
        {
            codigo: "SER-03",
            nombre: "Gimnasio",
            tipo: "deportivo",
            etiquetas: ["fitness", "salud"],
            detalles: {
                modalidad: "presencial",
                cupo: 50
            },
            activo: true
        },
        {
            codigo: "SER-04",
            nombre: "Cancha deportiva",
            tipo: "deportivo",
            etiquetas: ["equipo", "futbol"],
            detalles: {
                modalidad: "presencial",
                cupo: 24
            },
            activo: true
        },
        {
            codigo: "SER-05",
            nombre: "Orientación",
            tipo: "bienestar",
            etiquetas: ["apoyo", "personal"],
            detalles: {
                modalidad: "online",
                cupo: 12
            },
            activo: true
        },
        {
            codigo: "SER-06",
            nombre: "Becas",
            tipo: "bienestar",
            etiquetas: ["apoyo", "economia"],
            detalles: {
                modalidad: "mixta",
                cupo: 80
            },
            activo: false
        }
    ])
);
print("TOTAL = " + d.detalles_servicios.countDocuments({}));
