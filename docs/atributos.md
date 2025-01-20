## Agendamento
 - id SERIAL PRIMARY KEY
 - unidade VARCHAR(8)
 - tipo VARCHAR(64)
 - status VARCHAR(16)
 - data_hora_inicio TIMESTAMP
 - data_hora_fim TIMESTAMP
 - observacao VARCHAR(128)
 - paciente_codigo INTEGER
 - responsável_codigo INTEGER
 - colaborador_codigo INTEGER
 - recepcionista_codigo INTEGER
 - sala SMALLINT

## Avaliação
 - id SERIAL PRIMARY KEY
 - paciente_codigo INTEGER
 - colaborador_codigo INTEGER
 - data_hora_inicio TIMESTAMP
 - data_hora_fim TIMESTAMP
 - status VARCHAR(32)
 - anotacoes VARCHAR(1024)

## Contrato
 - id SERIAL PRIMARY KEY
 - data_hora_criacao TIMESTAMP
 - ativo BOOLEAN
 - responsavel_codigo INTEGER
 - paciente_codigo INTEGER
 - convenio BOOLEAN
 - documento_id INTEGER
 - cep VARCHAR(8)
 - uf CHAR(2)
 - cidade VARCHAR(64)
 - bairro VARCHAR(64)
 - logradouro VARCHAR(128)
 - numero INTEGER
 - complemento VARCHAR(256)
 - unidade VARCHAR(8)

## Documento
 - id SERIAL PRIMARY KEY
 - data_hora_criacao TIMESTAMP
 - ativo BOOLEAN
 - tipo VARCHAR(64)
 - caminho VARCHAR(256)
 - paciente_codigo INTEGER
 - colaborador_codigo INTEGER

## Paciente
 - id SERIAL PRIMARY KEY
 - ativo BOOLEAN
 - unidade VARCHAR(8)
 - codigo VARCHAR(64)
 - nome VARCHAR(256)
 - nome_curto VARCHAR(64)
 - sexo CHAR(1)
 - data_nascimento TIMESTAMP
 - local_nascimento VARCHAR(64)
 - certidao_nascimento INTEGER
 - cpf VARCHAR(11) UNIQUE
 - convenio VARCHAR(64)
 - numero_convenio VARCHAR(16)
 - observacoes VARCHAR(256)

## Pagamento
 - id SERIAL PRIMARY KEY
 - data_hora_criacao TIMESTAMP
 - responsavel_codigo INTEGER
 - valor NUMERIC(10, 2)
 - tipo VARCHAR(64)
 - descricao VARCHAR(256)
 - unidade VARCHAR(8)

## Colaborador
 - id SERIAL PRIMARY KEY
 - ativo BOOLEAN
 - modo_trabalho VARCHAR(64)
 - formacao VARCHAR(64)
 - unidade VARCHAR(8)
 - codigo VARCHAR(32)
 - registro_profissional INTEGER
 - nome VARCHAR(128)
 - cpf VARCHAR(11) UNIQUE
 - tipo VARCHAR(64)
 - funcao VARCHAR(64)
 - especialidade VARCHAR(64)
 - perfil VARCHAR(64)
 - codigo_computador VARCHAR(64)
 - email VARCHAR(128) UNIQUE
 - usuario VARCHAR(64)
 - senha VARCHAR(128)

## Responsável
 - id SERIAL PRIMARY KEY
 - codigo VARCHAR(64)
 - ativo BOOLEAN
 - nome VARCHAR(128)
 - estado_civil VARCHAR(64)
 - profissao VARCHAR(64)
 - cpf VARCHAR(11) UNIQUE
 - rg VARCHAR(20) UNIQUE
 - celular VARCHAR(15) UNIQUE
 - email VARCHAR(64)
 - contatos_extras VARCHAR(128)

## Vínculo
 - id SERIAL PRIMARY KEY
 - data_hora_criacao TIMESTAMP
 - paciente_codigo VARCHAR(64)
 - responsavel_codigo VARCHAR(64)
 - tipo VARCHAR(16)
