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

SELECT ciudad
FROM Pacientes;