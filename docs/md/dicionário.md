
## Agendamento
- ### id  
  **Tipo:** `SERIAL PRIMARY KEY`  
  **Descrição** Gerado automaticamente pelo banco de dados.

- ### unidade_codigo  
  **Tipo:** `VARCHAR(8)`  
  **Descrição** Chave estrangeira secundária, herdada da tabela **EMPRESA**.

- ### tipo  
  **Tipo:** `VARCHAR(64)`  
  **Descrição** Tipo de agendamento definido pelo criador do registro (ex.: consulta, exame, fonoaudiólogo, etc.).

- ### status  
  **Tipo:** `VARCHAR(16)`  
  **Descrição** Valor padrão: "em espera". Pode ser editado para outros valores, como "confirmado" ou "cancelado".

- ### data_hora_inicio  
  **Tipo:** `TIMESTAMPTZ`  
  **Descrição** Preenchido automaticamente com o horário atual do sistema.

- ### data_hora_fim  
  **Tipo:** `TIMESTAMPTZ`  
  **Descrição** Definido pelo criador do agendamento como uma estimativa de finalização (ex.: 10/01/2025 14:30).

- ### observacao  
  **Tipo:** `TEXT`  
  **Descrição** Campo de texto utilizado para incluir observações por recepcionistas, médicos(as) e avaliadores. Pode conter informações importantes, como alergias, histórico de exames, etc.

- ### paciente_codigo  
  **Tipo:** `VARCHAR`  
  **Referência:** `PACIENTE(codigo)`  
  **Descrição** Chave estrangeira herdada da tabela **PACIENTE**.

- ### responsavel_codigo  
  **Tipo:** `VARCHAR`  
  **Referência:** `RESPONSAVEL(codigo)`  
  **Descrição** Chave estrangeira herdada da tabela **RESPONSAVEL**.

- ### especialista_colaborador_codigo  
  **Tipo:** `VARCHAR`  
  **Referência:** `COLABORADOR(codigo)`  
  **Descrição** Código do especialista responsável pela condução do agendamento.

- ### recepcionista_colaborador_codigo  
  **Tipo:** `VARCHAR`  
  **Referência:** `COLABORADOR(codigo)`  
  **Descrição** Código do(a) recepcionista responsável pelo agendamento.

- ### sala  
  **Tipo:** `VARCHAR(16)`  
  **Descrição** Número ou código da sala onde ocorrerá o agendamento.


## Avaliacao

- ### id  
  **Tipo:** `SERIAL PRIMARY KEY`  
  **Descrição**  Gerado automaticamente pelo banco de dados.

- ### paciente_codigo  
  **Tipo:** `VARCHAR`  
  **Referência:** `PACIENTE(codigo)`  
  **Descrição**  Chave secundária estrangeira herdada da tabela **PACIENTE**.

- ### colaborador_codigo  
  **Tipo:** `VARCHAR`  
  **Referência:** `COLABORADOR(codigo)`  
  **Descrição**  Chave secundária estrangeira herdada da tabela **COLABORADOR**.

- ### data_hora_inicio  
  **Tipo:** `TIMESTAMPTZ`  
  **Descrição**  Gerado pelo horário do sistema.

- ### data_hora_fim  
  **Tipo:** `TIMESTAMPTZ`  
  **Descrição**  Campo com o horário do termino da avaliação.

- ### status  
  **Tipo:** `VARCHAR(32)`  
  **Descrição**  Campo para preencher com o status da avaliação, valor default "A iniciar",podendo ser alterada para "Em andamento", "Finalizada", e "Interrompida".

- ### anotacoes  
  **Tipo:** `TEXT`  
  **Descrição**  Campo para preencher com anotações ao decorrer da avaliação, caso seja necessário.

## Colaborador

- ### id  
  **Tipo:** `SERIAL PRIMARY KEY`  
  **Descrição**  Gerado automaticamente pelo banco de dados.

- ### ativo  
  **Tipo:** `BOOLEAN`  
  **Descrição**  Campo para indicar se o colaborador está ou não ativo, TRUE (ativo) e FALSE(inativo).

