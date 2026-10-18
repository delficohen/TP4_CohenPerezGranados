SELECT m.nombre AS medico,
       COUNT(p.id_paciente) AS consultas_menores,
       CASE WHEN e.nombre = 'Pediatría' THEN TRUE ELSE FALSE END AS es_pediatra
FROM Medicos m
LEFT JOIN Especialidades e ON e.id_especialidad = m.especialidad_id
LEFT JOIN Consultas c ON c.id_medico = m.id_medico
LEFT JOIN Pacientes p ON p.id_paciente = c.id_paciente
                     AND EXTRACT(YEAR FROM AGE(CURRENT_DATE, p.fecha_nacimiento)) < 18
GROUP BY m.id_medico, m.nombre, e.nombre
ORDER BY consultas_menores DESC, m.nombre;
