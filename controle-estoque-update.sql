-- UPDATE
UPDATE Peca SET quantidade = quantidade - 2 WHERE id_peca = 1;
UPDATE Cliente SET telefone = '21955555555' WHERE id_cliente = 1;
UPDATE Fornecedor SET email = 'novoemail@autoparts.com' WHERE id_fornecedor = 1;

-- DELETE
DELETE FROM SaidaVenda WHERE id_saida = 2;
DELETE FROM EntradaEstoque WHERE id_entrada = 2;
DELETE FROM Peca WHERE quantidade = 0;
