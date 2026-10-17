UPDATE Pacientes
SET
    calle = 'Calle Corrientes',
    numero = '500',
    ciudad = 'Buenos Aires'
WHERE nombre = 'Luciana Gómez'
  AND calle = 'Avenida Las Heras'
  AND numero = '121';

SELECT
  nombre,
  ciudad,
  calle,
  numero
FROM Pacientes;
