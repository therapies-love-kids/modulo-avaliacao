## AGENDAMENTO

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

### especialista_colaborador_codigo

**Tipo:** `VARCHAR`  
**Referência:** `COLABORADOR(codigo)`  
**Descrição:** Chave estrangeira herdada da tabela **COLABORADOR**, usada para identificar o especialista responsável pela condução do agendamento.

### recepcionista_colaborador_codigo

**Tipo:** `VARCHAR`  
**Referência:** `COLABORADOR(codigo)`  
**Descrição:** Código do recepcionista responsável pelo agendamento.

### unidade_codigo

**Tipo:** `VARCHAR(8)`  
**Descrição:** Chave estrangeira, herdada da tabela **EMPRESA**.

### tipo

**Tipo:** `VARCHAR(64)`  
**Descrição:** Tipo de agendamento definido pelo criador do registro, podendo ser: {A SER DEFINIDO}.

### status

**Tipo:** `VARCHAR(16)`  
**Descrição:** Define o estado em que se encontra o agendamento. Valor padrão: "Por confirmar". Pode ser alterado para: "Confirmado", "Em andamento", "Concluído" e "Cancelado".

### data_hora_inicio

**Tipo:** `TIMESTAMPTZ`  
**Descrição:** Data definida para o evento do agendamento pelo colaborador responsável por agendar.

### data_hora_fim

**Tipo:** `TIMESTAMPTZ`  
**Descrição:** Preenchido automaticamente com o horário atual do sistema no momento de finalização.

### observacao

**Tipo:** `TEXT`  
**Descrição:** Campo de texto utilizado para incluir observações acerca do agendamento. Pode conter informações como {A SER DEFINIDO}.

### sala

**Tipo:** `VARCHAR(16)`  
**Descrição:** Número ou código da sala onde ocorrerá o evento do agendamento.


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
**Descrição:** Chave secundária estrangeira herdada da tabela **EMPRESA**. Refere-se à unidade/empresa onde o colaborador foi contratado.

### ativo

**Tipo:** `BOOLEAN`  
**Descrição:** Campo para indicar se o colaborador está ou não ativo. Pode ser TRUE (ativo) ou FALSE (inativo).

### modo_trabalho

**Tipo:** `VARCHAR(64)`  
**Descrição:** Modo que o colaborador está vinculado a empresa. Pode ser: "PJ", "CLT" ou "Particular".

### formacao

**Tipo:** `VARCHAR(64)`  
**Descrição:** {A SER DEFINIDO} {NO CASO DE UM PEDIATRA, DEVE SER "MEDICINA" OU "PEDIATRIA"?}

### codigo

**Tipo:** `VARCHAR(32)`  
**Restrição:** `UNIQUE`  
**Descrição:** Chave secundária de identificação, {A SER DEFINIDO}.

### registro_profissional

**Tipo:** `VARCHAR`  
**Descrição:** {A SER DEFINIDO}.

### nome

**Tipo:** `VARCHAR(128)`  
**Descrição:** Nome completo do colaborador. Exemplo: "Matheus Brenner de Negreiros Brito".

### cpf

**Tipo:** `VARCHAR(11)`  
**Restrição:** `UNIQUE`  
**Descrição:** CPF completo de acordo com documento, apenas números. Exemplo: 12345678932.

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

### data_hora_criacao

**Tipo:** `TIMESTAMPTZ`  
**Descrição:** Preenchido automaticamente com o horário atual do sistema no momento de criação.

### ativo

**Tipo:** `BOOLEAN`  
**Descrição:** Campo para indicar se o colaborador está ou não ativo. Pode ser TRUE (ativo) ou FALSE (inativo).

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

### nome  

**Tipo:** `VARCHAR(64)`  
**Descrição:** Nome completo do convênio. Exemplo: "Confederação Nacional das Cooperativas Médicas".

### nome_curto  

**Tipo:** `VARCHAR(16)`  
**Descrição:** Nome curto para identificação do convênio. Exemplo: "UNIMED".

### ativo

**Tipo:** `BOOLEAN`  
**Descrição:** Campo para indicar se o colaborador está ou não ativo. Pode ser TRUE (ativo) ou FALSE (inativo).

## DOCUMENTO

### id  
**Tipo:** `SERIAL PRIMARY KEY`  
**Descrição:** Chave primária, gerada automaticamente pelo banco de dados.

### paciente_codigo

**Tipo:** `VARCHAR`  
**Referência:** `PACIENTE(codigo)`  
**Descrição:** Chave secundária estrangeira herdada da tabela **PACIENTE**.

### colaborador_codigo

