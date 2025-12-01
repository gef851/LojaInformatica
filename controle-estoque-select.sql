-- 1. Peças com preço acima de 100
SELECT * FROM Peca WHERE preco > 100;

-- 2. Clientes ordenados por nome
SELECT * FROM Cliente ORDER BY nome ASC;

-- 3. Limitar as 2 primeiras saídas
SELECT * FROM SaidaVenda LIMIT 2;

-- 4. JOIN peças e categorias
SELECT p.nome, p.codigo, c.nome_categoria
FROM Peca p
JOIN Categoria c ON p.id_categoria = c.id_categoria;

-- 5. JOIN vendas e clientes
SELECT s.id_saida, s.data, s.quantidade, c.nome AS cliente
FROM SaidaVenda s
JOIN Cliente c ON s.id_cliente = c.id_cliente;
