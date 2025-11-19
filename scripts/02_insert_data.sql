INSERT INTO Cliente (Nome, Email, Telefone) VALUES
('Ana Ribeiro', 'ana.ribeiro@email.com', '11987654321'),
('Carlos Mendes', 'carlos.mendes@email.com', '11999887766'),
('Beatriz Silva', 'beatriz.silva@email.com', '21977889900'),
('João Pereira', 'joao.pereira@email.com', '31911223344'),
('Mariana Costa', 'mariana.costa@email.com', '41955667788');


INSERT INTO Artista (Nome, Especialidade) VALUES
('Lucas Andrade', 'Retratos Realistas'),
('Fernanda Lima', 'Arte Digital'),
('Ricardo Torres', 'Cenários Fantásticos'),
('Juliana Duarte', 'Ilustração Infantil'),
('Hugo Martins', 'Concept Art');


INSERT INTO TipoArte (Nome, Categoria) VALUES
('Retrato', 'Figurativo'),
('Cenário', 'Ambientação'),
('Mascote', 'Personagem'),
('Logo Cartoon', 'Identidade Visual'),
('Concept Art', 'Criativa');

INSERT INTO Comissao (ID_Cliente, ID_Artista, ID_TipoArte, Descricao, Status, PrazoEntrega, Valor)
VALUES
(1, 1, 1, 'Retrato digital em estilo realista.', 'Em produção', '2025-11-01', 250.00),
(2, 3, 2, 'Cenário medieval com castelo.', 'Solicitado', '2025-11-10', 400.00),
(3, 2, 3, 'Mascote para canal de games.', 'Concluído', '2025-11-28', 180.00),
(4, 4, 4, 'Logo cartoon divertido.', 'Em produção', '2025-11-05', 220.00),
(5, 5, 5, 'Concept art de personagem futurista.', 'Solicitado', '2025-11-15', 500.00),
(1, 2, 3, 'Mascote para marca pessoal.', 'Concluído', '2025-11-30', 150.00);

INSERT INTO Pagamento (ID_Comissao, Metodo, Valor, DataPagamento) VALUES
(1, 'PIX', 250.00, '2024-11-20 14:30:00'),
(3, 'Cartão de Crédito', 180.00, '2024-11-28 09:10:00'),
(6, 'Boleto', 150.00, '2024-11-30 16:45:00');

INSERT INTO EntregaArquivo (ID_Comissao, ArquivoFinal, DataEnvio) VALUES
(1, 'retratos/ana_retrato_final.png', '2025-11-01 19:00:00'),
(3, 'splashart/beatriz_mascote_final.png', '2025-11-29 15:20:00'),
(6, 'mascotes/ana_mascote_pessoal.png', '2025-11-30 20:00:00');