- ### modo_trabalho  
  **Tipo:** `VARCHAR(64)`  
  **Descrição**  Modo que o colaborador está vinculado a empresa, por exemplo "PJ", "CLT", "Particular".

- ### formacao  
  **Tipo:** `VARCHAR(64)`  
  **Descrição**  Formação acadêmica do colaborador, por exemplo, "superior em pediatria".

- ### empresa_unidade_codigo  
  **Tipo:** `VARCHAR`  
  **Referência:** `EMPRESA(unidade_codigo)`  
  **Descrição**  Chave secundária estrangeira herdada da tabela **EMPRESA**.

- ### codigo  
  **Tipo:** `VARCHAR(32)`  
  **Restrição:** `UNIQUE`  
  **Descrição**  Chave secundária de identificação, (a ser definido).

- ### registro_profissional  
  **Tipo:** `VARCHAR`  
  **Descrição**  Registro profissional do Colaborador.

- ### nome  
  **Tipo:** `VARCHAR(128)`  
  **Descrição**  Nome completo do colaborador, por exemplo "Matheus Brenner de Negreiros Brito".

- ### cpf  
  **Tipo:** `VARCHAR(11)`  
  **Restrição:** `UNIQUE`  
  **Descrição**  CPF completo de acordo com documento, apenas números, por exemplo, 12345678932.

- ### tipo  
  **Tipo:** `VARCHAR(64)`  
  **Descrição**  Tipo de Colaborador, por exemplo, "medico", "terapeuta", "administrativo".

- ### funcao  
  **Tipo:** `VARCHAR(64)`  
  **Descrição**  Função do colaborador, por exemplo, "Médico pediatra", "Terapeuta Fonoáudiologo", "Assistênte administrativo".

- ### especialidade  
  **Tipo:** `VARCHAR(64)`  
  **Descrição**  Especialidade do colaborador, por exemplo "Fonoáudiologia".

- ### perfil  
  **Tipo:** `VARCHAR(64)`  
  **Descrição**  Perfil da conta do colaborador, por exemplo "Gestor", "Administrativo".

- ### codigo_computador  
  **Tipo:** `VARCHAR(64)`  
  **Descrição**  Código do computador que o colaborador utilida (a ser definido o padrão).

- ### email  
  **Tipo:** `VARCHAR(128)`  
  **Restrição:** `UNIQUE`  
  **Descrição**  E-mail do colaborador, (particular ou empresárial).

- ### usuario  
  **Tipo:** `VARCHAR(64)`  
  **Descrição**  Usuário do colaborador, utilizado para autenticação.

- ### senha  
  **Tipo:** `VARCHAR(128)`  
  **Descrição**  Senha do colaborador, utilizado para autenticação.

## Contrato

- ### id  
  **Tipo:** `SERIAL PRIMARY KEY`  
  **Descrição**  Gerado automaticamente pelo banco de dados.

- ### data_hora_criacao  
  **Tipo:** `TIMESTAMPTZ`  
  **Descrição**  Preenchido de acordo com o horário do sistema.

- ### ativo  
  **Tipo:** `BOOLEAN`  
  **Descrição**  Campo para indicar se um contrato está ou não ativo, TRUE (ativo), FALSE (inativo).

- ### responsavel_codigo  
  **Tipo:** `VARCHAR`  
  **Referência:** `RESPONSAVEL(codigo)`  
  **Descrição**  Chave secundária estrangeira herdada da tabela **RESPONSAVEL**.

- ### paciente_codigo  
  **Tipo:** `VARCHAR`  
  **Referência:** `PACIENTE(codigo)`  
  **Descrição**  Chave secundária estrangeira herdada da tabela **PACIENTE**.

- ### documento_id  
  **Tipo:** `INTEGER`  
  **Referência:** `DOCUMENTO(id)`  
  **Descrição**  Chave estrangeira herdada da tabela **DOCUMENTO**.

- ### cep  
  **Tipo:** `VARCHAR(8)`  
  **Descrição**  CEP do contratante de acordo com comprovante de endereço, somente números, por exemplo, 12312332.

- ### uf  
  **Tipo:** `CHAR(2)`  
  **Descrição**  Estado do contratante em dois caracteres, por exemplo, GO, DF.

