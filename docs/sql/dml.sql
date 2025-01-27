-- Preenchendo a tabela EMPRESA
INSERT INTO EMPRESA (
    ativo,
    cnpj,
    razao_social,
    nome_fantasia,
    cep,
    uf,
    cidade,
    bairro,
    logradouro,
    numero,
    complemento,
    unidade_prefixo,
    unidade_nome
) VALUES 
(TRUE, '46480183000190', 'Rede Tlk Anapolis de Clinicas LTDA', 'Therapies Love Kids', '75020030', 'GO', 'Anápolis', 'Centro', 'Rua Manoel D''abadia', '116', '', 'ANA', 'Anápolis'),
(TRUE, '41903933000176', 'Rede Tlk Neropolis de Clinicas LTDA', 'Therapies Love Kids', '75460000', 'GO', 'Nerópolis', 'Centro', 'Rua Aderbal Antunes de Oliveira', '00', 'Quadra 14 Lote 04', 'NER', 'Nerópolis');

-- Preenchendo a tabela CONVENIO
INSERT INTO CONVENIO (ativo, nome, nome_curto)
VALUES
(TRUE, 'Confederação Nacional das Cooperativas Médicas ', 'Unimed'),
(TRUE, 'Particular', 'Particular');

-- Preenchendo a tabela COLABORADOR
INSERT INTO COLABORADOR (
    empresa_unidade_prefixo,
    ativo,
    nome,
    sexo,
    data_nascimento,
    cpf,
    rg,
    cnh,
    numero_reservista,
    celular,
    email,
    modo_trabalho,
    cep,
    uf,
    cidade,
    bairro,
    logradouro,
    numero,
    complemento,
    titulo_profissional,
    registro_profissional,
    data_admissao,
    data_demissao,
    pis,
    setor,
    funcao,
    especialidade
) VALUES
('ANA', TRUE, 'Carlos Eduardo Silva', 'M', '1975-08-12', '12345678901', 'MG1234567', '123456789', '1234567', '62999990001', 'carlos.silva@email.com', 'CLT', '75020030', 'GO', 'Anápolis', 'Centro', 'Rua das Flores', '100', 'Sala 101', 'Diretor Administrativo', NULL, '2020-05-01', NULL,'12345678901', 'Administrativo', 'Diretor', NULL),
('NER', TRUE, 'Ana Paula Oliveira', 'F', '1980-02-25', '98765432109', 'SP9876543', '987654321', NULL, '62999990002', 'ana.oliveira@email.com', 'CLT', '75460000', 'GO', 'Nerópolis', 'Centro', 'Rua dos Lírios', '200', 'Casa', 'Diretora Administrativa', NULL, '2020-06-01', NULL, '98765432109', 'Administrativo', 'Diretor', NULL),
('ANA', TRUE, 'Maria Souza Santos', 'F', '1995-11-03', '11122233344', 'RJ1112223', '111222333', NULL, '62999990003', 'maria.santos@email.com', 'CLT', '75020030', 'GO', 'Anápolis', 'Centro', 'Av. Goiás', '300', 'Recepção', 'Recepcionista', NULL, '2020-07-01', NULL, '11122233344', 'Recepção', 'Recepcionista', NULL),
('NER', TRUE, 'João Pedro Almeida', 'M', '1998-06-15', '44455566677', 'BA4445556', '444555666', '7654321', '62999990004', 'joao.almeida@email.com', 'CLT', '75460000', 'GO', 'Nerópolis', 'Centro', 'Rua das Acácias', '400', NULL, 'Recepcionista', NULL, '2020-08-01', NULL, '44455566677', 'Recepção', 'Recepcionista', NULL),
('ANA', TRUE, 'Fernanda Costa Rocha', 'F', '1988-09-22', '77788899900', 'PR7778889', '777888999', NULL, '62999990005', 'fernanda.rocha@email.com', 'PJ', '75020030', 'GO', 'Anápolis', 'Setor Sul', 'Rua Jequitibás', '500', 'Consultório 1', 'Avaliadora', NULL,'2020-09-01', NULL, '77788899900', 'Terapêutico', 'Avaliador', 'Terapêutico'),
('NER', TRUE, 'Lucas Mendes Pereira', 'M', '1992-04-10', '22233344455', 'SC2223334', '222333444', '2345678', '62999990006', 'lucas.pereira@email.com', 'PJ', '75460000', 'GO', 'Nerópolis', 'Setor Central', 'Rua Ipês', '600', NULL, 'Avaliador', NULL, '2020-10-01', NULL, '22233344455', 'Terapêutico', 'Avaliador', 'Terapêutico'),
('ANA', TRUE, 'Ricardo Oliveira Gomes', 'M', '1970-12-01', '55566677788', 'RS5556667', '555666777', '3456789', '62999990007', 'ricardo.gomes@email.com', 'CLT', '75020030', 'GO', 'Anápolis', 'Jundiaí', 'Rua dos Pinheiros', '700', 'Consultório Médico', 'Médico Clínico Geral', 'GO12345', '2020-11-01', NULL,  '45678901234', 'Médico', 'Médico', 'Clínico Geral'),
('ANA', TRUE, 'Patrícia Almeida Rangel', 'F', '1978-07-18', '88899900011', 'ES8889990', '888999000', NULL, '62999990008', 'patricia.rangel@email.com', 'CLT', '75020030', 'GO', 'Anápolis', 'Vila Formosa', 'Rua das Orquídeas', '800', NULL, 'Médica Pediatra', 'GO54321', '2020-12-01', NULL, '56789012345', 'Médico', 'Médico', 'Pediatra'),
('NER', TRUE, 'Gustavo Henrique Lima', 'M', '1985-03-05', '33344455566', 'CE3334445', '333444555', '5678901', '62999990009', 'gustavo.lima@email.com', 'PJ', '75460000', 'GO', 'Nerópolis', 'Vila Nova', 'Rua dos Cravos', '900', 'Sala 2', 'Médico Cardiologista', 'GO67890', '2020-01-01', NULL, '67890123456', 'Médico', 'Médico', 'Cardiologista'),
('NER', TRUE, 'Camila Fernandes Braga', 'F', '1991-01-28', '66677788899', 'PE6667778', '666777888', NULL, '62999990010', 'camila.braga@email.com', 'PJ', '75460000', 'GO', 'Nerópolis', 'Jardim Primavera', 'Rua dos Girassóis', '1000', NULL, 'Médica Dermatologista', 'GO09876', '2020-02-01', NULL, '78901234567', 'Médico', 'Médico', 'Dermatologista');

