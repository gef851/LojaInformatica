-- UPDATE
UPDATE Peca SET quantidade = quantidade - 2 WHERE id_peca = 1;
UPDATE Cliente SET telefone = '12955555333' WHERE id_cliente = 1;
UPDATE OrdemServico SET nome_produto = 'Notebook' WHERE id_ordemservico = 1;

-- DELETE
DELETE FROM Saida WHERE id_saida = 2;
DELETE FROM Estoque WHERE id_entrada = 2;
DELETE FROM Peca WHERE quantidade = 0;
