INSERT INTO Cliente (nome_cliente) VALUES
('MARIA'), ('SAMUEL'), ('FLÁVIA');

INSERT INTO OrdemServico (nome, telefone, email, cnpj) VALUES
('AutoParts Brasil', '21999999999', 'contato@autoparts.com', '12.345.678/0001-99'),
('Distribuidora Mecânica', '21988888888', 'vendas@distribuidora.com', '98.765.432/0001-11');

INSERT INTO Cliente (nome, cpf, telefone) VALUES
('Carlos Silva', '123.456.789-00', '21977777777'),
('Mariana Costa', '987.654.321-00', '21966666666');

INSERT INTO Peca (nome, codigo, preco, quantidade, id_categoria, id_fornecedor) VALUES
('Filtro de Óleo', 'FO123', 45.90, 50, 1, 1),
('Pastilha de Freio', 'PF456', 89.90, 30, 3, 2),
('Amortecedor', 'AM789', 250.00, 20, 2, 1);

INSERT INTO EntradaEstoque (data, quantidade, id_peca, id_fornecedor) VALUES
('2025-11-01', 20, 1, 1),
('2025-11-02', 10, 2, 2);

INSERT INTO SaidaVenda (data, quantidade, id_peca, id_cliente) VALUES
('2025-11-10', 2, 1, 1),
('2025-11-11', 1, 2, 2);
