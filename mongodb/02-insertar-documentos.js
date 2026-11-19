const d = db.getSiblingDB("CampusCloud");

const documentos = [
    {
        _id: "SRV001",
        nombre: "Biblioteca Digital",
        categoria: "Academico",
        descripcion: "Acceso a libros y recursos digitales",
        etiquetas: ["libros", "investigacion", "consulta"],
        detalles: {
            modalidad: "En linea",
            disponibilidad: "24 horas"
        },
        activo: true
    },
    {
        _id: "SRV002",
        nombre: "Asesorias Academicas",
        categoria: "Academico",
        descripcion: "Apoyo en materias universitarias",
        etiquetas: ["tutorias", "matematicas", "programacion"],
        detalles: {
            modalidad: "Presencial",
            ubicacion: "Edificio A"
        },
        activo: true
    },
    {
        _id: "SRV003",
        nombre: "Atencion Psicologica",
        categoria: "Bienestar",
        descripcion: "Orientacion y acompanamiento estudiantil",
        etiquetas: ["salud", "orientacion", "bienestar"],
        detalles: {
            modalidad: "Presencial",
            ubicacion: "Edificio B"
        },
        activo: true
    },
    {
        _id: "SRV004",
        nombre: "Actividades Deportivas",
        categoria: "Bienestar",
        descripcion: "Programas deportivos universitarios",
        etiquetas: ["futbol", "basquetbol", "acondicionamiento"],
        detalles: {
            modalidad: "Presencial",
            ubicacion: "Unidad Deportiva"
        },
        activo: true
    },
    {
        _id: "SRV005",
        nombre: "Laboratorio de Computo",
        categoria: "Tecnologia",
        descripcion: "Acceso a computadoras y software",
        etiquetas: ["computadoras", "software", "internet"],
        detalles: {
            equipos: 30,
            sistemaOperativo: "Linux"
        },
        activo: true
    },
    {
        _id: "SRV006",
        nombre: "Prestamo de Equipos",
        categoria: "Tecnologia",
        descripcion: "Prestamo de dispositivos tecnologicos",
        etiquetas: ["laptops", "proyectores", "tabletas"],
        detalles: {
            requiereCredencial: true,
            duracionMaximaHoras: 4
        },
        activo: true
    }
];

for (const documento of documentos) {
    d.detalles_servicios.updateOne(
        {
            _id: documento._id
        },
        {
            $setOnInsert: documento
        },
        {
            upsert: true
        }
    );
}

print("TOTAL = " + d.detalles_servicios.countDocuments({}));
