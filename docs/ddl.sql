-- Tabela EMPRESA
CREATE TABLE EMPRESA (
    id SERIAL PRIMARY KEY,
    unidade_codigo VARCHAR(3) NOT NULL UNIQUE, -- Adicionado o constraint UNIQUE aqui
    unidade_nome VARCHAR(64),
    nome_fantasia VARCHAR(64),
    razao_social VARCHAR(128),
    status BOOLEAN,
    cep VARCHAR(8),
    uf CHAR(2),
    cidade VARCHAR(64),
    bairro VARCHAR(64),
    logradouro VARCHAR(128),
    cnpj VARCHAR(14) UNIQUE,
    fone VARCHAR(15) UNIQUE,
    email VARCHAR(64),
    diretor_colaborador_codigo VARCHAR
);

-- Tabela CONVENIO
CREATE TABLE CONVENIO (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(64) NOT NULL,
    nome_curto VARCHAR(16),
    ativo BOOLEAN
);

-- Tabela COLABORADOR
CREATE TABLE COLABORADOR (
    id SERIAL PRIMARY KEY,
    ativo BOOLEAN,
    modo_trabalho VARCHAR(64),
    formacao VARCHAR(64),
    empresa_unidade_codigo VARCHAR REFERENCES EMPRESA(unidade_codigo),
    codigo VARCHAR(32) UNIQUE NOT NULL,
    registro_profissional VARCHAR,
    nome VARCHAR(128) NOT NULL,
    cpf VARCHAR(11) UNIQUE,
    tipo VARCHAR(64),
    funcao VARCHAR(64),
    especialidade VARCHAR(64),
    perfil VARCHAR(64),
    codigo_computador VARCHAR(64),
    email VARCHAR(128) UNIQUE,
    usuario VARCHAR(64),
    senha VARCHAR(128)
);

-- Adiciona a constraint de chave estrangeira para diretor_colaborador_codigo após a criação da tabela COLABORADOR
ALTER TABLE EMPRESA
ADD CONSTRAINT fk_diretor_colaborador
FOREIGN KEY (diretor_colaborador_codigo)
REFERENCES COLABORADOR (codigo);

-- Tabela PACIENTE
CREATE TABLE PACIENTE (
    id SERIAL PRIMARY KEY,
    ativo BOOLEAN,
    empresa_unidade_codigo VARCHAR REFERENCES EMPRESA(unidade_codigo),
    codigo VARCHAR(64) UNIQUE NOT NULL,
    nome VARCHAR(256) NOT NULL,
    nome_curto VARCHAR(64),
    sexo CHAR(1),
    data_nascimento DATE,
    local_nascimento VARCHAR(64),
    certidao_nascimento VARCHAR,
    cpf VARCHAR(11) UNIQUE,
    convenio_id INTEGER REFERENCES CONVENIO(id),
    numero_convenio VARCHAR(16),
    observacoes TEXT
);

-- Tabela RESPONSAVEL
CREATE TABLE RESPONSAVEL (
    id SERIAL PRIMARY KEY,
    codigo VARCHAR(64) UNIQUE NOT NULL,
    ativo BOOLEAN,
    nome VARCHAR(128) NOT NULL,
    estado_civil VARCHAR(64),
    profissao VARCHAR(64),
    cpf VARCHAR(11) UNIQUE,
    rg VARCHAR(20) UNIQUE,
    celular VARCHAR(15) UNIQUE,
    email VARCHAR(64) UNIQUE,
    contatos_extras TEXT
);

-- Tabela VINCULO
CREATE TABLE VINCULO (
    id SERIAL PRIMARY KEY,
    data_hora_criacao TIMESTAMPTZ NOT NULL,
    paciente_codigo VARCHAR REFERENCES PACIENTE(codigo) NOT NULL,
    responsavel_codigo VARCHAR REFERENCES RESPONSAVEL(codigo) NOT NULL,
    tipo VARCHAR(16)
);

-- Tabela PAGAMENTO
CREATE TABLE PAGAMENTO (
    id SERIAL PRIMARY KEY,
    data_hora_criacao TIMESTAMPTZ NOT NULL,
    responsavel_codigo VARCHAR REFERENCES RESPONSAVEL(codigo),
    valor NUMERIC(10, 2),
    tipo VARCHAR(64),
    descricao TEXT
);

-- Tabela DOCUMENTO
CREATE TABLE DOCUMENTO (
    id SERIAL PRIMARY KEY,
    data_hora_criacao TIMESTAMPTZ NOT NULL,
    ativo BOOLEAN,
    tipo VARCHAR(64),
    caminho VARCHAR(256),
    paciente_codigo VARCHAR REFERENCES PACIENTE(codigo),
    colaborador_codigo VARCHAR REFERENCES COLABORADOR(codigo)
);

-- Tabela CONTRATO
CREATE TABLE CONTRATO (
    id SERIAL PRIMARY KEY,
    data_hora_criacao TIMESTAMPTZ NOT NULL,
    ativo BOOLEAN,
    responsavel_codigo VARCHAR REFERENCES RESPONSAVEL(codigo),
    paciente_codigo VARCHAR REFERENCES PACIENTE(codigo),
    documento_id INTEGER REFERENCES DOCUMENTO(id),
    cep VARCHAR(8),
    uf CHAR(2),
    cidade VARCHAR(64),
    bairro VARCHAR(64),
    logradouro VARCHAR(128),
    numero INTEGER,
    complemento VARCHAR(256)
);

-- Tabela AGENDAMENTO
CREATE TABLE AGENDAMENTO (
    id SERIAL PRIMARY KEY,
    unidade_codigo VARCHAR(8),
    tipo VARCHAR(64),
    status VARCHAR(16),
    data_hora_inicio TIMESTAMPTZ NOT NULL,
    data_hora_fim TIMESTAMPTZ NOT NULL,
    observacao TEXT,
    paciente_codigo VARCHAR REFERENCES PACIENTE(codigo) NOT NULL,
    responsavel_codigo VARCHAR REFERENCES RESPONSAVEL(codigo),
    especialista_colaborador_codigo VARCHAR REFERENCES COLABORADOR(codigo),
    recepcionista_colaborador_codigo VARCHAR REFERENCES COLABORADOR(codigo),
    sala SMALLINT
);

-- Tabela AVALIACAO
CREATE TABLE AVALIACAO (
    id SERIAL PRIMARY KEY,
    paciente_codigo VARCHAR REFERENCES PACIENTE(codigo) NOT NULL,
    colaborador_codigo VARCHAR REFERENCES COLABORADOR(codigo) NOT NULL,
    data_hora_inicio TIMESTAMPTZ NOT NULL,
    data_hora_fim TIMESTAMPTZ NOT NULL,
    status VARCHAR(32),
    anotacoes TEXT
);

-- Adicionando queries para criar os relacionamentos nomeados da imagem (caso necessário para a aplicação)
-- Estes não são estritamente necessários para a estrutura das tabelas, mas podem ser úteis para a lógica da aplicação.

-- Não há tabelas explícitas para "Agenda" e "Conduz", estes são relacionamentos entre as tabelas AGENDAMENTO e COLABORADOR.
-- Os campos especialista_colaborador_codigo e recepcionista_colaborador_codigo na tabela AGENDAMENTO representam esses relacionamentos.

-- Pode-se criar VIEWS para facilitar consultas relacionadas a esses relacionamentos, se necessário.