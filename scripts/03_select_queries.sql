-- Listar todas as comissões com nome do cliente e artista
SELECT 
    Comissao.ID_Comissao,
    Cliente.Nome AS Cliente,
    Artista.Nome AS Artista,
    TipoArte.Nome AS Tipo_Arte,
    Comissao.Status,
    Comissao.Valor
FROM Comissao
INNER JOIN Cliente ON Comissao.ID_Cliente = Cliente.ID_Cliente
INNER JOIN Artista ON Comissao.ID_Artista = Artista.ID_Artista
INNER JOIN TipoArte ON Comissao.ID_TipoArte = TipoArte.ID_TipoArte;

-- Buscar comissões com valor acima de 200, ordenadas do maior para o menor
SELECT 
    ID_Comissao,
    Descricao,
    Valor,
    Status
FROM Comissao
WHERE Valor > 200
ORDER BY Valor DESC;

-- Listar pagamentos com nome do cliente
SELECT 
    Pagamento.ID_Pagamento,
    Cliente.Nome AS Cliente,
    Pagamento.Metodo,
    Pagamento.Valor,
    Pagamento.DataPagamento
FROM Pagamento
INNER JOIN Comissao ON Pagamento.ID_Comissao = Comissao.ID_Comissao
INNER JOIN Cliente ON Comissao.ID_Cliente = Cliente.ID_Cliente
ORDER BY Pagamento.DataPagamento;

-- Buscar artistas que possuem "art" na especialidade
SELECT 
    ID_Artista,
    Nome,
    Especialidade
FROM Artista
WHERE Especialidade ILIKE '%art%';

-- Lista as últimas 2 entregas feitas
SELECT 
    ID_Entrega,
    ArquivoFinal,
    DataEnvio
FROM EntregaArquivo
ORDER BY DataEnvio DESC
LIMIT 2;