- ### cidade  
  **Tipo:** `VARCHAR(64)`  
  **Descrição**  Cidade do contratante de acordo com comprovante de endereço, por exemplo Anápolis.

- ### bairro  
  **Tipo:** `VARCHAR(64)`  
  **Descrição**  Bairro do contratante de acordo com comprovante de endereço, por exemplo São João.

- ### logradouro  
  **Tipo:** `VARCHAR(128)`  
  **Descrição**  Rua/Avenida do contratante de acordo com comprovante de endereço, por exemplo, Rua 8.

- ### numero  
  **Tipo:** `INTEGER`  
  **Descrição**  Número do contratante de acordo com comprovante de endereço.

- ### complemento  
  **Tipo:** `VARCHAR(256)`  
  **Descrição**  Complemento para o endereço, caso necessário.

## Convenio

- ### id  
  **Tipo:** `SERIAL PRIMARY KEY`  
  **Descrição**  Gerado automaticamente pelo banco de dados.

- ### nome  
  **Tipo:** `VARCHAR(64)`  
  **Descrição**  Nome completo do convênio, por exemplo Confederação Nacional das Cooperativas Médicas.

- ### nome_curto  
  **Tipo:** `VARCHAR(16)`  
  **Descrição**  Nome curto para identificação do convênio, por exemplo UNIMED.

- ### ativo  
  **Tipo:** `BOOLEAN`  
  **Descrição**  Campo para indicar se um convênio está ou não ativo, TRUE (ativo), FALSE (inativo).

## Documento

- ### id  
  **Tipo:** `SERIAL PRIMARY KEY`  
  **Descrição**  Gerado automaticamente pelo banco de dados.

- ### data_hora_criacao  
  **Tipo:** `TIMESTAMPTZ`  
  **Descrição**  Preenchido de acordo com a data e hora do sistema.

- ### ativo  
  **Tipo:** `BOOLEAN`  
  **Descrição**  Campo para indicar se um documento está ou não ativo, TRUE (ativo), FALSE (inativo).

- ### tipo  
  **Tipo:** `VARCHAR(64)`  
  **Descrição**  Campo para cadastrar o tipo de documento, por exemplo, "Registro", "Exame".

- ### caminho  
  **Tipo:** `VARCHAR(256)`  
  **Descrição**  Caminho do arquivo no sistema, por exemplo, "C:doc/paciente01/exames".

- ### paciente_codigo  
  **Tipo:** `VARCHAR`  
  **Referência:** `PACIENTE(codigo)`  
  **Descrição**  Chave secundária estrangeira herdada da tabela **PACIENTE**.

- ### colaborador_codigo  
  **Tipo:** `VARCHAR`  
  **Referência:** `COLABORADOR(codigo)`  
  **Descrição**  Chave secundária estrangeira herdada da tabela **COLABORADOR**, usada para identificar quem anexou o arquivo na base de dados.

## Empresa

- ### id  
  **Tipo:** `SERIAL PRIMARY KEY`  
  **Descrição**  Gerado automaticamente pelo banco de dados.

- ### unidade_codigo  
  **Tipo:** `VARCHAR(3)`  
  **Descrição**  Chave secundária (a ser definida)

- ### unidade_nome  
  **Tipo:** `VARCHAR(64)`  
  **Descrição**  Campo para o nome da unidade, por exemplo, Therapies Love Kids - Centro.

- ### nome_fantasia  
  **Tipo:** `VARCHAR(64)`  
  **Descrição**  Campo para o nome curto da unidade, por exemplo, TLK - Centro.

- ### razao_social  
  **Tipo:** `VARCHAR(128)`  
  **Descrição**  Campo para cadastrar o nome completo da unidade, assim como no CNPJ, por exemplo OliveiraLac Clinica de Reabilitação Neurológica LTDA.

- ### status  
  **Tipo:** `BOOLEAN`  
  **Descrição**  Campo para indicar se a empresa/unidade está ou não ativa, TRUE (ativa) e FALSE (desativa)

- ### cep  
  **Tipo:** `VARCHAR(8)`  
  **Descrição**  Campo para cep, apenas números, por exemplo, 12312332

