--Apagar uma entrega que existe e não depende de mais nada
DELETE FROM EntregaArquivo
WHERE ID_Entrega = 3;

--Pagamento tem FK única para Comissao
DELETE FROM Pagamento
WHERE ID_Pagamento = 2;

--A comissão 4 não tem pagamento nem entrega então pode apagar.
DELETE FROM Comissao
WHERE ID_Comissao = 4;