-- Preenchendo a tabela USUARIO
INSERT INTO USUARIO (
    colaborador_id,
    ativo,
    online,
    nome,
    senha,
    nome_computador,
    perfil
) VALUES
(1, TRUE, FALSE, 'Carlos Eduardo Silva', 'senha123', 'Carlos-PC', 'admin'),
(2, TRUE, FALSE, 'Ana Paula Oliveira', 'senha123', 'Ana-PC', 'admin'),
(3, TRUE, FALSE, 'Maria Souza Santos', 'senha123', 'Maria-PC', 'admin'),
(4, TRUE, FALSE, 'João Pedro Almeida', 'senha123', 'Joao-PC', 'admin'),
(5, TRUE, FALSE, 'Fernanda Costa Rocha', 'senha123', 'Fernanda-PC', 'avaliador'),
(6, TRUE, FALSE, 'Lucas Mendes Pereira', 'senha123', 'Lucas-PC', 'avaliador'),
(7, TRUE, FALSE, 'Ricardo Oliveira Gomes', 'senha123', 'Ricardo-PC', 'medico'),
(8, TRUE, FALSE, 'Patrícia Almeida Rangel', 'senha123', 'Patricia-PC', 'medico'),
(9, TRUE, FALSE, 'Gustavo Henrique Lima', 'senha123', 'Gustavo-PC', 'medico'),
(10, TRUE, FALSE, 'Camila Fernandes Braga', 'senha123', 'Camila-PC', 'medico');

