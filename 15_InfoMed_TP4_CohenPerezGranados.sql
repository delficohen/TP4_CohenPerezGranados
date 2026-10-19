SELECT
    med.nombre AS medicamento,
    COUNT(r.id_receta) AS cantidad_recetas
FROM Medicamentos med
INNER JOIN Recetas r
    ON med.id_medicamento = r.id_medicamento
GROUP BY med.id_medicamento, med.nombre
ORDER BY cantidad_recetas DESC
LIMIT 2;