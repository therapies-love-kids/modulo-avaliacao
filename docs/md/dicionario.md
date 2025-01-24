## AGENDAMENTO

### pk

**Tipo:** `SERIAL PRIMARY KEY`  
**Descrição:** Chave primária, gerada automaticamente pelo banco de dados.

### especialista_colaborador_id

**Tipo:** `VARCHAR`  
**Referência:** `COLABORADOR(id)`  
**Descrição:** Chave estrangeira herdada da tabela **COLABORADOR**, usada para identificar o especialista responsável pela condução do agendamento.

### paciente_codigo

**Tipo:** `VARCHAR`  
**Referência:** `PACIENTE(codigo)`  
**Descrição:** Chave estrangeira herdada da tabela **PACIENTE**.

### recepcionista_colaborador_id

**Tipo:** `VARCHAR`  
**Referência:** `COLABORADOR(id)`  
**Descrição:** Código do recepcionista responsável pelo agendamento.

### responsavel_id

**Tipo:** `VARCHAR`  
**Referência:** `RESPONSAVEL(id)`  
**Descrição:** Chave estrangeira herdada da tabela **RESPONSAVEL**.

### unidade_id

**Tipo:** `VARCHAR(8)`  
**Descrição:** Chave estrangeira, herdada da tabela **EMPRESA**.

### data_hora

**Tipo:** `TIMESTAMPTZ`  
**Descrição:** Data definida para o evento do agendamento pelo colaborador responsável por agendar.

### sala

**Tipo:** `VARCHAR(16)`  
**Descrição:** Número ou código da sala onde ocorrerá o evento do agendamento.

### tipo

**Tipo:** `VARCHAR(64)`  
**Descrição:** Tipo de agendamento definido pelo criador do registro, podendo ser: "Consulta", "Avaliação clinica" ou "Avaliação terapeutica".

### status

**Tipo:** `VARCHAR(16)`  
**Descrição:** Define o estado em que se encontra o agendamento, podendo ser: "Agendado" (Valor padrão), "Confirmado", "Em espera", "Em andamento", "Concluído" ou "Cancelado".

### observacoes

**Tipo:** `TEXT`  
**Descrição:** Campo de texto utilizado para incluir observações acerca do agendamento. Por exemplo: "Retorno".

## AVALIACAO

### pk

**Tipo:** `SERIAL PRIMARY KEY`  
**Descrição:** Chave primária, gerada automaticamente pelo banco de dados.

### paciente_codigo

**Tipo:** `VARCHAR`  
**Referência:** `PACIENTE(codigo)`  
**Descrição:** Chave estrangeira herdada da tabela **PACIENTE**.

### colaborador_id

**Tipo:** `VARCHAR`  
**Referência:** `COLABORADOR(id)`  
**Descrição:** Chave estrangeira herdada da tabela **COLABORADOR**.

### data_hora_inicio

**Tipo:** `TIMESTAMPTZ`  
**Descrição:** É o horário de inicio da avaliação, definida pelo avaliador.

### data_hora_fim

**Tipo:** `TIMESTAMPTZ`  
**Descrição:** Preenchido automaticamente com o horário atual do sistema no momento de finalização.

### status

**Tipo:** `VARCHAR(32)`  
**Descrição:** Define o estado em que se encontra a avaliação, podendo ser: "Em adamento", "Finalizada".

### anotacoes

**Tipo:** `TEXT`  
**Descrição:** Campo para preencher com anotações ao decorrer da avaliação, caso seja necessário.

## COLABORADOR

### pk

**Tipo:** `SERIAL PRIMARY KEY`  
**Descrição:** Chave primária, gerada automaticamente pelo banco de dados.

### id

**Tipo:** `VARCHAR(32)`  
**Restrição:** `UNIQUE`  
**Descrição:** Chave secundária de identificação, é uma cópia da chave primária.

### empresa_unidade_codigo

**Tipo:** `VARCHAR`  
**Referência:** `EMPRESA(unidade_id)`  
**Descrição:** Chave estrangeira herdada da tabela **EMPRESA**. Refere-se à unidade/empresa onde o colaborador foi contratado.

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



### modo_trabalho