-- Atualizando a tabela EMPRESA para adicionar diretores
UPDATE EMPRESA SET diretor_colaborador_id = 1 WHERE unidade_prefixo = 'ANA';
UPDATE EMPRESA SET diretor_colaborador_id = 2 WHERE unidade_prefixo = 'NER';

-- Preenchendo a tabela PACIENTE
INSERT INTO PACIENTE (
    empresa_unidade_id,
    convenio_id,
    codigo,
    ativo,
    nome,
    nome_curto,
    sexo,
    data_nascimento,
    local_nascimento,
    certidao_nascimento,
    cpf,
    numero_convenio,
    observacoes
) VALUES
('ANA', 1, 'PAC_ANA_001', TRUE, 'Laura Maria Silva', 'Laura Silva', 'F', '2018-07-10', 'Anápolis-GO', '12345/2018-1', '12345678910', 'CONVENIO123ANA', 'Paciente alérgica a lactose'),
('ANA', 1, 'PAC_ANA_002', TRUE, 'Enzo Gabriel Oliveira', 'Enzo Oliveira', 'M', '2019-12-20', 'Anápolis-GO', '67890/2019-2', '09876543210', 'CONVENIO456ANA', 'Paciente com acompanhamento psicológico'),
('ANA', 2, 'PAC_ANA_003', TRUE, 'Maria Clara Santos', 'Maria Santos', 'F', '2020-05-05', 'Anápolis-GO', '24680/2020-3', '54321678901', 'CONVENIO789ANA', 'Paciente em terapia ocupacional'),
('NER', 1, 'PAC_NER_001', TRUE, 'Arthur Miguel Souza', 'Arthur Souza', 'M', '2017-09-15', 'Nerópolis-GO', '13579/2017-4', '67890123456', 'CONVENIO123NER', 'Paciente com dificuldade de socialização'),
('NER', 1, 'PAC_NER_002', TRUE, 'Ana Beatriz Lima', 'Ana Lima', 'F', '2021-01-30', 'Nerópolis-GO', '08642/2021-5', '21098765432', 'CONVENIO789NER', 'Paciente com atraso na fala'),
('NER', 2, 'PAC_NER_003', TRUE, 'Davi Lucca Pereira', 'Davi Pereira', 'M', '2016-08-25', 'Nerópolis-GO', '97531/2016-6', '98765012345', 'CONVENIO101112NER', 'Paciente com hiperatividade');

