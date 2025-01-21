-- Preenchendo a tabela EMPRESA
INSERT INTO EMPRESA (unidade_codigo, unidade_nome, nome_fantasia, razao_social, status, cep, uf, cidade, bairro, logradouro, cnpj, fone, email, diretor_colaborador_codigo)
VALUES
('001', 'Unidade Central', 'Clinica Central', 'Clinica Central LTDA', TRUE, '12345678', 'SP', 'São Paulo', 'Centro', 'Rua Principal, 100', '12345678000101', '11999999999', 'contato@clinicacentral.com', NULL),
('002', 'Unidade Norte', 'Clinica Norte', 'Clinica Norte LTDA', TRUE, '87654321', 'SP', 'São Paulo', 'Norte', 'Avenida Secundária, 200', '12345678000202', '11988888888', 'contato@clinicanorte.com', NULL),
('003', 'Unidade Sul', 'Clinica Sul', 'Clinica Sul LTDA', TRUE, '11223344', 'SP', 'São Paulo', 'Sul', 'Rua Ternária, 300', '12345678000303', '11977777777', 'contato@clinicasul.com', NULL),
('004', 'Unidade Leste', 'Clinica Leste', 'Clinica Leste LTDA', TRUE, '44332211', 'SP', 'São Paulo', 'Leste', 'Avenida Quaternária, 400', '12345678000404', '11966666666', 'contato@clinicaleste.com', NULL),
('005', 'Unidade Oeste', 'Clinica Oeste', 'Clinica Oeste LTDA', TRUE, '55667788', 'SP', 'São Paulo', 'Oeste', 'Rua Quinternária, 500', '12345678000505', '11955555555', 'contato@clinicaoeste.com', NULL);

-- Preenchendo a tabela CONVENIO
INSERT INTO CONVENIO (nome, nome_curto, ativo)
VALUES
('Convenio Saúde Total', 'Saúde Total', TRUE),
('Plano Familiar Plus', 'Familiar Plus', TRUE),
('Seguro Saúde Vida', 'Saúde Vida', TRUE),
('Plano VIP Saúde', 'VIP Saúde', TRUE),
('Convenio Básico', 'Básico', TRUE);

-- Preenchendo a tabela COLABORADOR
INSERT INTO COLABORADOR (ativo, modo_trabalho, formacao, empresa_unidade_codigo, codigo, registro_profissional, nome, cpf, tipo, funcao, especialidade, perfil, codigo_computador, email, usuario, senha)
VALUES
(TRUE, 'Presencial', 'Psicologia', '001', 'COL001', '12345', 'João da Silva', '12345678901', 'Especialista', 'Psicólogo', 'Infantil', 'Especialista', 'PC001', 'joao@clinica.com', 'joao.silva', 'senha123'),
(TRUE, 'Presencial', 'Fonoaudiologia', '002', 'COL002', '67890', 'Maria de Souza', '23456789012', 'Especialista', 'Fonoaudióloga', 'Audição', 'Especialista', 'PC002', 'maria@clinica.com', 'maria.souza', 'senha456'),
(TRUE, 'Remoto', 'Terapia Ocupacional', '003', 'COL003', '54321', 'Pedro Almeida', '34567890123', 'Especialista', 'Terapeuta', 'Motora', 'Especialista', 'PC003', 'pedro@clinica.com', 'pedro.almeida', 'senha789'),
(TRUE, 'Presencial', 'Fisioterapia', '004', 'COL004', '98765', 'Ana Costa', '45678901234', 'Especialista', 'Fisioterapeuta', 'Postura', 'Especialista', 'PC004', 'ana@clinica.com', 'ana.costa', 'senha321'),
(TRUE, 'Presencial', 'Psicologia', '005', 'COL005', '19283', 'Carlos Pereira', '56789012345', 'Especialista', 'Psicólogo', 'Infantil', 'Especialista', 'PC005', 'carlos@clinica.com', 'carlos.pereira', 'senha654');

-- Atualizando a tabela EMPRESA para adicionar diretores
UPDATE EMPRESA SET diretor_colaborador_codigo = 'COL001' WHERE unidade_codigo = '001';
UPDATE EMPRESA SET diretor_colaborador_codigo = 'COL002' WHERE unidade_codigo = '002';
UPDATE EMPRESA SET diretor_colaborador_codigo = 'COL003' WHERE unidade_codigo = '003';
UPDATE EMPRESA SET diretor_colaborador_codigo = 'COL004' WHERE unidade_codigo = '004';
UPDATE EMPRESA SET diretor_colaborador_codigo = 'COL005' WHERE unidade_codigo = '005';

