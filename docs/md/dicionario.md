## AGENDAMENTO

### id

**Tipo:** `SERIAL PRIMARY KEY`  
**Descrição:** Chave primária, gerada automaticamente pelo banco de dados.

### especialista_colaborador_codigo

**Tipo:** `VARCHAR`  
**Referência:** `COLABORADOR(codigo)`  
**Descrição:** Chave estrangeira herdada da tabela **COLABORADOR**, usada para identificar o especialista responsável pela condução do agendamento.

### paciente_codigo

**Tipo:** `VARCHAR`  
**Referência:** `PACIENTE(codigo)`  
**Descrição:** Chave estrangeira herdada da tabela **PACIENTE**.

### recepcionista_colaborador_codigo

**Tipo:** `VARCHAR`  
**Referência:** `COLABORADOR(codigo)`  
**Descrição:** Código do recepcionista responsável pelo agendamento.

### responsavel_codigo

**Tipo:** `VARCHAR`  
**Referência:** `RESPONSAVEL(codigo)`  
**Descrição:** Chave estrangeira herdada da tabela **RESPONSAVEL**.

### unidade_codigo

**Tipo:** `VARCHAR(8)`  
**Descrição:** Chave estrangeira, herdada da tabela **EMPRESA**.

### data_hora_inicio

**Tipo:** `TIMESTAMPTZ`  
**Descrição:** Data definida para o evento do agendamento pelo colaborador responsável por agendar.

### data_hora_fim

**Tipo:** `TIMESTAMPTZ`  
**Descrição:** Preenchido automaticamente com o horário atual do sistema no momento de finalização.

### sala

**Tipo:** `VARCHAR(16)`  
**Descrição:** Número ou código da sala onde ocorrerá o evento do agendamento.

### tipo

**Tipo:** `VARCHAR(64)`  
**Descrição:** Tipo de agendamento definido pelo criador do registro, podendo ser: {A SER DEFINIDO}.

### status

**Tipo:** `VARCHAR(16)`  
**Descrição:** Define o estado em que se encontra o agendamento. Valor padrão: "Por confirmar". Pode ser alterado para: "Confirmado", "Em andamento", "Concluído" e "Cancelado".

### observacao

**Tipo:** `TEXT`  
**Descrição:** Campo de texto utilizado para incluir observações acerca do agendamento. Pode conter informações como {A SER DEFINIDO}.

## AVALIACAO

### id

**Tipo:** `SERIAL PRIMARY KEY`  
**Descrição:** Chave primária, gerada automaticamente pelo banco de dados.

### paciente_codigo

**Tipo:** `VARCHAR`  
**Referência:** `PACIENTE(codigo)`  
**Descrição:** Chave estrangeira herdada da tabela **PACIENTE**.

### colaborador_codigo

**Tipo:** `VARCHAR`  
**Referência:** `COLABORADOR(codigo)`  
**Descrição:** Chave estrangeira herdada da tabela **COLABORADOR**.

### data_hora_inicio

**Tipo:** `TIMESTAMPTZ`  
**Descrição:** {A SER DEFINIDO}

### data_hora_fim

**Tipo:** `TIMESTAMPTZ`  
**Descrição:** Preenchido automaticamente com o horário atual do sistema no momento de finalização.

### status

**Tipo:** `VARCHAR(32)`  
**Descrição:** Define o estado em que se encontra o agendamento. Valor padrão: {A SER DEFINIDO}.

### anotacoes

**Tipo:** `TEXT`  
**Descrição:** Campo para preencher com anotações ao decorrer da avaliação, caso seja necessário.

## COLABORADOR {REVISAR DEPOIS}

### id

**Tipo:** `SERIAL PRIMARY KEY`  
**Descrição:** Chave primária, gerada automaticamente pelo banco de dados.

### empresa_unidade_codigo