**Tipo:** `VARCHAR(64)`  
**Descrição:** Modo que o colaborador está vinculado a empresa, podendo ser: "PJ", "CLT" ou "Particular".

### titulo_profissional

**Tipo:** `VARCHAR(64)`  
**Descrição:** Título profissional do colaborador, que pode diferir da função exercida. Por exemplo "Médico".

### registro_profissional

**Tipo:** `VARCHAR(64)`  
**Descrição:** Número do registro profissional para profissionais da área clinica, (por exemplo o CID).

### pis

**Tipo:** `VARCHAR(16)`  
**Descrição:** Número do PIS, de acordo com carteira de trabalho.

### setor

**Tipo:** `VARCHAR(64)`  
**Descrição:** Setor em que o colaborador trabalha. Por exemplo: "Administrativo".

### funcao

**Tipo:** `VARCHAR(64)`  
**Descrição:** Função a qual o colaborador foi contratado. Por exemplo: "Terapeuta".

### especialidade

**Tipo:** `VARCHAR(64)`  
**Descrição:** Especialidade do colaborador. Por exemplo: "Musicoterapia".

## CONTRATO

### pk

**Tipo:** `SERIAL PRIMARY KEY`  
**Descrição:** Chave primária, gerada automaticamente pelo banco de dados.

### responsavel_id

**Tipo:** `VARCHAR`  
**Referência:** `RESPONSAVEL(id)`  
**Descrição:** Chave secundária estrangeira herdada da tabela **RESPONSAVEL**.

### paciente_codigo

**Tipo:** `VARCHAR`  
**Referência:** `PACIENTE(codigo)`  
**Descrição:** Chave secundária estrangeira herdada da tabela **PACIENTE**.

### documento_id

**Tipo:** `INTEGER`  
**Referência:** `DOCUMENTO(pk)`  
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

### pk

**Tipo:** `SERIAL PRIMARY KEY`  
**Descrição:** Chave primária, gerada automaticamente pelo banco de dados.

### ativo

**Tipo:** `BOOLEAN`  
**Descrição:** Campo para indicar se o convênio está ativo ou inativo, podendo ser: TRUE (ativo) ou FALSE (inativo).

### nome

**Tipo:** `VARCHAR(64)`  
**Descrição:** Nome completo do convênio. Exemplo: "Confederação Nacional das Cooperativas Médicas".

### nome_curto

**Tipo:** `VARCHAR(16)`  
**Descrição:** Nome curto ou sigla para identificação do convênio. Exemplo: "UNIMED".

## DOCUMENTO

### pk

**Tipo:** `SERIAL PRIMARY KEY`  
**Descrição:** Chave primária, gerada automaticamente pelo banco de dados.

### paciente_codigo

**Tipo:** `VARCHAR`  
**Referência:** `PACIENTE(codigo)`  
**Descrição:** Chave estrangeira herdada da tabela **PACIENTE**.

### colaborador_id

**Tipo:** `VARCHAR`  
**Referência:** `COLABORADOR(id)`  
**Descrição:** Chave estrangeira herdada da tabela **COLABORADOR**, usada para identificar quem anexou o arquivo na base de dados.

### ativo

**Tipo:** `BOOLEAN`  
**Descrição:** Campo para indicar se o documento está ativo ou inativo, podendo ser: TRUE (ativo) ou FALSE (inativo).

### data_hora_criacao

**Tipo:** `TIMESTAMPTZ`  
**Descrição:** Preenchido automaticamente com o horário atual do sistema no momento de criação do documento.

### tipo

**Tipo:** `VARCHAR(64)`  
**Descrição:** Tipo do documento. Por exemplo: "CPF", "RG", "Certidão de casamento", etc.

### caminho

**Tipo:** `VARCHAR(256)`  
**Descrição:** Caminho do arquivo no sistema. Exemplo: "pacientes/Convenio1/GOY02020445678/Avaliacoes/indicacao.pdf".

## EMPRESA

### pk

**Tipo:** `SERIAL PRIMARY KEY`  
**Descrição:** Chave primária, gerada automaticamente pelo banco de dados.

### id

**Tipo:** `SERIAL PRIMARY KEY`  
**Descrição:** Chave secundária, é uma cópia da chave primária.

### unidade_prefixo

