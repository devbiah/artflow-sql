-- Atualiza o status de uma comissão específica
UPDATE Comissao
SET Status = 'Concluído'
WHERE ID_Comissao = 2;

-- Atualiza o telefone de um cliente
UPDATE Cliente
SET Telefone = '11911112222'
WHERE ID_Cliente = 3;

-- Aumenta o valor de uma comissão
UPDATE Comissao
SET Valor = Valor * 1.10
WHERE ID_Comissao = 5;
