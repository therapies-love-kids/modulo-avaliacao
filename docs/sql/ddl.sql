-- Tabela EMPRESA
CREATE TABLE EMPRESA (
    pk SERIAL PRIMARY KEY, -- Chave primária, gerada automaticamente pelo banco de dados

    unidade_prefixo VARCHAR(3) NOT NULL UNIQUE, -- Prefixo da unidade
    unidade_nome VARCHAR(64), -- Nome da unidade

    ativo BOOLEAN, -- Indica se a unidade está ativa (TRUE) ou inativa (FALSE)
    razao_social VARCHAR(128), -- Razão social da empresa/unidade
    nome_fantasia VARCHAR(64), -- Nome fantasia da unidade

    cep VARCHAR(8), -- CEP da unidade
    uf CHAR(2), -- Estado da unidade
    cidade VARCHAR(64), -- Cidade da unidade
    bairro VARCHAR(64), -- Bairro da unidade
    logradouro VARCHAR(128), -- Logradouro da unidade
    numero INTEGER, -- Número do endereço
    complemento VARCHAR(256) -- Complemento do endereço, se necessário
);

-- Tabela CONVENIO
CREATE TABLE CONVENIO (
    pk SERIAL PRIMARY KEY, -- Chave primária, gerada automaticamente pelo banco de dados

    ativo BOOLEAN, -- Indica se o convênio está ativo (TRUE) ou inativo (FALSE)
    nome VARCHAR(64) NOT NULL, -- Nome completo do convênio
    nome_curto VARCHAR(16) -- Nome curto ou sigla para identificação do convênio
);

-- Tabela COLABORADOR
CREATE TABLE COLABORADOR (
    pk SERIAL PRIMARY KEY, -- Chave primária, gerada automaticamente pelo banco de dados

    id VARCHAR(32) UNIQUE NOT NULL, -- Chave secundária de identificação, cópia da chave primária
    empresa_unidade_codigo VARCHAR REFERENCES EMPRESA(unidade_id), -- Chave estrangeira da tabela EMPRESA

    ativo BOOLEAN, -- Indica se o colaborador está ativo (TRUE) ou inativo (FALSE)
    nome VARCHAR(128) NOT NULL, -- Nome completo do colaborador
    cpf VARCHAR(11) UNIQUE, -- CPF do colaborador, apenas números
    email VARCHAR(128) UNIQUE, -- E-mail do colaborador

    modo_trabalho VARCHAR(64), -- Forma de vínculo do colaborador com a empresa (PJ, CLT, Particular)
    titulo_profissional VARCHAR(64), -- Título profissional do colaborador
    registro_profissional VARCHAR(64), -- Número do registro profissional (se aplicável)
    pis VARCHAR(16), -- Número do PIS do colaborador

    setor VARCHAR(64), -- Setor onde o colaborador trabalha
    funcao VARCHAR(64), -- Função contratada do colaborador
    especialidade VARCHAR(64) -- Especialidade do colaborador
);

-- Adiciona a constraint de chave estrangeira para diretor_colaborador_codigo após a criação da tabela COLABORADOR
ALTER TABLE EMPRESA
ADD CONSTRAINT fk_diretor_colaborador
FOREIGN KEY (diretor_colaborador_codigo)
REFERENCES COLABORADOR (codigo);

-- Tabela PACIENTE
CREATE TABLE PACIENTE (
    pk SERIAL PRIMARY KEY, -- Chave primária, gerada automaticamente pelo banco de dados
    
    id VARCHAR(64) UNIQUE NOT NULL, -- Chave secundária do paciente, cópia da chave primária
    empresa_unidade_id VARCHAR REFERENCES EMPRESA(unidade_id), -- Chave estrangeira herdada da tabela EMPRESA
    convenio_id INTEGER REFERENCES CONVENIO(pk), -- Chave estrangeira herdada da tabela CONVENIO
    codigo VARCHAR(64) UNIQUE NOT NULL, -- Código único do paciente gerado automaticamente

    ativo BOOLEAN, -- Indica se o paciente está ativo ou inativo

    nome VARCHAR(256) NOT NULL, -- Nome completo do paciente
    nome_curto VARCHAR(64), -- Nome curto do paciente
    sexo CHAR(1), -- Sexo do paciente
    data_nascimento DATE, -- Data de nascimento do paciente
    local_nascimento VARCHAR(64), -- Cidade de nascimento
    certidao_nascimento VARCHAR, -- Número da certidão de nascimento
    cpf VARCHAR(11) UNIQUE, -- CPF do paciente
    numero_convenio VARCHAR(32), -- Número do convênio
    observacoes TEXT -- Observações sobre o paciente
);