**Tipo:** `VARCHAR`  
**Referência:** `EMPRESA(unidade_codigo)`  
**Descrição:** Chave estrangeira herdada da tabela **EMPRESA**. Refere-se à unidade/empresa onde o colaborador foi contratado.

### codigo

**Tipo:** `VARCHAR(32)`  
**Restrição:** `UNIQUE`  
**Descrição:** Chave secundária de identificação, {A SER DEFINIDO}.

### ativo

**Tipo:** `BOOLEAN`  
**Descrição:** Campo para indicar se o colaborador está ou não ativo. Pode ser TRUE (ativo) ou FALSE (inativo).

### nome

**Tipo:** `VARCHAR(128)`  
**Descrição:** Nome completo do colaborador. Exemplo: "Matheus Brenner de Negreiros Brito".

### cpf

**Tipo:** `VARCHAR(11)`  
**Restrição:** `UNIQUE`  
**Descrição:** CPF completo de acordo com documento, apenas números. Exemplo: 12345678932.

### email

**Tipo:** `VARCHAR(128)`  
**Restrição:** `UNIQUE`  
**Descrição:** E-mail do colaborador.

### usuario

**Tipo:** `VARCHAR(64)`  
**Descrição:** Nome de usuário do colaborador, utilizado para autenticação.

### senha

**Tipo:** `VARCHAR(128)`  
**Descrição:** Senha do colaborador, utilizado para autenticação.

### modo_trabalho

**Tipo:** `VARCHAR(64)`  
**Descrição:** Modo que o colaborador está vinculado a empresa. Pode ser: "PJ", "CLT" ou "Particular".

### formacao

**Tipo:** `VARCHAR(64)`  
**Descrição:** {A SER DEFINIDO} {NO CASO DE UM PEDIATRA, DEVE SER "MEDICINA" OU "PEDIATRIA"?}

### registro_profissional

**Tipo:** `VARCHAR`  
**Descrição:** {A SER DEFINIDO}.

### tipo

**Tipo:** `VARCHAR(64)`  
**Descrição:** {A SER DEFINIDO}

### funcao

**Tipo:** `VARCHAR(64)`  
**Descrição:** {A SER DEFINIDO}

### especialidade

**Tipo:** `VARCHAR(64)`  
**Descrição:** {A SER DEFINIDO}

### perfil

**Tipo:** `VARCHAR(64)`  
**Descrição:** Perfil da conta do colaborador. {A SER DEFINIDO}

### codigo_computador

**Tipo:** `VARCHAR(64)`  
**Descrição:** Código do computador que o colaborador utiliza {A SER DEFINIDO}.

## CONTRATO

### id

**Tipo:** `SERIAL PRIMARY KEY`  
**Descrição:** Chave primária, gerada automaticamente pelo banco de dados.

### responsavel_codigo

**Tipo:** `VARCHAR`  
**Referência:** `RESPONSAVEL(codigo)`  
**Descrição:** Chave secundária estrangeira herdada da tabela **RESPONSAVEL**.

### paciente_codigo

**Tipo:** `VARCHAR`  
**Referência:** `PACIENTE(codigo)`  
**Descrição:** Chave secundária estrangeira herdada da tabela **PACIENTE**.

### documento_id

**Tipo:** `INTEGER`  
**Referência:** `DOCUMENTO(id)`  
**Descrição:** Chave estrangeira herdada da tabela **DOCUMENTO**.

### ativo

**Tipo:** `BOOLEAN`  
**Descrição:** Campo para indicar se o contrato está ou não ativo. Pode ser TRUE (ativo) ou FALSE (inativo).

### data_hora_criacao

**Tipo:** `TIMESTAMPTZ`  
**Descrição:** Preenchido automaticamente com o horário atual do sistema no momento de criação.

### cep

**Tipo:** `VARCHAR(8)`  
**Descrição:** CEP do contratante (apenas os números) de acordo com comprovante de endereço. Exemplo: "12312332".

