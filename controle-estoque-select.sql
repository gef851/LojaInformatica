-- 1. Peças com preço acima de 100
SELECT * FROM Peca WHERE preco > 100;

-- 2. Clientes ordenados por nome
SELECT * FROM Cliente ORDER BY nome ASC;

-- 3. Limitar as 2 primeiras saídas
SELECT * FROM Saida LIMIT 2;

-- 4. JOIN peças e cliente
SELECT p.nome, p.codigo, c.nome_cliente
FROM Peca p
JOIN Cliente c ON p.id_cliente = c.id_cliente;

-- 5. JOIN vendas e clientes
SELECT s.id_saida, s.data, s.quantidade, c.nome AS cliente
FROM Saida s
JOIN Manutencao m ON s.id_manutencao = m.id_manutencao;