-- Tabela RESPONSAVEL
CREATE TABLE RESPONSAVEL (
    pk SERIAL PRIMARY KEY, -- Chave primária, gerada automaticamente pelo banco de dados

    id VARCHAR(32) UNIQUE NOT NULL, -- Chave secundária de identificação, cópia da chave primária
    ativo BOOLEAN, -- Indica se o responsável está ativo ou inativo

    nome VARCHAR(128) NOT NULL, -- Nome completo do responsável
    estado_civil VARCHAR(16), -- Estado civil do responsável
    profissao VARCHAR(64), -- Profissão do responsável
    cpf VARCHAR(11) UNIQUE, -- CPF do responsável
    rg VARCHAR(20) UNIQUE, -- RG do responsável
    celular VARCHAR(16) UNIQUE, -- Celular do responsável
    email VARCHAR(64) UNIQUE, -- E-mail do responsável
    contatos_extras TEXT -- Outros contatos do responsável, se necessário
);


-- Tabela LACO
CREATE TABLE LACO (
    pk SERIAL PRIMARY KEY, -- Chave primária, gerada automaticamente pelo banco de dados

    paciente_codigo VARCHAR REFERENCES PACIENTE(codigo) NOT NULL, -- Chave estrangeira da tabela PACIENTE
    responsavel_id VARCHAR REFERENCES RESPONSAVEL(id) NOT NULL, -- Chave estrangeira da tabela RESPONSAVEL

    data_hora_criacao TIMESTAMPTZ NOT NULL, -- Data e hora de criação do laço
    tipo VARCHAR(16) -- Tipo de laço (Pai, Mãe, Guardião, etc.)
);

-- Tabela PAGAMENTO
CREATE TABLE PAGAMENTO (
    pk SERIAL PRIMARY KEY, -- Chave primária, gerada automaticamente pelo banco de dados

    responsavel_id VARCHAR REFERENCES RESPONSAVEL(id), -- Chave estrangeira herdada da tabela RESPONSAVEL
    data_hora_criacao TIMESTAMPTZ NOT NULL, -- Preenchido automaticamente com a data e hora atuais do sistema
    valor NUMERIC(10, 2), -- Valor do pagamento, com duas casas decimais
    tipo VARCHAR(64), -- Tipo de pagamento (Débito, Crédito, PIX, Boleto)
    descricao TEXT -- Descrição do pagamento (ex.: "Mensalidade paciente XXXXX")
);


-- Tabela DOCUMENTO
CREATE TABLE DOCUMENTO (
    pk SERIAL PRIMARY KEY, -- Chave primária, gerada automaticamente pelo banco de dados

    paciente_codigo VARCHAR REFERENCES PACIENTE(codigo), -- Chave estrangeira herdada da tabela PACIENTE
    colaborador_id VARCHAR REFERENCES COLABORADOR(id), -- Chave estrangeira herdada da tabela COLABORADOR

    ativo BOOLEAN, -- Indica se o documento está ativo (TRUE) ou inativo (FALSE)
    data_hora_criacao TIMESTAMPTZ NOT NULL, -- Data e hora de criação do documento

    tipo VARCHAR(64), -- Tipo do documento (ex: CPF, RG, etc.)
    caminho VARCHAR(256) -- Caminho do arquivo no sistema
);

