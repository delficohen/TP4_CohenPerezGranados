WITH Edades AS (
    SELECT
        id_paciente,
        nombre,
        EXTRACT(
            YEAR FROM AGE(CURRENT_DATE, fecha_nacimiento)
        )::INT AS edad
    FROM Pacientes
)
SELECT
    nombre,
    edad
FROM Edades
WHERE edad > (
    SELECT AVG(edad);