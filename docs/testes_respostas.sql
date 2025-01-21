--1 Como obter os dados do paciente associado a um contrato específico?
SELECT p.* FROM 
    contrato c
JOIN 
    paciente p ON c.paciente_codigo = p.codigo WHERE c.id = '<id_do_contrato>';
    
--2 Qual o responsável associado a um determinado paciente? 
SELECT 
    r.*
FROM 
    vinculo v
JOIN 
    responsavel r ON v.responsavel_codigo = r.codigo
WHERE 
    v.paciente_codigo = '<codigo_do_paciente>'; 

--3 Como acessar as avaliações de um paciente específico?
SELECT * FROM avaliacao WHERE paciente_codigo = '<codigo_do_paciente>';

--4 Qual o convênio utilizado por um paciente com base em seu código?
SELECT convenio_id FROM paciente WHERE codigo = '<codigo_do_paciente>';

--5 Como listar todos os documentos relacionados a contratos de um determinado paciente?
SELECT d.* FROM documento d
JOIN paciente p ON d.paciente_codigo = p.codigo where p.codigo = '<codigo_do_paciente>';

--6 Como encontrar o responsável de um paciente por meio do vínculo de um contrato?
SELECT r.* FROM vinculo v
JOIN responsavel r ON v.responsavel_codigo = r.codigo
WHERE v.paciente_codigo = '<codigo_do_paciente>';

--7 Quais colaboradores participaram de agendamentos com um paciente específico?
SELECT c.* FROM colaborador c
JOIN avaliacao a ON c.codigo = a.colaborador_codigo
WHERE a.paciente_codigo = '<codigo_do_paciente>';

--8 Como obter todos os pagamentos associados a um determinado paciente, considerando os responsáveis vinculados?
SELECT p.* FROM pagamento p
JOIN vinculo v ON p.responsavel_codigo = v.responsavel_codigo
WHERE v.paciente_codigo = '<codigo_do_paciente>';

--9 Quem foi o colaborador especialista em um determinado agendamento?
SELECT c.* FROM colaborador c
JOIN avaliacao a ON c.codigo = a.colaborador_codigo
WHERE a.id = '<id_do_agendamento>';

--10 Quantas avaliações já foram realizadas para um paciente específico?
SELECT COUNT(*) FROM avaliacao WHERE paciente_codigo = '<codigo_do_paciente>';

--11 Qual o status atual de um agendamento baseado no paciente e no colaborador?
SELECT a.* FROM agendamento a
JOIN colaborador c ON a.recepcionista_colaborador_codigo = c.codigo
WHERE a.paciente_codigo = '<codigo_do_paciente>' AND c.codigo = '<codigo_do_colaborador>';

--12 Como identificar todos os colaboradores de uma unidade específica de uma empresa?
SELECT c.* FROM colaborador c
JOIN empresa u ON c.empresa_unidade_codigo = u.unidade_codigo
WHERE u.unidade_codigo = '<codigo_da_unidade/empresa>';

--13 Quais agendamentos foram conduzidos por colaboradores que atuam em uma unidade específica de uma empresa?
SELECT a.* FROM agendamento a
JOIN colaborador c ON a.recepcionista_colaborador_codigo = c.codigo
JOIN empresa u ON c.empresa_unidade_codigo = u.unidade_codigo
WHERE u.unidade_codigo = '<codigo_da_unidade/empresa>';

--14 Como verificar os dados da empresa associada a um agendamento especificado?
SELECT e.* FROM agendamento a
JOIN colaborador c ON a.recepcionista_colaborador_codigo = c.codigo
JOIN empresa e ON c.empresa_unidade_codigo = e.unidade_codigo
WHERE a.id = '<id_do_agendamento>';

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
    vinculo v JOIN responsavel r
ON 
    v.responsavel_codigo = r.codigo JOIN contrato c
ON 
    c.responsavel_codigo = r.codigo
WHERE 
    v.paciente_codigo = '<codigo_do_paciente>'
    AND c.ativo = TRUE;
