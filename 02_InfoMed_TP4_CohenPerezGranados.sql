CREATE VIEW vista_pacientes AS
SELECT
    p.id_paciente,
    p.nombre,
    p.fecha_nacimiento,
    EXTRACT(YEAR FROM AGE(CURRENT_DATE, p.fecha_nacimiento)) AS edad,
    s.descripcion AS sexo,
    p.calle,
    p.numero,
    p.ciudad
FROM Pacientes p
JOIN SexoBiologico s ON s.id_sexo = p.id_sexo;
