SELECT
    med.nombre AS medicamento,
    COUNT(*) AS veces_prescrito
FROM Recetas r
INNER JOIN Medicamentos med
    ON r.id_medicamento = med.id_medicamento
WHERE r.id_medico = 2
GROUP BY med.id_medicamento, med.nombre
HAVING COUNT(*) > 1
ORDER BY med.nombre;
