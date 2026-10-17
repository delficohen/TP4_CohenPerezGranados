SELECT
    nombre,
    EXTRACT(YEAR FROM AGE(CURRENT_DATE, fecha_nacimiento)) AS edad
FROM Pacientes
WHERE AGE(CURRENT_DATE, fecha_nacimiento) < INTERVAL '18 years';
