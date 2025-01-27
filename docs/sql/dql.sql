--1 Como obter os dados do paciente associado a um contrato específico?
SELECT p.* 
FROM 
    paciente p 
JOIN 
    contrato c ON p.id = c.paciente_id 
WHERE 
    c.pk = <pk_do_contrato>;
    
--2 Qual o responsável associado a um determinado paciente? 
SELECT 
    r.*
FROM 
    laco l 
JOIN 
    responsavel r ON l.responsavel_id = r.id
WHERE 
    l.paciente_id = <id_do_paciente>; 

--3 Como acessar as avaliações de um paciente específico?
SELECT * FROM avaliacao WHERE paciente_id = '<id_do_paciente>';

--4 Qual o nome curto do convênio utilizado por um paciente com base em seu código?
select c.nome_curto from convenio c where c.pk = (SELECT convenio_pk FROM paciente WHERE id = '<id_do_paciente>');

--5 Como listar todos os documentos relacionados a contratos de um determinado paciente?
SELECT d.* FROM documento d
JOIN paciente p ON d.paciente_id = p.id where p.id = '<id_do_paciente>';

--6 Como encontrar os responsáveis de um paciente por meio do laço?
SELECT r.* FROM laco l 
JOIN responsavel r ON l.responsavel_id = r.id
WHERE l.paciente_id = '<id_do_paciente>';

--7 Quais colaboradores participaram de agendamentos com um paciente específico?
SELECT c.* FROM colaborador c
JOIN avaliacao a ON c.id = a.colaborador_id
WHERE a.paciente_id = '<id_do_paciente>';

--8 Como obter todos os pagamentos associados a um determinado paciente, considerando os responsáveis vinculados?
SELECT p.* FROM pagamento p
JOIN laco l  ON p.responsavel_id = l.responsavel_id
WHERE l.paciente_id = '<id_do_paciente>';

--9 Quem foi o colaborador especialista em um determinado agendamento?
SELECT c.* FROM colaborador c
JOIN avaliacao a ON c.id = a.colaborador_id 
WHERE a.pk = '<pk_da_avaliacao>';

--10 Quantas avaliações já foram realizadas para um paciente específico?
SELECT COUNT(*) FROM avaliacao WHERE paciente_id = '<id_do_paciente>';

--11 Qual o status atual de um agendamento baseado no paciente e no colaborador?
SELECT a.* FROM agendamento a
JOIN colaborador c ON a.recepcionista_colaborador_id = c.id
WHERE a.paciente_id = '<id_do_paciente>' AND c.id = '<id_do_colaborador>';


--12 Como identificar todos os colaboradores de uma unidade específica de uma empresa?
SELECT c.* FROM colaborador c
JOIN empresa u ON c.empresa_unidade_prefixo = u.unidade_prefixo 
WHERE u.unidade_prefixo = '<prefixo_da_unidade/empresa>';

--13 Quais agendamentos foram conduzidos por colaboradores que atuam em uma unidade específica de uma empresa?
SELECT a.* FROM agendamento a
JOIN colaborador c ON a.recepcionista_colaborador_id = c.id
JOIN empresa u ON c.empresa_unidade_prefixo = u.unidade_prefixo 
WHERE u.unidade_prefixo = '<prefixo_da_unidade/empresa>';

--14 Como verificar os dados da empresa associada a um agendamento especificado?
SELECT e.* FROM agendamento a
JOIN colaborador c ON a.recepcionista_colaborador_id = c.id 
JOIN empresa e ON c.empresa_unidade_prefixo = e.unidade_prefixo 
WHERE a.pk = '<pk_do_agendamento>';

--15 Quais contratos estão associados a uma determinada cidade ou bairro?
SELECT * FROM contrato WHERE
cidade = '<Cidade>' AND bairro = '<Bairro>';

--16 Qual o endereço completo dos responsáveis de um determinado paciente?
SELECT 
    r.nome AS responsavel_nome,
    r.cpf AS responsavel_cpf,
    c.logradouro,
    c.numero,
    c.complemento,
    c.bairro,
    c.cidade,
    c.uf,
    c.cep
FROM 
    laco l JOIN responsavel r 
ON 
    l.responsavel_id = r.id JOIN contrato c
ON 
    c.responsavel_id = r.id
WHERE 
    l.paciente_id = '<id_do_paciente>'
    AND c.ativo = TRUE;
