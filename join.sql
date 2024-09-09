



SELECT Clientes.NomeCliente, Aluguel.AluguelID, Aluguel.DataEntrada
FROM Clientes
    INNER JOIN Aluguel
    ON Clientes.ClienteID = Aluguel.ClienteID;


SELECT Jogos.NomeJogo, Aluguel.JogoID
FROM Jogos
    LEFT JOIN Aluguel
    ON Jogos.JogoID = Aluguel.JogoID
WHERE Aluguel.JogoID IS NOT NULL;


SELECT *
FROM Aluguel;

SELECT JogoID.Nome_Jogo, Aluguel.AluguelID
FROM Aluguel
    RIGHT JOIN Jogos
    ON JogoID.ID_Jogo = Aluguel.JogoID;

SELECT Jogos.Nome_Jogo, Aluguel.JogoID, Aluguel.AluguelID
FROM Jogos
    LEFT JOIN Aluguel
    ON Jogos.ID_Jogo = Aluguel.JogoID;

SELECT Jogos.Nome_Jogo, Aluguel.AluguelID
FROM Jogos
    LEFT JOIN Aluguel
    ON Jogos.ID_Jogo = Aluguel.JogoID;


CREATE VIEW ValorAluguelPorClienteData
AS
    SELECT
        c.NomeCliente,
        a.DataEntrada AS DataAluguel,
        SUM(j.Preco) AS ValorTotal
    FROM
        Aluguel a
        JOIN
        Clientes c ON a.ClienteID = c.ClienteID
        JOIN
        Jogos j ON a.JogoID = j.JogoID
    GROUP BY
    c.NomeCliente,
    a.DataEntrada
    ORDER BY
    c.NomeCliente,
    a.DataEntrada;

 
 