### uf

**Tipo:** `CHAR(2)`  
**Descrição:** Estado do contratante em dois caracteres. Exemplos: "GO" e "DF".

### cidade

**Tipo:** `VARCHAR(64)`  
**Descrição:** Cidade do contratante de acordo com comprovante de endereço. Exemplo: Anápolis.

### bairro

**Tipo:** `VARCHAR(64)`  
**Descrição:** Bairro do contratante de acordo com comprovante de endereço. Exemplo: São João.

### logradouro

**Tipo:** `VARCHAR(128)`  
**Descrição:** Rua/Avenida do contratante de acordo com comprovante de endereço. Exemplo: Avenida Fernando Costa.

### numero

**Tipo:** `INTEGER`  
**Descrição:** Número do endereço do contratante de acordo com comprovante. Exemplo: 544.

### complemento

**Tipo:** `VARCHAR(256)`  
**Descrição:** Complemento para o endereço, caso necessário. Exemplo: "Ao lado de um pé de mexerica".

## CONVENIO

### id

**Tipo:** `SERIAL PRIMARY KEY`  
**Descrição:** Chave primária, gerada automaticamente pelo banco de dados.

### ativo

**Tipo:** `BOOLEAN`  
**Descrição:** Campo para indicar se o convênio está ativo ou inativo. Pode ser TRUE (ativo) ou FALSE (inativo).

### nome

**Tipo:** `VARCHAR(64)`  
**Descrição:** Nome completo do convênio. Exemplo: "Confederação Nacional das Cooperativas Médicas".

### nome_curto

**Tipo:** `VARCHAR(16)`  
**Descrição:** Nome curto ou sigla para identificação do convênio. Exemplo: "UNIMED".

## DOCUMENTO

### id

**Tipo:** `SERIAL PRIMARY KEY`  
**Descrição:** Chave primária, gerada automaticamente pelo banco de dados.

### paciente_codigo

**Tipo:** `VARCHAR`  
**Referência:** `PACIENTE(codigo)`  
**Descrição:** Chave estrangeira herdada da tabela **PACIENTE**.

### colaborador_codigo

**Tipo:** `VARCHAR`  
**Referência:** `COLABORADOR(codigo)`  
**Descrição:** Chave estrangeira herdada da tabela **COLABORADOR**, usada para identificar quem anexou o arquivo na base de dados.

### ativo

**Tipo:** `BOOLEAN`  
**Descrição:** Campo para indicar se o documento está ativo ou inativo. Pode ser TRUE (ativo) ou FALSE (inativo).

### data_hora_criacao

**Tipo:** `TIMESTAMPTZ`  
**Descrição:** Preenchido automaticamente com o horário atual do sistema no momento de criação do documento.

### tipo

**Tipo:** `VARCHAR(64)`  
**Descrição:** Tipo do documento. {A SER DEFINIDO}

### caminho

**Tipo:** `VARCHAR(256)`  
**Descrição:** Caminho do arquivo no sistema. Exemplo: "pacientes/Convenio1/GOY02020445678/Avaliacoes/indicacao.pdf".

## EMPRESA

### id

**Tipo:** `SERIAL PRIMARY KEY`  
**Descrição:** Chave primária, gerada automaticamente pelo banco de dados.

### unidade_codigo

**Tipo:** `VARCHAR(3)`  
**Descrição:** Código único da unidade. {A SER DEFINIDO}

### ativo

**Tipo:** `BOOLEAN`  
**Descrição:** Campo para indicar se a unidade está ativa ou inativa. Pode ser TRUE (ativa) ou FALSE (inativa).

### razao_social

**Tipo:** `VARCHAR(128)`  
**Descrição:** Razão social da empresa/unidade, conforme consta no CNPJ. Exemplo: "OliveiraLac Clinica de Reabilitação Neurológica LTDA".

### nome_fantasia

