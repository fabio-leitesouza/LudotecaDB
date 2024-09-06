CREATE TABLE Games (
    GameID INTEGER PRIMARY KEY AUTOINCREMENT,       -- Chave primária com auto-incremento
    GameName TEXT NOT NULL,                         -- Nome do jogo, obrigatório
    Category TEXT NOT NULL,                         -- Categoria do jogo, obrigatório
    ReleaseYear INTEGER CHECK (ReleaseYear > 1900 
                               AND ReleaseYear <= strftime('%Y', 'now')),  -- Ano válido (não no futuro)
    Price REAL CHECK (Price >= 0),                  -- Preço deve ser positivo
    Stock INTEGER DEFAULT 0 CHECK (Stock >= 0)      -- Estoque padrão é 0 e não pode ser negativo
);

-- Compare this snippet from queriesScripts.sql:
INSERT INTO Jogos
    (Nome_Jogo, Categoria, Ano_Lancamento, Preco, Estoque)
VALUES
    ('Catan', 'Estratégia', 1995, 200.00, 10),
    ('Ticket to Ride', 'Familiar', 2004, 180.00, 5),
    ('Carcassonne', 'Estratégia', 2000, 150.00, 8),
    ('Pandemic', 'Cooperativo', 2008, 220.00, 12),
    ('Dixit', 'Familiar', 2008, 130.00, 6),
    ('Azul', 'Abstrato', 2017, 190.00, 7),
    ('Terraforming Mars', 'Estratégia', 2016, 300.00, 4),
    ('7 Wonders', 'Cartas', 2010, 170.00, 9),
    ('Splendor', 'Cartas', 2014, 140.00, 11),
    ('Gloomhaven', 'Aventura', 2017, 450.00, 3),
    ('Wingspan', 'Estratégia', 2019, 250.00, 5),
    ('Scythe', 'Estratégia', 2016, 350.00, 4),
    ('Root', 'Estratégia', 2018, 280.00, 6),
    ('King of Tokyo', 'Familiar', 2011, 120.00, 10),
    ('The Resistance', 'Bluff', 2009, 100.00, 12),
    ('Love Letter', 'Cartas', 2012, 80.00, 15),
    ('Everdell', 'Estratégia', 2018, 310.00, 4),
    ('Viticulture', 'Estratégia', 2013, 270.00, 5),
    ('Patchwork', 'Abstrato', 2014, 100.00, 7),
    ('Spirit Island', 'Cooperativo', 2017, 320.00, 3),
    ('Tzolk’in', 'Estratégia', 2012, 200.00, 6),
    ('Lords of Waterdeep', 'Estratégia', 2012, 220.00, 8),
    ('Lost Ruins of Arnak', 'Aventura', 2020, 290.00, 4),
    ('Clank!', 'Aventura', 2016, 210.00, 9),
    ('Mansions of Madness', 'Cooperativo', 2016, 380.00, 3),
    ('Arkham Horror', 'Aventura', 2005, 260.00, 6),
    ('Camel Up', 'Familiar', 2014, 150.00, 7),
    ('Agricola', 'Estratégia', 2007, 280.00, 5),
    ('Concordia', 'Estratégia', 2013, 220.00, 6),
    ('Quacks of Quedlinburg', 'Familiar', 2018, 180.00, 9);

CREATE TABLE Clientes (
    ClienteID INTEGER PRIMARY KEY AUTOINCREMENT, -- Chave primária com auto-incremento
    NomeCliente TEXT NOT NULL, -- Nome do cliente, obrigatório
    Email TEXT NOT NULL DEFAULT 'sem email', -- Email com valor padrão 'sem email'
    Telefone TEXT, -- Telefone opcional
    Rua TEXT NOT NULL, -- Rua do cliente, obrigatório
    Bairro TEXT NOT NULL, -- Bairro do cliente, obrigatório
    Cidade TEXT NOT NULL, -- Cidade do cliente, obrigatório
    Estado TEXT NOT NULL, -- Estado do cliente, obrigatório
    DataCadastro DATE DEFAULT (date('now')), -- Data de cadastro com valor padrão para a data atual
    StatusAtivo BOOLEAN DEFAULT 1 -- Indica se o cliente está ativo (1 = ativo, 0 = inativo)
);


