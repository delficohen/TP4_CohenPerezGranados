SELECT
    nombre,
    calle,
    numero,
    ciudad
FROM Pacientes
WHERE ciudad ilike'%B%Ai%';
