BEGIN TRANSACTION;

-- 1. Inserir um novo cliente
INSERT INTO Clientes (NomeCliente, Email, Telefone, Rua, Bairro, Cidade, Estado)
VALUES ('Maria Silva', 'maria@example.com', '9999-9999', 'Rua A', 'Bairro B', 'Cidade C', 'Estado D');

-- 2. Inserir um novo aluguel para esse cliente (suponha ClienteID = 2)
INSERT INTO Aluguel (ClienteID, ColaboradorID, JogoID, DataEntrada, DataEntrega)
VALUES (2, 1, 1, date('now'), date('now', '+7 day'));

-- 3. Atualizar o estoque do jogo alugado (JogoID = 1)
UPDATE Jogos
SET Estoque = Estoque - 1
WHERE JogoID = 1;

-- Confirmar as alterações se todas as operações tiverem sucesso
COMMIT;