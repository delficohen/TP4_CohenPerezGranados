WITH ultima_consulta AS (
    SELECT id_paciente, MAX(fecha) AS fecha_ultima
    FROM Consultas
    GROUP BY id_paciente
)
SELECT p.nombre,
       c.fecha AS fecha_ultima_consulta,
       c.diagnostico
FROM Pacientes p
JOIN ultima_consulta u ON u.id_paciente = p.id_paciente
JOIN Consultas c ON c.id_paciente = u.id_paciente
                AND c.fecha = u.fecha_ultima
ORDER BY p.nombre;
