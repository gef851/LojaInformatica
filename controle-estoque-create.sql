CREATE TABLE Cliente (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_cliente TEXT NOT NULL
    telefone NUMBER,
    email TEXT,
    cpf NUMBER
);

CREATE TABLE OrdemServico (
    id_ordemservico INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_produto TEXT NOT NULL,
    tipo TEXT,
    problema TEXT,
    observacao TEXT
);

CREATE TABLE Manutencao (
    id_Manutencao INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_cliente TEXT NOT NULL,
    nome_produto TEXT,
    peca_estoque TEXT,
    preco REAL,
    quantidade NUMBER INTEGER
);

CREATE TABLE Peca (
    id_peca INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    codigo TEXT UNIQUE,
    preco REAL,
    quantidade NUMBER INTEGER,
    id_cliente INTEGER,
    id_ordemservico INTEGER,
    FOREIGN KEY (id_cLIENTE) REFERENCES Cliente(id_cLIENTE),
    FOREIGN KEY (id_ordemservico) REFERENCES OrdemServico(id_ordemservico)
);

CREATE TABLE Estoque (
    id_entrada INTEGER PRIMARY KEY AUTOINCREMENT,
    data DATE,
    quantidade NUMBER INTEGER,
    preco REAL,
    id_peca INTEGER,
    id_ordemservico INTEGER,
    FOREIGN KEY (id_peca) REFERENCES Peca(id_peca),
    FOREIGN KEY (id_ordemservico) REFERENCES OrdemServio(id_ordemservico)
);

CREATE TABLE Saida (
    id_saida INTEGER PRIMARY KEY AUTOINCREMENT,
    data DATE,
    quantidade NUMBER INTEGER,
    id_peca INTEGER,
    id_cliente INTEGER,
    FOREIGN KEY (id_peca) REFERENCES Peca(id_peca),
    FOREIGN KEY (id_manutencao) REFERENCES Manutencao(id_manutencao)
);