**Tipo:** `VARCHAR(64)`  
**Descrição:** Nome fantasia ou nome curto da unidade. Exemplo: "TLK - Centro".

### unidade_nome

**Tipo:** `VARCHAR(64)`  
**Descrição:** Nome da unidade. Exemplo: "Therapies Love Kids - Centro".

### cep

**Tipo:** `VARCHAR(8)`  
**Descrição:** CEP da empresa/unidade (apenas os números). Exemplo: "12312332".

### uf

**Tipo:** `CHAR(2)`  
**Descrição:** Estado da empresa/unidade (sigla com dois caracteres). Exemplos: "GO" e "DF".

### cidade

**Tipo:** `VARCHAR(64)`  
**Descrição:** Cidade da empresa/unidade. Exemplo: Anápolis.

### bairro

**Tipo:** `VARCHAR(64)`  
**Descrição:** Bairro da empresa/unidade. Exemplo: São João.

### logradouro

**Tipo:** `VARCHAR(128)`  
**Descrição:** Rua/Avenida da empresa/unidade. Exemplo: Avenida Fernando Costa.

### numero

**Tipo:** `INTEGER`  
**Descrição:** Número do endereço da empresa/unidade. Exemplo: 544.

### complemento

**Tipo:** `VARCHAR(256)`  
**Descrição:** Complemento do endereço, se necessário. Exemplo: "Ao lado de um pé de mexerica".

## PACIENTE

### id

**Tipo:** `SERIAL PRIMARY KEY`  
**Descrição:** Chave primária, gerada automaticamente pelo banco de dados.

### empresa_unidade_codigo

**Tipo:** `VARCHAR`  
**Referência:** `EMPRESA(unidade_codigo)`  
**Descrição:** Chave estrangeira herdada da tabela **EMPRESA**.

### convenio_id

**Tipo:** `INTEGER`  
**Referência:** `CONVENIO(id)`  
**Descrição:** Chave estrangeira herdada da tabela **CONVENIO**.

### codigo

**Tipo:** `VARCHAR(64)`  
**Restrição:** `UNIQUE`  
**Descrição:** Código único do paciente, gerado automaticamente no formato: código da unidade + ano + mês + dia + hora + minuto + segundo + dígito mais à esquerda dos milissegundos. Exemplo: ANA2502031510061.

### ativo

**Tipo:** `BOOLEAN`  
**Descrição:** Indica se o paciente está ativo ou inativo.

### nome

**Tipo:** `VARCHAR(256)`  
**Descrição:** Nome completo do paciente, conforme consta no documento. Exemplo: Henrique Manoel Jonas da Silva.

### nome_curto

**Tipo:** `VARCHAR(64)`  
**Descrição:** Nome curto do paciente, definido no cadastro. Exemplo: Henrique Silva.

### sexo

**Tipo:** `CHAR(1)`  
**Descrição:** Sexo do paciente: 'M' para Masculino e 'F' para Feminino, conforme certidão de nascimento, RG e CPF.

### data_nascimento

**Tipo:** `DATE`  
**Descrição:** Data de nascimento, conforme RG.

### local_nascimento

**Tipo:** `VARCHAR(64)`  
**Descrição:** Cidade de nascimento. Exemplo: Anápolis-GO.

### certidao_nascimento

**Tipo:** `VARCHAR`  
**Descrição:** Número da certidão de nascimento.

### cpf

**Tipo:** `VARCHAR(11)`  
**Restrição:** `UNIQUE`  
**Descrição:** CPF do paciente (apenas números). Exemplo: 12345678932.

### numero_convenio

**Tipo:** `VARCHAR(32)`  
**Descrição:** Número da carteira ou registro do paciente no convênio.

### observacoes

**Tipo:** `TEXT`  
**Descrição:** Observações sobre o paciente, se necessário.

## PAGAMENTO

### id

**Tipo:** `SERIAL PRIMARY KEY`  
**Descrição:** Chave primária, gerada automaticamente pelo banco de dados.