-- Preenchendo a tabela RESPONSAVEL
INSERT INTO RESPONSAVEL (
    id,
    ativo,
    nome,
    estado_civil,
    profissao,
    cpf,
    rg,
    celular,
    email,
    contatos_extras
) VALUES
(1, TRUE, 'Carlos Silva', 'Casado', 'Engenheiro', '12345678901', 'MG1234567', '31987654321', 'carlos.silva@email.com', ''),
(2, TRUE, 'Fernanda Silva', 'Casada', 'Professora', '10987654321', 'MG7654321', '31987654322', 'fernanda.silva@email.com', ''),
(3, TRUE, 'Roberto Oliveira', 'Casado', 'Médico', '23456789012', 'MG2345678', '31987654323', 'roberto.oliveira@email.com', ''),
(4, TRUE, 'Juliana Oliveira', 'Casada', 'Arquiteta', '21098765432', 'MG8765432', '31987654324', 'juliana.oliveira@email.com', ''),
(5, TRUE, 'Marcos Santos', 'Casado', 'Advogado', '34567890123', 'MG3456789', '31987654325', 'marcos.santos@email.com', ''),
(6, TRUE, 'Ana Santos', 'Casada', 'Enfermeira', '32109876543', 'MG9876543', '31987654326', 'ana.santos@email.com', ''),
(7, TRUE, 'Paulo Souza', 'Casado', 'Professor', '45678901234', 'MG4567890', '31987654327', 'paulo.souza@email.com', ''),
(8, TRUE, 'Mariana Souza', 'Casada', 'Psicóloga', '43210987654', 'MG0987654', '31987654328', 'mariana.souza@email.com', ''),
(9, TRUE, 'Ricardo Lima', 'Casado', 'Engenheiro', '56789012345', 'MG5678901', '31987654329', 'ricardo.lima@email.com', ''),
(10, TRUE, 'Tatiane Lima', 'Casada', 'Dentista', '54321098765', 'MG6789012', '31987654330', 'tatiane.lima@email.com', ''),
(11, TRUE, 'Eduardo Pereira', 'Casado', 'Médico', '67890123456', 'MG7890123', '31987654331', 'eduardo.pereira@email.com', ''),
(12, TRUE, 'Cláudia Pereira', 'Casada', 'Farmacêutica', '65432109876', 'MG8901234', '31987654332', 'claudia.pereira@email.com', '');

-- Preenchendo a tabela LACO
INSERT INTO LACO (
    paciente_id,
    responsavel_id,
    data_hora_criacao,
    tipo
) VALUES
(1, 1, NOW(), 'Pai'),  -- Laura Maria Silva
(1, 2, NOW(), 'Mãe'),
(2, 3, NOW(), 'Pai'),  -- Enzo Gabriel Oliveira
(2, 4, NOW(), 'Mãe'),
(3, 5, NOW(), 'Pai'),  -- Maria Clara Santos
(3, 6, NOW(), 'Mãe'),
(4, 7, NOW(), 'Pai'),  -- Arthur Miguel Souza
(4, 8, NOW(), 'Mãe'),
(5, 9, NOW(), 'Pai'),  -- Ana Beatriz Lima
(5, 10, NOW(), 'Mãe'),
(6, 11, NOW(), 'Pai'),  -- Davi Lucca Pereira
(6, 12, NOW(), 'Mãe');

-- Preenchendo a tabela DOCUMENTO
INSERT INTO DOCUMENTO (
    paciente_id,
    colaborador_id,
    ativo,
    data_hora_criacao,
    tipo,
    caminho
) VALUES
(1, 7, TRUE, '2025-01-27 10:00:00', 'Relatório Médico', '/documentos/laura_silva_relatorio_medico.pdf'), -- Documento para a paciente Laura Maria Silva, criado por Ricardo Oliveira Gomes
(2, 8, TRUE, '2025-01-27 11:00:00', 'Prescrição Médica', '/documentos/enzo_oliveira_prescricao_medica.pdf'), -- Documento para o paciente Enzo Gabriel Oliveira, criado por Patrícia Almeida Rangel
(3, 5, TRUE, '2025-01-27 12:00:00', 'Avaliação Terapêutica', '/documentos/maria_santos_avaliacao_terapeutica.pdf'), -- Documento para a paciente Maria Clara Santos, criado por Fernanda Costa Rocha
(4, 6, TRUE, '2025-01-27 13:00:00', 'Plano Terapêutico', '/documentos/arthur_souza_plano_terapeutico.pdf'), -- Documento para o paciente Arthur Miguel Souza, criado por Lucas Mendes Pereira
(5, 10, TRUE, '2025-01-27 14:00:00', 'Relatório Dermatológico', '/documentos/ana_lima_relatorio_dermatologico.pdf'), -- Documento para a paciente Ana Beatriz Lima, criado por Camila Fernandes Braga
(6, 9, TRUE, '2025-01-27 15:00:00', 'Relatório Cardiológico', '/documentos/davi_pereira_relatorio_cardiologico.pdf'); -- Documento para o paciente Davi Lucca Pereira, criado por Gustavo Henrique Lima

