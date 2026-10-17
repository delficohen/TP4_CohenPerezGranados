SELECT
    p.nombre AS paciente,
    c.fecha,
    c.diagnostico
FROM Consultas c
INNER JOIN Pacientes p
    ON c.id_paciente = p.id_paciente
WHERE c.fecha >= DATE '2024-08-01'
  AND c.fecha < DATE '2024-09-01'
ORDER BY c.fecha;