**Tipo:** `VARCHAR`  
**Referência:** `COLABORADOR(codigo)`  
**Descrição:** Chave secundária estrangeira herdada da tabela **COLABORADOR**, usada para identificar quem anexou o arquivo na base de dados.

### data_hora_criacao

**Tipo:** `TIMESTAMPTZ`  
**Descrição:** Preenchido automaticamente com o horário atual do sistema no momento de criação.

### ativo

**Tipo:** `BOOLEAN`  
**Descrição:** Campo para indicar se o colaborador está ou não ativo. Pode ser TRUE (ativo) ou FALSE (inativo).

### tipo

**Tipo:** `VARCHAR(64)`  
**Descrição:** {A SER DEFINIDO}

### caminho

**Tipo:** `VARCHAR(256)`  
**Descrição:** Caminho do arquivo no sistema. Exemplo: "pacientes/Convenio1/GOY02020445678/Avaliacoes/indicacao.pdf".

## EMPRESA

### id

**Tipo:** `SERIAL PRIMARY KEY`  
**Descrição:** Chave primária, gerada automaticamente pelo banco de dados.

### unidade_codigo  

**Tipo:** `VARCHAR(3)`  
**Descrição:** Chave secundária {A SER DEFINIDO}

### unidade_nome  

**Tipo:** `VARCHAR(64)`  
**Descrição:** Campo para o nome da unidade. Exemplo: "Therapies Love Kids - Centro".

### nome_fantasia  

**Tipo:** `VARCHAR(64)`  
**Descrição:** Campo para o nome curto da unidade. Exemplo: "TLK - Centro".

### razao_social  

**Tipo:** `VARCHAR(128)`  
**Descrição:** Campo para cadastrar o nome completo da unidade, assim como no CNPJ. Exemplo: "OliveiraLac Clinica de Reabilitação Neurológica LTDA".

### ativo

**Tipo:** `BOOLEAN`  
**Descrição:** Campo para indicar se o colaborador está ou não ativo. Pode ser TRUE (ativo) ou FALSE (inativo).

### cep  

**Tipo:** `VARCHAR(8)`  
**Descrição:** CEP da empresa/unidade (apenas os números) de acordo com comprovante de endereço. Exemplo: "12312332".

### uf

**Tipo:** `CHAR(2)`  
**Descrição:** Estado da empresa/unidade em dois caracteres. Exemplos: "GO" e "DF".

### cidade  

**Tipo:** `VARCHAR(64)`  
**Descrição:** Cidade da empresa/unidade de acordo com comprovante de endereço. Exemplo: Anápolis.

### bairro  

**Tipo:** `VARCHAR(64)`  
**Descrição:** Bairro da empresa/unidade de acordo com comprovante de endereço. Exemplo: São João.

### logradouro  

**Tipo:** `VARCHAR(128)`  
**Descrição:** Rua/Avenida da empresa/unidade de acordo com comprovante de endereço. Exemplo: Avenida Fernando Costa.

### numero  

**Tipo:** `INTEGER`  
**Descrição:** Número do endereço da empresa/unidade de acordo com comprovante. Exemplo: 544.

### complemento  

**Tipo:** `VARCHAR(256)`  
**Descrição:** Complemento para o endereço, caso necessário. Exemplo: "Ao lado de um pé de mexerica".

## PACIENTE

### id

**Tipo:** `SERIAL PRIMARY KEY`  
**Descrição:** Chave primária, gerada automaticamente pelo banco de dados.

### empresa_unidade_codigo

**Tipo:** `VARCHAR`  
**Referência:** `EMPRESA(unidade_codigo)`  
**Descrição:** Chave secundária estrangeira herdada da tabela **EMPRESA**.

### convenio_id

**Tipo:** `VARCHAR`  
**Referência:** `CONVENIO(id)`  
**Descrição:** Chave secundária estrangeira herdada da tabela **CONVENIO**.

### ativo

**Tipo:** `BOOLEAN`  
**Descrição:** Campo para indicar se o colaborador está ou não ativo. Pode ser TRUE (ativo) ou FALSE (inativo).

### codigo

**Tipo:** `VARCHAR(64)`  
**Restrição:** `UNIQUE`  
**Descrição:** Chave secundária padrão código da unidade seguido do ano, mês, dia, hora, minuto, segundo e o dígito mais a esquerda dos milissegundos. Exemplo: **ANA**25**02**03**15**10**06**11

### nome

**Tipo:** `VARCHAR(256)`  
**Descrição:** Campo para nome completo do paciente, **assim como consta no documento**. Exemplo: Henrique Manoel Jonas da Silva.