INSERT INTO Clientes (NomeCliente, Email, Telefone, Rua, Bairro, Cidade, Estado)
VALUES
('João Silva', 'joao.silva@email.com', '(11) 98765-4321', 'Rua das Flores', 'Jardim das Rosas', 'São Paulo', 'SP'),
('Maria Oliveira', 'sem email', '(21) 99876-5432', 'Avenida Brasil', 'Centro', 'Rio de Janeiro', 'RJ'),
('Pedro Souza', 'pedro.souza@email.com', '(31) 91234-5678', 'Rua dos Pinheiros', 'Savassi', 'Belo Horizonte', 'MG'),
('Ana Pereira', 'ana.pereira@email.com', '(41) 92345-6789', 'Rua Central', 'Jardim Botânico', 'Curitiba', 'PR'),
('Lucas Lima', 'sem email', '(51) 93456-7890', 'Rua do Porto', 'Cidade Baixa', 'Porto Alegre', 'RS'),
('Carla Mendes', 'carla.mendes@email.com', '(61) 94567-8901', 'Quadra 5', 'Asa Norte', 'Brasília', 'DF'),
('Felipe Costa', 'sem email', '(71) 95678-9012', 'Rua do Comércio', 'Comércio', 'Salvador', 'BA'),
('Beatriz Almeida', 'beatriz.almeida@email.com', '(81) 96789-0123', 'Rua da Praia', 'Boa Viagem', 'Recife', 'PE'),
('Rafael Gonçalves', 'rafael.goncalves@email.com', '(91) 97890-1234', 'Avenida das Palmeiras', 'Reduto', 'Belém', 'PA'),
('Julia Ramos', 'sem email', '(31) 98901-2345', 'Rua do Sol', 'Barro Preto', 'Belo Horizonte', 'MG');


CREATE TABLE Colaboradores (
    ColaboradorID INTEGER PRIMARY KEY AUTOINCREMENT, -- Chave primária com auto-incremento
    NomeColaborador TEXT NOT NULL, -- Nome do colaborador, obrigatório
    Email TEXT NOT NULL DEFAULT 'sem email', -- Email do colaborador, padrão é 'sem email'
    Telefone TEXT, -- Telefone opcional
    Cargo TEXT NOT NULL, -- Cargo do colaborador, obrigatório
    DataContratacao DATE DEFAULT (date('now')), -- Data de contratação, padrão é a data atual
    Ativo BOOLEAN DEFAULT 1 -- Indica se o colaborador está ativo (1 = ativo, 0 = inativo)
);

CREATE TABLE Fornecedores (
    FornecedorID INTEGER PRIMARY KEY AUTOINCREMENT, -- Chave primária com auto-incremento
    NomeFornecedor TEXT NOT NULL, -- Nome do fornecedor, obrigatório
    Email TEXT NOT NULL DEFAULT 'sem email', -- Email do fornecedor, com valor padrão 'sem email'
    Telefone TEXT, -- Telefone do fornecedor, opcional
    Rua TEXT NOT NULL, -- Rua do fornecedor, obrigatório
    Bairro TEXT NOT NULL, -- Bairro do fornecedor, obrigatório
    Cidade TEXT NOT NULL, -- Cidade do fornecedor, obrigatório
    Estado TEXT NOT NULL, -- Estado do fornecedor, obrigatório
    DataCadastro DATE DEFAULT (date('now')), -- Data de cadastro, com valor padrão para a data atual
    StatusAtivo BOOLEAN DEFAULT 1 -- Indica se o fornecedor está ativo (1 = ativo, 0 = inativo)
);