INSERT INTO AGENDAMENTO (
    especialista_colaborador_id,
    paciente_id,
    recepcionista_colaborador_id,
    responsavel_id,
    unidade_id,
    data_hora,
    sala,
    tipo,
    "status",
    observacoes
) VALUES
(7, 1, 3, 1, 1, '2025-02-01 10:00:00', 'Consultório 1', 'Consulta Clínica', 'Agendado', 'Primeira consulta médica de Laura Maria Silva.'),
(8, 2, 4, 3, 1, '2025-02-01 11:00:00', 'Consultório 2', 'Consulta Pediátrica', 'Acompanhamento psicológico de Enzo Gabriel Oliveira.'),
(5, 3, 3, 5, 1, '2025-02-02 09:00:00', 'Consultório 3', 'Terapia Ocupacional', 'Sessão de terapia ocupacional para Maria Clara Santos.'),
(9, 4, 4, 7, 2, '2025-02-02 14:00:00', 'Consultório 4', 'Consulta Cardiológica', 'Consulta inicial de Arthur Miguel Souza com o cardiologista.'),
(10, 5, 4, 9, 2, '2025-02-03 10:30:00', 'Consultório 5', 'Consulta Dermatológica', 'Avaliação dermatológica de Ana Beatriz Lima.'),
(6, 6, 3, 11, 2, '2025-02-03 15:00:00', 'Consultório 6', 'Terapia Ocupacional', 'Terapia ocupacional para Davi Lucca Pereira.');

INSERT INTO PAGAMENTO (
    responsavel_id,
    data_hora_criacao,
    valor,
    tipo,
    descricao
) VALUES
(1, '2025-02-01 09:45:00', 200.00, 'Cartão de Crédito', 'Pagamento da consulta clínica de Laura Maria Silva.'),
(3, '2025-02-01 10:45:00', 150.00, 'Dinheiro', 'Pagamento da consulta pediátrica de Enzo Gabriel Oliveira.'),
(5, '2025-02-02 08:45:00', 250.00, 'PIX', 'Pagamento da terapia ocupacional de Maria Clara Santos.'),
(7, '2025-02-02 13:30:00', 300.00, 'Cartão de Débito', 'Pagamento da consulta cardiológica de Arthur Miguel Souza.'),
(9, '2025-02-03 10:15:00', 180.00, 'Cartão de Crédito', 'Pagamento da consulta dermatológica de Ana Beatriz Lima.'),
(11, '2025-02-03 14:30:00', 250.00, 'PIX', 'Pagamento da terapia ocupacional de Davi Lucca Pereira.');

INSERT INTO AVALIACAO (
    paciente_id,
    colaborador_id,
    data_hora_inicio,
    data_hora_fim,
    "status",
    anotacoes
)
VALUES
(5, 6, '2025-02-05 10:00:00', '2025-02-05 10:30:00', 'Concluída', 'Sessão de avaliação para terapia comportamental.'),
(6, 6, '2025-02-05 14:00:00', NULL, 'Agendada', 'Planejamento para avaliação motora.');

INSERT INTO CONTRATO (
    responsavel_id,
    paciente_id,
    documento_pk,
    ativo,
    data_hora_criacao,
    cep,
    uf,
    cidade,
    bairro,
    logradouro,
    numero,
    complemento
)
VALUES
(9, 5, 101, TRUE, '2025-02-05 10:00:00', '12345678', 'SP', 'São Paulo', 'Centro', 'Rua das Flores', 123, 'Apartamento 12'),
(11, 6, 102, TRUE, '2025-02-05 14:00:00', '87654321', 'RJ', 'Rio de Janeiro', 'Jardim Botânico', 'Avenida das Palmeiras', 456, 'Casa 3');
