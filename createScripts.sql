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



