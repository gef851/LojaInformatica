CREATE TABLE Categoria (
    id_categoria INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_categoria TEXT NOT NULL
);

CREATE TABLE Fornecedor (
    id_fornecedor INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    telefone TEXT,
    email TEXT,
    cnpj TEXT
);

CREATE TABLE Cliente (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    cpf TEXT UNIQUE,
    telefone TEXT
);

CREATE TABLE Peca (
    id_peca INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    codigo TEXT UNIQUE,
    preco REAL,
    quantidade INTEGER,
    id_categoria INTEGER,
    id_fornecedor INTEGER,
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria),
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(id_fornecedor)
);

CREATE TABLE EntradaEstoque (
    id_entrada INTEGER PRIMARY KEY AUTOINCREMENT,
    data DATE,
    quantidade INTEGER,
    id_peca INTEGER,
    id_fornecedor INTEGER,
    FOREIGN KEY (id_peca) REFERENCES Peca(id_peca),
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(id_fornecedor)
);

CREATE TABLE SaidaVenda (
    id_saida INTEGER PRIMARY KEY AUTOINCREMENT,
    data DATE,
    quantidade INTEGER,
    id_peca INTEGER,
    id_cliente INTEGER,
    FOREIGN KEY (id_peca) REFERENCES Peca(id_peca),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);
