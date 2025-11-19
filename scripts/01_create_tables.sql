CREATE DATABASE artflow;
\c artflow;

CREATE TABLE Cliente (
    ID_Cliente SERIAL PRIMARY KEY,
    Nome VARCHAR(150) NOT NULL,
    Email VARCHAR(255) UNIQUE NOT NULL,
    Telefone VARCHAR(20)
);

CREATE TABLE Artista (
    ID_Artista SERIAL PRIMARY KEY,
    Nome VARCHAR(150) NOT NULL,
    Especialidade VARCHAR(100)
);

CREATE TABLE TipoArte (
    ID_TipoArte SERIAL PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Categoria VARCHAR(100)
);

CREATE TABLE Comissao (
    ID_Comissao SERIAL PRIMARY KEY,
    ID_Cliente INT NOT NULL REFERENCES Cliente(ID_Cliente),
    ID_Artista INT NOT NULL REFERENCES Artista(ID_Artista),
    ID_TipoArte INT NOT NULL REFERENCES TipoArte(ID_TipoArte),
    Descricao TEXT,
    Status VARCHAR(50) DEFAULT 'Solicitado',
    PrazoEntrega DATE,
    Valor DECIMAL(10,2) NOT NULL
);

CREATE TABLE Pagamento (
    ID_Pagamento SERIAL PRIMARY KEY,
    ID_Comissao INT UNIQUE NOT NULL REFERENCES Comissao(ID_Comissao),
    Metodo VARCHAR(50) NOT NULL,
    Valor DECIMAL(10,2) NOT NULL,
    DataPagamento TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE EntregaArquivo (
    ID_Entrega SERIAL PRIMARY KEY,
    ID_Comissao INT UNIQUE NOT NULL REFERENCES Comissao(ID_Comissao),
    ArquivoFinal VARCHAR(255) NOT NULL,
    DataEnvio TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
