SELECT NomeCliente, Email, Telefone
FROM Clientes
WHERE ClienteID IN (SELECT ClienteID
FROM Aluguel
WHERE DataEntrada = '2024-09-01');

SELECT NomeCliente, TotalAlugueis
FROM (SELECT ClienteID,
             COUNT(*) AS TotalAlugueis
      FROM Aluguel
      GROUP BY ClienteID) AS Subconsulta
JOIN Clientes ON Subconsulta.ClienteID = Clientes.ClienteID;


SELECT NomeCliente
FROM Clientes
WHERE ClienteID IN (
    SELECT ClienteID
    FROM Aluguel
    WHERE strftime('%m', DataEntrada) = '09'
);
