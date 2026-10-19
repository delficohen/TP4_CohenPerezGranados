SELECT
    e.nombre AS especialidad,
    COUNT(m.id_medico) AS cantidad_medicos
FROM Especialidades e
INNER JOIN Medicos m
    ON e.id_especialidad = m.especialidad_id
GROUP BY e.id_especialidad, e.nombre
HAVING COUNT(m.id_medico) > 2;