### responsavel_codigo

**Tipo:** `VARCHAR`  
**Referência:** `RESPONSAVEL(codigo)`  
**Descrição:** Chave estrangeira herdada da tabela **RESPONSAVEL**.

### data_hora_criacao

**Tipo:** `TIMESTAMPTZ`  
**Descrição:** Preenchido automaticamente com a data e hora atuais do sistema no momento da criação do pagamento.

### valor

**Tipo:** `NUMERIC(10, 2)`  
**Descrição:** Valor do pagamento, em formato numérico com duas casas decimais. Exemplo: 104.50.

### tipo

**Tipo:** `VARCHAR(64)`  
**Descrição:** Tipo de pagamento. Exemplo: "Débito", "Crédito", "PIX", "Boleto".

### descricao

**Tipo:** `TEXT`  
**Descrição:** Descrição do pagamento. Exemplo: "Mensalidade paciente XXXXX", "Consulta Dr. YYYYY".

## RESPONSAVEL

### id

**Tipo:** `SERIAL PRIMARY KEY`  
**Descrição:** Chave primária, gerada automaticamente pelo banco de dados.

### codigo

**Tipo:** `VARCHAR(16)`  
**Restrição:** `UNIQUE`  
**Descrição:** Código único do responsável. {A SER DEFINIDO}

### ativo

**Tipo:** `BOOLEAN`  
**Descrição:** Indica se o responsável está ativo ou inativo.

### nome

**Tipo:** `VARCHAR(128)`  
**Descrição:** Nome completo do responsável. Exemplo: "Isaque Brenner de Lucas Mathias".

### cpf

**Tipo:** `VARCHAR(11)`  
**Restrição:** `UNIQUE`  
**Descrição:** CPF do responsável (apenas números). Exemplo: "12345678932".

### rg

**Tipo:** `VARCHAR(20)`  
**Restrição:** `UNIQUE`  
**Descrição:** RG do responsável (apenas números). Exemplo: "1234567890".

### estado_civil

**Tipo:** `VARCHAR(16)`  
**Descrição:** Estado civil do responsável. Valores possíveis: "Solteiro(a)", "Casado(a)", "Divorciado(a)", "Viúvo(a)", "União Estável".

### profissao

**Tipo:** `VARCHAR(64)`  
**Descrição:** Profissão do responsável. Exemplo: "Engenheiro civil".

### celular

**Tipo:** `VARCHAR(16)`  
**Restrição:** `UNIQUE`  
**Descrição:** Celular do responsável (apenas números). Exemplo: "64912344321".

### email

**Tipo:** `VARCHAR(64)`  
**Restrição:** `UNIQUE`  
**Descrição:** E-mail do responsável.

### contatos_extras

**Tipo:** `TEXT`  
**Descrição:** Outros contatos do responsável, se necessário.

## LACO

### id

**Tipo:** `SERIAL PRIMARY KEY`  
**Descrição:** Chave primária, gerada automaticamente pelo banco de dados.

### paciente_codigo

**Tipo:** `VARCHAR`  
**Referência:** `PACIENTE(codigo)`  
**Descrição:** Chave estrangeira herdada da tabela **PACIENTE**.

### responsavel_codigo

**Tipo:** `VARCHAR`  
**Referência:** `RESPONSAVEL(codigo)`  
**Descrição:** Chave estrangeira herdada da tabela **RESPONSAVEL**.

### data_hora_criacao

**Tipo:** `TIMESTAMPTZ`  
**Descrição:** Data e hora de criação do laço, preenchido automaticamente pelo sistema.

### tipo

**Tipo:** `VARCHAR(16)`  
**Descrição:** Tipo de laço entre o paciente e o responsável. Valores possíveis: {A SER DEFINIDO} "Pai", "Mãe", "Guardião", "Tutor", "Responsável Legal", "Outro".