-- Tabela CONTRATO
CREATE TABLE CONTRATO (
    pk SERIAL PRIMARY KEY, -- Chave primária, gerada automaticamente pelo banco de dados

    responsavel_id VARCHAR REFERENCES RESPONSAVEL(id), -- Chave estrangeira herdada da tabela RESPONSAVEL
    paciente_codigo VARCHAR REFERENCES PACIENTE(codigo), -- Chave estrangeira herdada da tabela PACIENTE
    documento_id INTEGER REFERENCES DOCUMENTO(pk), -- Chave estrangeira herdada da tabela DOCUMENTO

    ativo BOOLEAN, -- Indica se o contrato está ativo (TRUE) ou inativo (FALSE)
    data_hora_criacao TIMESTAMPTZ NOT NULL, -- Data e hora de criação do contrato

    cep VARCHAR(8), -- CEP do contratante
    uf CHAR(2), -- Estado do contratante
    cidade VARCHAR(64), -- Cidade do contratante
    bairro VARCHAR(64), -- Bairro do contratante
    logradouro VARCHAR(128), -- Rua/Avenida do contratante
    numero INTEGER, -- Número do endereço do contratante
    complemento VARCHAR(256) -- Complemento do endereço, se necessário
);

-- Tabela AGENDAMENTO
CREATE TABLE AGENDAMENTO (
    pk SERIAL PRIMARY KEY, -- Chave primária, gerada automaticamente pelo banco de dados

    especialista_colaborador_id VARCHAR REFERENCES COLABORADOR(id), -- Chave estrangeira da tabela COLABORADOR
    paciente_codigo VARCHAR REFERENCES PACIENTE(codigo) NOT NULL, -- Chave estrangeira da tabela PACIENTE
    recepcionista_colaborador_id VARCHAR REFERENCES COLABORADOR(id), -- Código do recepcionista responsável pelo agendamento
    responsavel_id VARCHAR REFERENCES RESPONSAVEL(id), -- Chave estrangeira da tabela RESPONSAVEL
    unidade_id VARCHAR(8), -- Chave estrangeira herdada da tabela EMPRESA

    data_hora TIMESTAMPTZ NOT NULL, -- Data definida para o evento do agendamento
    sala VARCHAR(16), -- Número ou código da sala onde ocorrerá o evento

    tipo VARCHAR(64), -- Tipo de agendamento (Consulta, Avaliação clínica ou Avaliação terapêutica)
    status VARCHAR(16) DEFAULT 'Agendado', -- Estado do agendamento (Agendado, Confirmado, etc.)

    observacoes TEXT -- Campo para observações adicionais
);


-- Tabela AVALIACAO
CREATE TABLE AVALIACAO (
    pk SERIAL PRIMARY KEY, -- Chave primária, gerada automaticamente pelo banco de dados

    paciente_codigo VARCHAR REFERENCES PACIENTE(codigo) NOT NULL, -- Chave estrangeira herdada da tabela PACIENTE
    colaborador_id VARCHAR REFERENCES COLABORADOR(id) NOT NULL, -- Chave estrangeira herdada da tabela COLABORADOR

    data_hora_inicio TIMESTAMPTZ NOT NULL, -- Horário de início da avaliação
    data_hora_fim TIMESTAMPTZ NOT NULL, -- Horário de finalização da avaliação

    status VARCHAR(32), -- Estado da avaliação (Em andamento, Finalizada)
    anotacoes TEXT -- Anotações adicionais sobre a avaliação
);

-- Tabela USUARIO
CREATE TABLE USUARIO (
    pk SERIAL PRIMARY KEY, -- Chave primária, gerada automaticamente pelo banco de dados

    colaborador_id VARCHAR(32) UNIQUE REFERENCES COLABORADOR(id), -- Chave estrangeira da tabela COLABORADOR
    colaborador_nome VARCHAR REFERENCES COLABORADOR(nome), -- Atributo derivado da tabela COLABORADOR
    ativo BOOLEAN, -- Indica se o usuário está ativo ou inativo
    online BOOLEAN, -- Indica se o usuário está online ou offline
    nome VARCHAR(64) NOT NULL, -- Nome do usuário utilizado para autenticação
    senha VARCHAR(128) NOT NULL, -- Senha do usuário para autenticação
    nome_computador VARCHAR(64), -- Nome do computador do usuário na rede
    perfil VARCHAR(16) -- Perfil de acesso do usuário ao sistema
);