### nome_curto

**Tipo:** `VARCHAR(64)`  
**Descrição:** Campo para um nome curto definido na hora do cadastro. Exemplo: Henrique Silva.

### sexo

**Tipo:** `CHAR(1)`  
**Descrição:** Campo para cadastrar o sexo da criança, sendo **M** para **Masculino** e **F** para **Feminino**, de acordo com a certidão de nascimento, RG e CPF.

### data_nascimento

**Tipo:** `DATE`  
**Descrição:** Data de nascimento, de acordo com o RG.

### local_nascimento

**Tipo:** `VARCHAR(64)`  
**Descrição:** Nome da cidade de nascimento. Exemplo: Anápolis-GO.

### certidao_nascimento

**Tipo:** `VARCHAR`  
**Descrição:** Código da certidão de nascimento, de acordo com o documento devido.

### cpf

**Tipo:** `VARCHAR(11)`  
**Restrição:** `UNIQUE`  
**Descrição:** Código  do CPF de acordo com o documento correspondente, somente números. Exemplo: 12345678932.

### numero_convenio

**Tipo:** `VARCHAR(32)`  
**Descrição:** Campo para cadastramento do convênio do paciente.

### observacoes

**Tipo:** `TEXT`  
**Descrição:** Campo para cadastrar observações do paciente, caso seja necessário.

## PAGAMENTO

### id

**Tipo:** `SERIAL PRIMARY KEY`  
**Descrição:** Chave primária, gerada automaticamente pelo banco de dados.

### responsavel_codigo

**Tipo:** `VARCHAR`  
**Referência:** `RESPONSAVEL(codigo)`  
**Descrição:** Chave secundária estrangeira herdada da tabela **Responsável**.

### data_hora_criacao

**Tipo:** `TIMESTAMPTZ`  
**Descrição:** Preenchido automaticamente com o horário atual do sistema no momento de criação.

### valor

**Tipo:** `NUMERIC(10, 2)`  
**Descrição:** Campo para preencher o valor somente em números. Exemplo: 104,50.

### tipo

**Tipo:** `VARCHAR(64)`  
**Descrição:** Campo para indicar o tipo de pagamento. Exemplo: débito, crédito, pix.

### descricao

**Tipo:** `TEXT`  
**Descrição:** Campo de texto para colocar a Descrição: do pagamento. Exemplo: "Mensalidade paciente XXXXX".

## RESPONSAVEL

### id

**Tipo:** `SERIAL PRIMARY KEY`  
**Descrição:** Chave primária, gerada automaticamente pelo banco de dados.

### codigo  

**Tipo:** `VARCHAR(16) UNIQUE`  
**Descrição:** Chave secundária {A SER DEFINIDO}.

### ativo

**Tipo:** `BOOLEAN`  
**Descrição:** Campo para indicar se o colaborador está ou não ativo. Pode ser TRUE (ativo) ou FALSE (inativo).

### nome  

**Tipo:** `VARCHAR(128)`  
**Descrição:** Campo para cadastrar o nome do responsável. Exemplo: "Isaque Brenner de Lucas Mathias".

### estado_civil  

**Tipo:** `VARCHAR(16)`  
**Descrição:** Campo para cadastrar o estado civil do responsável. Pode ser: "Solteiro", "Casado", "Divorciado" ou "Viuvo".

### profissao  

**Tipo:** `VARCHAR(64)`  
**Descrição:** Campo para cadastrar a profissão do responsável. Exemplo: "Engenheiro civil".

### cpf  

**Tipo:** `VARCHAR(11) UNIQUE`  
**Descrição:** Campo para cadastrar o cpf do responsável com apenas números. Exemplo: "12345678932".

### rg  

**Tipo:** `VARCHAR(20) UNIQUE`  
**Descrição:** Campo para cadastrar o rg do responsável com apenas números. Exemplo: "12345678901234567890".

### celular  

**Tipo:** `VARCHAR(16) UNIQUE`  
**Descrição:** Campo para cadastrar o celular do responsável com apenas números. Exemplo: "64912344321".

### email  

**Tipo:** `VARCHAR(64) UNIQUE`  
**Descrição:** Campo de E-mail, cada E-mail é único na base de dados.

### contatos_extras  

**Tipo:** `TEXT`  
**Descrição:** Campo de contatos extras caso seja necessário.

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
**Descrição:** Preenchido automaticamente com o horário atual do sistema no momento de criação.

### tipo  

**Tipo:** `VARCHAR(16)`  
**Descrição:** Tipo do laço. Pode ser: "Pai", "Mãe", "Guardião" ou "Autorizado".
