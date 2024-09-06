-- Consulta com UNION
SELECT 
    'Cliente' AS Tipo,
    NomeCliente AS Nome,
    Email,
    Telefone,
    Rua,
    Bairro,
    Cidade,
    Estado
FROM Clientes
UNION
SELECT 
    'Fornecedor' AS Tipo,
    NomeFornecedor AS Nome,
    Email,
    Telefone,
    Rua,
    Bairro,
    Cidade,
    Estado
FROM Fornecedores;



SELECT 
    'Cliente' AS Tipo,
    NomeCliente AS Nome,
    Email,
    Telefone,
    Rua,
    Bairro,
    Cidade,
    Estado
FROM Clientes
UNION ALL
SELECT 
    'Fornecedor' AS Tipo,
    NomeFornecedor AS Nome,
    Email,
    Telefone,
    Rua,
    Bairro,
    Cidade,
    Estado
FROM Fornecedores;




