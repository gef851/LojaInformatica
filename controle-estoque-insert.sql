INSERT INTO Cliente (nome_cliente) VALUES
('MARIA'), ('SAMUEL'), ('FLÁVIA');

INSERT INTO OrdemServico (nome_produto, tipo, problema, observacao) VALUES
('CPU', 'Torre', 'Não Liga', 'Com cabo de Força'),
('Notebook', 'Samsung', 'Não Conecta na Internet', 'Com Bolsa e Carregador');

INSERT INTO Manutencao (nome_cliente, nome_produto, peca_estoque, preco, quantidade) VALUES
('Carlos Silva', 'CPU', 'Fonte de Alimentação', '90.00', '01'),
('Mariana Costa', 'Notebook', 'Carregador AC', '190.00', '01');

INSERT INTO Peca (nome, codigo, preco, quantidade, id_cliente, id_ordemservico) VALUES
('Memória 8Gb', '0O123', 185.90, 03, 0001, 00011),
('SSD 240Gb', '1396', 299.90, 01, 0003, 00022),
('Mouse', '002189', 15.00, 10, 0009, 000091);

INSERT INTO Estoque (data, quantidade, preco, id_peca, id_ordemservico) VALUES
('2025-11-28', 05, 130.00, 00011, 000056),
('2025-11-14', 03, 29.90, 000102, 0000012);

INSERT INTO Saida (data, quantidade, id_peca, id_manutencao) VALUES
('2025-11-02', 02, 00041, 0000211),
('2025-11-17', 11, 00092, 0000020);