- ### uf  
  **Tipo:** `CHAR(2)`  
  **Descrição**  Código do estado em que a unidade se encontra em dois caracteres, por exemplo, GO e DF

- ### cidade  
  **Tipo:** `VARCHAR(64)`  
  **Descrição**  Nome da cidade que a unidade se encontra, apenas caracteres, por exemplo Anápolis.

- ### bairro  
  **Tipo:** `VARCHAR(64)`  
  **Descrição**  Bairro em que a unidade se encontra, por exemplo, Jundiaí

- ### logradouro  
  **Tipo:** `VARCHAR(128)`  
  **Descrição**  Rua, avenida em que a unidade se encontra, por exemplo Rua Almeida bezerra.

- ### cnpj  
  **Tipo:** `VARCHAR(14)`  
  **Restrição:** `UNIQUE`  
  **Descrição**  CNPJ da unidade apenas em números. por exemplo 1234567890123

- ### fone  
  **Tipo:** `VARCHAR(15)`  
  **Restrição:** `UNIQUE`  
  **Descrição**  Campo para telefone fixo da empresa/unidade, por exemplo 62913451345

- ### email  
  **Tipo:** `VARCHAR(64)`  
  **Descrição**  E-mail padrão da empresa/unidade, por exemplo RH@therapieslovekids.com.br

- ### diretor_colaborador_codigo  
  **Tipo:** `VARCHAR`  
  **Referência:** `COLABORADOR(codigo)`  
  **Descrição**  Chave secundária estrangeira herdada de **COLABORADOR**, usada para identificar o diretor da unidade.

## Paciente

- ### id  
  **Tipo:** `SERIAL PRIMARY KEY`  
  **Descrição**  Gerado automaticamente pelo banco de dados.

- ### ativo  
  **Tipo:** `BOOLEAN`  
  **Descrição**  Campo para indicar se o paciente está ou não ativo, TRUE (ativo) e FALSE (desativado).

- ### empresa_unidade_codigo  
  **Tipo:** `VARCHAR`  
  **Referência:** `EMPRESA(unidade_codigo)`  
  **Descrição**  Chave secundária estrangeira herdada da tabela **EMPRESA**.

- ### codigo  
  **Tipo:** `VARCHAR(64)`  
  **Restrição:** `UNIQUE`  
  **Descrição**  Chave secundária padrão código da unidade seguido do ano, mês, dia, hora, minuto, segundo e milisegundo, por exemplo: **ANA**25**02**03**15**10**06**11

- ### nome  
  **Tipo:** `VARCHAR(256)`  
  **Descrição**  Campo para nome completo do paciente, **assim como consta no documento**, Por exemplo, Henrique manoel jonas da Silva.

- ### nome_curto  
  **Tipo:** `VARCHAR(64)`  
  **Descrição**  Campo para um nome curto definido na hora do cadastro, por exemplo Henrique Silva.

- ### sexo  
  **Tipo:** `CHAR(1)`  
  **Descrição**  Campo para cadastrar o sexo da criança, sendo **M** para **Masculino** e **F** para **Feminino**, de acordo com a certidão de nascimento, RG e CPF.

- ### data_nascimento  
  **Tipo:** `DATE`  
  **Descrição**  Data de nascimento, de acordo com o RG.

- ### local_nascimento  
  **Tipo:** `VARCHAR(64)`  
  **Descrição**  Nome da cidade de nascimento, por exemplo Anápolis-GO

- ### certidao_nascimento  
  **Tipo:** `VARCHAR`  
  **Descrição**  Código da certidão de nascimento, de acordo com o documento devido.

- ### cpf  
  **Tipo:** `VARCHAR(11)`  
  **Restrição:** `UNIQUE`  
  **Descrição**  Código  do CPF de acordo com o documento correspondente, somente números, por exemplo: 12345678932.

- ### convenio_id  
  **Tipo:** `VARCHAR`  
  **Referência:** `CONVENIO(id)`  
  **Descrição**  Chave secundária estrangeira herdada da tabela **CONVENIO**.

- ### numero_convenio  
  **Tipo:** `VARCHAR(32)`  
  **Descrição**  Campo para cadastramento do convênio do paciênte.

