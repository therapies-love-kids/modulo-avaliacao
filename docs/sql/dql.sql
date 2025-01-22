-- 1. Listar todas as empresas
SELECT * FROM EMPRESA;

-- 2. Buscar convênios ativos
SELECT * FROM CONVENIO WHERE ativo = TRUE;

-- 3. Listar colaboradores ativos de uma empresa específica
SELECT * FROM COLABORADOR
WHERE ativo = TRUE AND empresa_unidade_codigo = '001';

-- 4. Listar pacientes vinculados a um convênio específico
SELECT * FROM PACIENTE
WHERE convenio_id = 1;

-- 5. Buscar responsáveis com estado civil específico
SELECT * FROM RESPONSAVEL
WHERE estado_civil = 'Solteira';

-- 6. Listar vínculos de um paciente específico
SELECT * FROM VINCULO
WHERE paciente_codigo = 'PAC001';

-- 7. Consultar pagamentos realizados por um responsável
SELECT * FROM PAGAMENTO
WHERE responsavel_codigo = 'RESP001';

-- 8. Buscar documentos ativos de um paciente
SELECT * FROM DOCUMENTO
WHERE ativo = TRUE AND paciente_codigo = 'PAC001';

-- 9. Listar contratos de um responsável com seus pacientes
SELECT * FROM CONTRATO
WHERE responsavel_codigo = 'RESP001';

-- 10. Consultar agendamentos em uma data específica
SELECT * FROM AGENDAMENTO
WHERE data_hora_inicio::DATE = '2025-01-22';

-- 11. Buscar contratos de um paciente
SELECT * FROM CONTRATO
WHERE paciente_codigo = 'PAC001';

-- 12. Contar o número de pacientes por unidade de empresa
SELECT empresa_unidade_codigo, COUNT(*) AS total_pacientes
FROM PACIENTE
GROUP BY empresa_unidade_codigo;

-- 13. Verificar agendamentos de um especialista em uma sala específica
SELECT * FROM AGENDAMENTO
WHERE especialista_colaborador_codigo = 'COL001' AND sala = 101;

-- 14. Listar responsáveis com mais de um vínculo
SELECT responsavel_codigo, COUNT(*) AS total_vinculos
FROM VINCULO
GROUP BY responsavel_codigo
HAVING COUNT(*) > 1;

-- 15. Buscar colaboradores por especialidade
SELECT * FROM COLABORADOR
WHERE especialidade = 'Postura';
