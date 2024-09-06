CREATE TABLE Jogos (
    ID_Jogo INTEGER PRIMARY KEY AUTOINCREMENT, -- Auto-incremento para garantir chave única
    Nome_Jogo TEXT NOT NULL, -- Nome do jogo, obrigatório
    Categoria TEXT NOT NULL, -- Categoria do jogo, obrigatório
    Ano_Lancamento INTEGER CHECK
(Ano_Lancamento > 1900 AND Ano_Lancamento <= strftime
('%Y','now')), -- Ano deve ser válido e não no futuro
    Preco REAL CHECK
(Preco >= 0), -- Preço deve ser um valor positivo
    Estoque INTEGER DEFAULT 0 CHECK
(Estoque >= 0) -- Quantidade em estoque, padrão é 0 e não pode ser negativo
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
    ID_Cliente INTEGER PRIMARY KEY AUTOINCREMENT, -- Chave primária com auto-incremento
    Nome_Cliente TEXT NOT NULL, -- Nome do cliente, obrigatório
    Email TEXT NOT NULL UNIQUE, -- Email do cliente, obrigatório e único
    Telefone TEXT, -- Telefone opcional
    Endereco TEXT NOT NULL, -- Endereço do cliente, obrigatório
    Data_Cadastro DATE DEFAULT (date('now')), -- Data de cadastro com valor padrão para a data atual
    Status_Ativo BOOLEAN DEFAULT 1 -- Indica se o cliente está ativo (1 = ativo, 0 = inativo)
);

INSERT INTO Clientes (Nome_Cliente, Email, Telefone, Endereco)
VALUES
('João Silva', 'joao.silva@email.com', '(11) 98765-4321', 'Rua das Flores, 123, São Paulo, SP'),
('Maria Oliveira', 'maria.oliveira@email.com', '(21) 99876-5432', 'Avenida Brasil, 456, Rio de Janeiro, RJ'),
('Pedro Souza', 'pedro.souza@email.com', '(31) 91234-5678', 'Rua dos Pinheiros, 789, Belo Horizonte, MG'),
('Ana Pereira', 'ana.pereira@email.com', '(41) 92345-6789', 'Avenida Central, 321, Curitiba, PR'),
('Lucas Lima', 'lucas.lima@email.com', '(51) 93456-7890', 'Rua do Porto, 654, Porto Alegre, RS'),
('Carla Mendes', 'carla.mendes@email.com', '(61) 94567-8901', 'Quadra 5, Bloco A, Brasília, DF'),
('Felipe Costa', 'felipe.costa@email.com', '(71) 95678-9012', 'Rua do Comércio, 111, Salvador, BA'),
('Beatriz Almeida', 'beatriz.almeida@email.com', '(81) 96789-0123', 'Rua da Praia, 222, Recife, PE'),
('Rafael Gonçalves', 'rafael.goncalves@email.com', '(91) 97890-1234', 'Avenida das Palmeiras, 333, Belém, PA'),
('Julia Ramos', 'julia.ramos@email.com', '(31) 98901-2345', 'Rua do Sol, 444, Belo Horizonte, MG');

CREATE TABLE Colaboradores (
    ColaboradorID INTEGER PRIMARY KEY AUTOINCREMENT, -- Chave primária com auto-incremento
    NomeColaborador TEXT NOT NULL, -- Nome do colaborador, obrigatório
    Email TEXT NOT NULL DEFAULT 'sem email', -- Email do colaborador, padrão é 'sem email'
    Telefone TEXT, -- Telefone opcional
    Cargo TEXT NOT NULL, -- Cargo do colaborador, obrigatório
    DataContratacao DATE DEFAULT (date('now')), -- Data de contratação, padrão é a data atual
    Ativo BOOLEAN DEFAULT 1 -- Indica se o colaborador está ativo (1 = ativo, 0 = inativo)
);