INSERT INTO Fornecedores (NomeFornecedor, Email, Telefone, Rua, Bairro, Cidade, Estado)
VALUES
('Distribuidora Jogos Ltda', 'contato@distribuidorajogos.com', '(11) 91234-5678', 'Rua das Flores', 'Jardim das Rosas', 'São Paulo', 'SP'),
('Mega Brinquedos S.A.', 'mega@brinquedos.com', '(21) 98765-4321', 'Avenida Brasil', 'Centro', 'Rio de Janeiro', 'RJ'),
('Super Board Games', 'vendas@superboardgames.com', '(31) 92345-6789', 'Rua dos Pinheiros', 'Savassi', 'Belo Horizonte', 'MG'),
('Tabuleiro Supremo', 'contato@tabuleirosupremo.com', '(51) 94567-8901', 'Rua do Porto', 'Cidade Baixa', 'Porto Alegre', 'RS'),
('Jogos e Brinquedos Ltda', 'vendas@jogosebrinquedos.com', '(41) 91234-5678', 'Rua Central', 'Jardim Botânico', 'Curitiba', 'PR'),
('Fornecedor XYZ', 'sem email', '(31) 98901-2345', 'Rua do Sol', 'Barro Preto', 'Belo Horizonte', 'MG'), -- Mesmo endereço de um cliente
('Fornecedor ABC', 'sem email', '(81) 96789-0123', 'Rua da Praia', 'Boa Viagem', 'Recife', 'PE'),
('Brinquedos e Cia', 'contato@brinquedosecia.com', '(61) 92345-6789', 'Quadra 5', 'Asa Norte', 'Brasília', 'DF'),
('Distribuidora Prime', 'prime@distribuidoraprime.com', '(31) 95678-9012', 'Rua do Sol', 'Barro Preto', 'Belo Horizonte', 'MG'), -- Mesmo endereço de um cliente
('Games Distribuição', 'contato@gamesdistribuicao.com', '(91) 97890-1234', 'Avenida das Palmeiras', 'Reduto', 'Belém', 'PA');


CREATE TABLE Aluguel (
    AluguelID INTEGER PRIMARY KEY AUTOINCREMENT, -- Chave primária com auto-incremento
    ClienteID INTEGER NOT NULL, -- Chave estrangeira para a tabela Clientes
    ColaboradorID INTEGER NOT NULL, -- Chave estrangeira para a tabela Colaboradores
    JogoID INTEGER NOT NULL, -- Chave estrangeira para a tabela Jogos
    DataEntrada DATE DEFAULT (date('now')), -- Data de entrada, padrão para a data atual
    DataEntrega DATE, -- Data de entrega, opcional
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID), -- Relacionamento com a tabela Clientes
    FOREIGN KEY (ColaboradorID) REFERENCES Colaboradores(ColaboradorID), -- Relacionamento com a tabela Colaboradores
    FOREIGN KEY (JogoID) REFERENCES Jogos(ID_Jogo) -- Relacionamento com a tabela Jogos
);

-- Inserir registros de aluguel
INSERT INTO Aluguel (ClienteID, ColaboradorID, JogoID, DataEntrada, DataEntrega)
VALUES
(1, 2, 3, date('2024-09-01'), NULL), -- João Silva alugou o jogo com ID 3, registrado por Maria Oliveira, com data de entrada em 01/09/2024 e ainda não devolvido
(2, 1, 5, date('2024-09-02'), date('2024-09-10')), -- Maria Oliveira alugou o jogo com ID 5, registrado por João Silva, devolvido em 10/09/2024
(3, 3, 7, date('2024-09-03'), NULL), -- Pedro Souza alugou o jogo com ID 7, registrado por Felipe Costa, com data de entrada em 03/09/2024 e ainda não devolvido
(4, 2, 2, date('2024-09-04'), date('2024-09-08')), -- Ana Pereira alugou o jogo com ID 2, registrado por Maria Oliveira, devolvido em 08/09/2024
(5, 1, 4, date('2024-09-05'), NULL); -- Lucas Lima alugou o jogo com ID 4, registrado por João Silva, com data de entrada em 05/09/2024 e ainda não devolvido