-- Preenchendo a tabela PACIENTE
INSERT INTO PACIENTE (ativo, empresa_unidade_codigo, codigo, nome, nome_curto, sexo, data_nascimento, local_nascimento, certidao_nascimento, cpf, convenio_id, numero_convenio, observacoes)
VALUES
(TRUE, '001', 'PAC001', 'Lucas Mendes', 'Lucas', 'M', '2010-05-20', 'São Paulo', '123456', '12312312312', 1, '123456789012', 'Paciente ativo e com bons resultados.'),
(TRUE, '002', 'PAC002', 'Fernanda Rocha', 'Fernanda', 'F', '2012-09-15', 'São Paulo', '654321', '23423423423', 2, '987654321098', 'Paciente frequente.'),
(TRUE, '003', 'PAC003', 'Rafael Costa', 'Rafael', 'M', '2009-03-10', 'São Paulo', '987654', '34534534534', 3, '567890123456', 'Paciente iniciou tratamento recentemente.'),
(TRUE, '004', 'PAC004', 'Mariana Souza', 'Mariana', 'F', '2011-11-25', 'São Paulo', '456789', '45645645645', 4, '876543210987', 'Paciente em tratamento contínuo.'),
(TRUE, '005', 'PAC005', 'Beatriz Almeida', 'Bia', 'F', '2013-07-30', 'São Paulo', '789123', '56756756756', 5, '345678901234', 'Paciente com acompanhamento semanal.');

-- Preenchendo a tabela RESPONSAVEL
INSERT INTO RESPONSAVEL (codigo, ativo, nome, estado_civil, profissao, cpf, rg, celular, email, contatos_extras)
VALUES
('RESP001', TRUE, 'Cláudia Mendes', 'Casada', 'Engenheira', '67867867867', 'MG1234567', '11988887777', 'claudia@familia.com', 'Tia: 11999998888'),
('RESP002', TRUE, 'Roberto Rocha', 'Divorciado', 'Médico', '78978978978', 'SP7654321', '11977776666', 'roberto@familia.com', 'Avó: 11966665555'),
('RESP003', TRUE, 'Juliana Costa', 'Solteira', 'Professora', '89089089089', 'RJ2345678', '11966664444', 'juliana@familia.com', 'Amigo: 11955554444'),
('RESP004', TRUE, 'Paulo Souza', 'Casado', 'Advogado', '90190190190', 'PR8765432', '11955553333', 'paulo@familia.com', 'Irmã: 11944443333'),
('RESP005', TRUE, 'Renata Almeida', 'Viúva', 'Designer', '12312312312', 'BA3456789', '11944442222', 'renata@familia.com', 'Vizinho: 11933332222');

-- Preenchendo a tabela VINCULO
INSERT INTO VINCULO (data_hora_criacao, paciente_codigo, responsavel_codigo, tipo)
VALUES
(NOW(), 'PAC001', 'RESP001', 'Mãe'),
(NOW(), 'PAC002', 'RESP002', 'Pai'),
(NOW(), 'PAC003', 'RESP003', 'Mãe'),
(NOW(), 'PAC004', 'RESP004', 'Pai'),
(NOW(), 'PAC005', 'RESP005', 'Mãe');

-- Preenchendo a tabela PAGAMENTO
INSERT INTO PAGAMENTO (data_hora_criacao, responsavel_codigo, valor, tipo, descricao)
VALUES
(NOW(), 'RESP001', 150.00, 'Cartão', 'Pagamento da consulta de Lucas Mendes'),
(NOW(), 'RESP002', 200.00, 'Dinheiro', 'Pagamento da consulta de Fernanda Rocha'),
(NOW(), 'RESP003', 180.00, 'Cartão', 'Pagamento da consulta de Rafael Costa'),
(NOW(), 'RESP004', 220.00, 'PIX', 'Pagamento da consulta de Mariana Souza'),
(NOW(), 'RESP005', 160.00, 'Cartão', 'Pagamento da consulta de Beatriz Almeida');

-- Preenchendo a tabela DOCUMENTO
INSERT INTO DOCUMENTO (data_hora_criacao, ativo, tipo, caminho, paciente_codigo, colaborador_codigo)
VALUES
(NOW(), TRUE, 'Relatório Médico', '/docs/lucas_relatorio.pdf', 'PAC001', 'COL001'),
(NOW(), TRUE, 'Relatório Fono', '/docs/fernanda_relatorio.pdf', 'PAC002', 'COL002'),
(NOW(), TRUE, 'Relatório Terapia', '/docs/rafael_relatorio.pdf', 'PAC003', 'COL003'),
(NOW(), TRUE, 'Relatório Fisioterapia', '/docs/mariana_relatorio.pdf', 'PAC004', 'COL004'),
(NOW(), TRUE, 'Relatório Psicológico', '/docs/beatriz_relatorio.pdf', 'PAC005', 'COL005');

