UPDATE Pacientes
SET ciudad = CASE
    WHEN ciudad ilike'%B%Ai%'
        THEN 'Buenos Aires'
    WHEN ciudad ilike'%C%'
        THEN 'Córdoba'
    WHEN ciudad ilike'%Men%'
        THEN 'Mendoza'
    WHEN ciudad ilike'%Ros%'
        THEN 'Rosario'
    WHEN ciudad ilike'%San%'
        THEN 'Santa Fe'
END;

/*
SELECT ciudad, id_sexo, COUNT(*) AS cantidad_pacientes
FROM Pacientes
GROUP BY ciudad, id_sexo
ORDER BY ciudad, cantidad_pacientes;
*/


SELECT
  p.ciudad,
  s.descripcion,
  COUNT(*) AS cantidad_pacientes
FROM Pacientes p
INNER JOIN SexoBiologico s
  ON p.id_sexo = s.id_sexo
GROUP BY p.ciudad, s.descripcion
ORDER BY p.ciudad, s.descripcion;