**Tipo:** `VARCHAR(3)`  
**Descrição:** Prefixo da cidade em que está localizada a unidade. Por exemplo: "ANA";

### unidade_nome

**Tipo:** `VARCHAR(32)`  
**Descrição:** Nome da cidade em que está localizada a unidade. Por exemplo: "Anápolis";

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

## LACO

### pk

**Tipo:** `SERIAL PRIMARY KEY`  
**Descrição:** Chave primária, gerada automaticamente pelo banco de dados.

### paciente_codigo

**Tipo:** `VARCHAR`  
**Referência:** `PACIENTE(codigo)`  
**Descrição:** Chave estrangeira herdada da tabela **PACIENTE**.

### responsavel_id

**Tipo:** `VARCHAR`  
**Referência:** `RESPONSAVEL(id)`  
**Descrição:** Chave estrangeira herdada da tabela **RESPONSAVEL**.

### data_hora_criacao

**Tipo:** `TIMESTAMPTZ`  
**Descrição:** Data e hora de criação do laço, preenchido automaticamente pelo sistema.

### tipo

**Tipo:** `VARCHAR(16)`  
**Descrição:** Tipo de laço entre o paciente e o responsável, podendo ser: "Pai", "Mãe", "Guardião", "Tutor" ou "Autorizado".

## PACIENTE

### pk

**Tipo:** `SERIAL PRIMARY KEY`  
**Descrição:** Chave primária, gerada automaticamente pelo banco de dados.

### id

**Tipo:** `VARCHAR(64)`  
**Restrição:** `UNIQUE`  
**Descrição:** Chave secundário do paciente, é uma cópia da chave primária.

### empresa_unidade_id

**Tipo:** `VARCHAR`  
**Referência:** `EMPRESA(unidade_id)`  
**Descrição:** Chave estrangeira herdada da tabela **EMPRESA**.

### convenio_id

**Tipo:** `INTEGER`  
**Referência:** `CONVENIO(pk)`  
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

### pk

**Tipo:** `SERIAL PRIMARY KEY`  
**Descrição:** Chave primária, gerada automaticamente pelo banco de dados.

### responsavel_id

**Tipo:** `VARCHAR`  
**Referência:** `RESPONSAVEL(id)`  
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

### pk

**Tipo:** `SERIAL PRIMARY KEY`  
**Descrição:** Chave primária, gerada automaticamente pelo banco de dados.

### id

**Tipo:** `VARCHAR(32)`  
**Restrição:** `UNIQUE`  
**Descrição:** Chave secundária de identificação, é uma cópia da chave primária.

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
**Descrição:** Estado civil do responsável, podendo ser: "Solteiro(a)", "Casado(a)", "Divorciado(a)", "Viúvo(a)", "União Estável".

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

## USUARIO

### pk

**Tipo:** `SERIAL PRIMARY KEY`  
**Descrição:** Chave primária, gerada automaticamente pelo banco de dados.

### colaborador_id

**Tipo:** `VARCHAR(32)` 
**Referência:** `COLABORADOR(id)`   
**Restrição:** `UNIQUE`  
**Descrição:** Chave estrangeira herdada da tabela **COLABORADOR**. Refere-se ao colaborador ligado ao usuário.

### colaborador_nome

**Tipo:** `VARCHAR`  
**Referência:** `COLABORADOR(nome)`  
**Descrição:** Atributo derivado da tabela **COLABORADOR**.

### ativo

**Tipo:** `BOOLEAN`  
**Descrição:** Campo para indicar se o usuário está ou não ativo, podendo ser TRUE (ativo) ou FALSE (inativo).

### online

**Tipo:** `BOOLEAN`
**Descrição:** Campo para indicar se o usuário esta ou nao online, podendo ser TRUE (online) ou FALSE (offline).

### nome

**Tipo:** `VARCHAR(64)`  
**Descrição:** Nome do usuário, utilizado para autenticação.

### senha

**Tipo:** `VARCHAR(128)`  
**Descrição:** Senha do usuário, utilizado para autenticação.

### nome_computador

**Tipo:** `VARCHAR(64)`  
**Descrição:** Nome do computador que o usuário utiliza na rede.

### perfil

**Tipo:** `VARCHAR(16)`
**Descrição:** Perfil do usuário a nivel de acesso ao sistema.
