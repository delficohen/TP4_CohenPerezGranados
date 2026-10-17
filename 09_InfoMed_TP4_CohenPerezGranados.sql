SELECT
    m.nombre AS medico,
    COUNT(r.id_receta) AS cantidad_recetas
FROM Medicos m
LEFT JOIN Recetas r
    ON m.id_medico = r.id_medico
GROUP BY m.id_medico, m.nombre
ORDER BY m.id_medico;