-- Preenchendo a tabela CONTRATO
INSERT INTO CONTRATO (data_hora_criacao, ativo, responsavel_codigo, paciente_codigo, documento_id, cep, uf, cidade, bairro, logradouro, numero, complemento)
VALUES
(NOW(), TRUE, 'RESP001', 'PAC001', 1, '12345678', 'SP', 'São Paulo', 'Centro', 'Rua A', 100, 'Ap 101'),
(NOW(), TRUE, 'RESP002', 'PAC002', 2, '87654321', 'SP', 'São Paulo', 'Norte', 'Rua B', 200, 'Casa 2'),
(NOW(), TRUE, 'RESP003', 'PAC003', 3, '11223344', 'SP', 'São Paulo', 'Sul', 'Rua C', 300, 'Bloco 3'),
(NOW(), TRUE, 'RESP004', 'PAC004', 4, '44332211', 'SP', 'São Paulo', 'Leste', 'Rua D', 400, 'Ap 402'),
(NOW(), TRUE, 'RESP005', 'PAC005', 5, '55667788', 'SP', 'São Paulo', 'Oeste', 'Rua E', 500, 'Casa 5');

-- Preenchendo a tabela AGENDAMENTO
INSERT INTO AGENDAMENTO (unidade_codigo, tipo, status, data_hora_inicio, data_hora_fim, observacao, paciente_codigo, responsavel_codigo, especialista_colaborador_codigo, recepcionista_colaborador_codigo, sala)
VALUES
('001', 'Consulta', 'Agendado', NOW() + INTERVAL '1 DAY', NOW() + INTERVAL '1 DAY' + INTERVAL '1 HOUR', 'Consulta de Lucas Mendes', 'PAC001', 'RESP001', 'COL001', 'COL002', 101),
('002', 'Consulta', 'Agendado', NOW() + INTERVAL '2 DAYS', NOW() + INTERVAL '2 DAYS' + INTERVAL '1 HOUR', 'Consulta de Fernanda Rocha', 'PAC002', 'RESP002', 'COL002', 'COL003', 102),
('003', 'Consulta', 'Concluído', NOW() - INTERVAL '1 DAY', NOW() - INTERVAL '1 DAY' + INTERVAL '1 HOUR', 'Consulta de Rafael Costa', 'PAC003', 'RESP003', 'COL003', 'COL004', 103),
('004', 'Consulta', 'Cancelado', NOW() + INTERVAL '3 DAYS', NOW() + INTERVAL '3 DAYS' + INTERVAL '1 HOUR', 'Consulta de Mariana Souza', 'PAC004', 'RESP004', 'COL004', 'COL005', 104),
('005', 'Consulta', 'Agendado', NOW() + INTERVAL '4 DAYS', NOW() + INTERVAL '4 DAYS' + INTERVAL '1 HOUR', 'Consulta de Beatriz Almeida', 'PAC005', 'RESP005', 'COL005', 'COL001', 105);

-- Preenchendo a tabela AVALIACAO
INSERT INTO AVALIACAO (paciente_codigo, colaborador_codigo, data_hora_inicio, data_hora_fim, status, anotacoes)
VALUES
('PAC001', 'COL001', NOW() - INTERVAL '1 HOUR', NOW(), 'Finalizada', 'Lucas apresentou progresso no tratamento.'),
('PAC002', 'COL002', NOW() - INTERVAL '2 HOURS', NOW() - INTERVAL '1 HOUR', 'Finalizada', 'Fernanda respondeu bem aos exercícios propostos.'),
('PAC003', 'COL003', NOW() - INTERVAL '3 HOURS', NOW() - INTERVAL '2 HOURS', 'Finalizada', 'Rafael mostrou melhora na coordenação motora.'),
('PAC004', 'COL004', NOW() - INTERVAL '4 HOURS', NOW() - INTERVAL '3 HOURS', 'Finalizada', 'Mariana precisa de ajustes no plano de tratamento.'),
('PAC005', 'COL005', NOW() - INTERVAL '5 HOURS', NOW() - INTERVAL '4 HOURS', 'Finalizada', 'Beatriz demonstrou evolução na terapia psicológica.');