- ### observacoes  
  **Tipo:** `TEXT`  
  **Descrição**  Campo para cadastrar observações do paciênte, caso seja necessário.

## Pagamento

- ### id  
  **Tipo:** `SERIAL PRIMARY KEY`  
  **Descrição**  Gerado automaticamente pelo banco de dados.

- ### data_hora_criacao  
  **Tipo:** `TIMESTAMPTZ`  
  **Descrição**  Preenchido automaticamente com o horário atual do sistema.

- ### responsavel_codigo  
  **Tipo:** `VARCHAR`  
  **Referência:** `RESPONSAVEL(codigo)`  
  **Descrição**  Chave secundária estrangeira herdada da tabela **Responsável**.

- ### valor  
  **Tipo:** `NUMERIC(10, 2)`  
  **Descrição**  Campo para preencher o valor somente em números, por exemplo 104.

- ### tipo  
  **Tipo:** `VARCHAR(64)`  
  **Descrição**  Campo para indicar o tipo de pagamento, por exemplo débito, crédito, pix.

- ### descricao  
  **Tipo:** `TEXT`  
  **Descrição**  Campo de texto para colocar a descrição do pagamento, por exemplo "Mensalidade paciente XXXXX"

## RESPONSAVEL

- ### id  
  **Tipo:** `SERIAL PRIMARY KEY`  
  **Descrição**  Gerado automaticamente pelo banco de dados.

- ### codigo  
  **Tipo:** `VARCHAR(16) UNIQUE`  
  **Descrição**  Chave secundária (a ser definida).

- ### ativo  
  **Tipo:** `BOOLEAN`  
  **Descrição**  Campo para indicar se o responsável está ou não ativo, TRUE(ativo) e FALSE (desativado).

- ### nome  
  **Tipo:** `VARCHAR(128)`  
  **Descrição**  Campo para cadastrar o nome do responsável, por exemplo Isaque Brenner de Lucas Mathias.

- ### estado_civil  
  **Tipo:** `VARCHAR(16)`  
  **Descrição**  Campo para cadastrar o estado civil do responsável, por exemplo solteiro, divorciado.

- ### profissao  
  **Tipo:** `VARCHAR(64)`  
  **Descrição**  Campo para cadastrar a profissão do responsável, por exemplo Engenheiro cívil, Enfermeira.

- ### cpf  
  **Tipo:** `VARCHAR(11) UNIQUE`  
  **Descrição**  Campo para cadastrar o cpf do responsável com apenas números, exemplo: 12345678932.

- ### rg  
  **Tipo:** `VARCHAR(20) UNIQUE`  
  **Descrição**  Campo para cadastrar o rg do responsável com apenas números, exemplo: 12345678901234567890.

- ### celular  
  **Tipo:** `VARCHAR(16) UNIQUE`  
  **Descrição**  Campo para cadastrar o celular do responsável com apenas números, exemplo: 64912344321.

- ### email  
  **Tipo:** `VARCHAR(64) UNIQUE`  
  **Descrição**  Campo de E-mail, cada E-mail é único na base de dados.

- ### contatos_extras  
  **Tipo:** `TEXT`  
  **Descrição**  Campo de contatos extras caso seja necessário.

## LACO

- ### id  
  **Tipo:** `SERIAL PRIMARY KEY`  
  **Descrição**  Gerado automaticamente pelo banco de dados.

- ### data_hora_criacao  
  **Tipo:** `TIMESTAMPTZ`  
  **Descrição**  Preenchido automaticamente com o horário atual do sistema.

- ### paciente_codigo  
  **Tipo:** `VARCHAR`  
  **Referência:** `PACIENTE(codigo)`  
  **Descrição**  Chave secundária estrangeira herdada da tabela **PACIENTE**.

- ### responsavel_codigo  
  **Tipo:** `VARCHAR`  
  **Referência:** `RESPONSAVEL(codigo)`  
  **Descrição**  Chave secundária estrangeira herdada da tabela **RESPONSAVEL**.

- ### tipo  
  **Tipo:** `VARCHAR(16)`  
  **Descrição**  Tipo do laço, (Pai, Mãe, Tio etc)