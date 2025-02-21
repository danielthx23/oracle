-- Inserir na tabela pais
INSERT INTO pais (id_pais, nome_pais) VALUES (1, 'Brasil');
COMMIT;

-- Inserir na tabela estado
INSERT INTO estado (id_estado, nome_estado, id_pais) VALUES (1, 'São Paulo', 1);
COMMIT;

INSERT INTO estado (id_estado, nome_estado, id_pais) VALUES (2, 'Rio de Janeiro', 1);
COMMIT;

INSERT INTO estado (id_estado, nome_estado, id_pais) VALUES (3, 'Minas Gerais', 1);
COMMIT;

INSERT INTO estado (id_estado, nome_estado, id_pais) VALUES (4, 'Bahia', 1);
COMMIT;

INSERT INTO estado (id_estado, nome_estado, id_pais) VALUES (5, 'Paraná', 1);
COMMIT;

-- Inserir na tabela cidade
INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (1, 'São Paulo', 1);
COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (2, 'Rio de Janeiro', 2);
COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (3, 'Belo Horizonte', 3);
COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (4, 'Salvador', 4);
COMMIT;

INSERT INTO cidade (id_cidade, nome_cidade, id_estado) VALUES (5, 'Curitiba', 5);
COMMIT;

-- Inserir na tabela bairro
INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (1, 'Vila Marieta', 1);
COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (2, 'Copacabana', 2);
COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (3, 'Savassi', 3);
COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (4, 'Pelourinho', 4);
COMMIT;

INSERT INTO bairro (id_bairro, nome_bairro, id_cidade) VALUES (5, 'Batel', 5);
COMMIT;

-- Inserir na tabela genero
INSERT INTO genero (id_genero, descricao) VALUES (1, 'Masculino');
COMMIT;

INSERT INTO genero (id_genero, descricao) VALUES (2, 'Feminino');
COMMIT;

-- Inserir na tabela tipo_cliente
INSERT INTO tipo_cliente (id_tipo_cli, descricao) VALUES (1, 'Pessoa Física (CPF)');
COMMIT;

INSERT INTO tipo_cliente (id_tipo_cli, descricao) VALUES (2, 'Pessoa Jurídica (CNPJ)');
COMMIT;

-- Inserir na tabela cliente
INSERT INTO cliente (id_cliente, nome, data_nasc, cpf_cnpj, id_tipo_cli, id_genero, email, telefone) 
VALUES (1, 'João Silva', TO_DATE('1985-03-15', 'YYYY-MM-DD'), 12345678900, 1, 1, 'joao.silva@email.com', 11912345678);
COMMIT;

INSERT INTO cliente (id_cliente, nome, data_nasc, cpf_cnpj, id_tipo_cli, id_genero, email, telefone) 
VALUES (2, 'Maria Oliveira', TO_DATE('1990-07-22', 'YYYY-MM-DD'), 98765432100, 1, 2, 'maria.oliveira@email.com', 21923456789);
COMMIT;

INSERT INTO cliente (id_cliente, nome, data_nasc, cpf_cnpj, id_tipo_cli, id_genero, email, telefone) 
VALUES (3, 'Empresa ABC Ltda', NULL, 12345678000199, 2, NULL, 'contato@empresaabc.com', 31934567890);
COMMIT;

INSERT INTO cliente (id_cliente, nome, data_nasc, cpf_cnpj, id_tipo_cli, id_genero, email, telefone) 
VALUES (4, 'Comércio XPTO S.A.', NULL, 98765432000155, 2, NULL, 'vendas@comercioxpto.com', 41945678901);
COMMIT;

-- Inserir na tabela tipo_logradouro
INSERT INTO tipo_logradouro (id_tipo_log, descricao) VALUES (1, 'Rua');
COMMIT;

INSERT INTO tipo_logradouro (id_tipo_log, descricao) VALUES (2, 'Avenida');
COMMIT;

INSERT INTO tipo_logradouro (id_tipo_log, descricao) VALUES (3, 'Praça');
COMMIT;

INSERT INTO tipo_logradouro (id_tipo_log, descricao) VALUES (4, 'Travessa');
COMMIT;

INSERT INTO tipo_logradouro (id_tipo_log, descricao) VALUES (5, 'Alameda');
COMMIT;

-- Inserir na tabela end_cliente
INSERT INTO end_cliente (id_end, logradouro, numero, cep, id_tipo_log, referencia, complemento, id_cliente) 
VALUES (1, 'das Flores', 123, '01001000', 1, 'Próximo à padaria', 'Apto 45', 1);
COMMIT;

INSERT INTO end_cliente (id_end, logradouro, numero, cep, id_tipo_log, referencia, complemento, id_cliente) 
VALUES (2, 'Brasil', 456, '22041001', 2, 'Perto do metrô', 'Bloco B', 2);
COMMIT;

INSERT INTO end_cliente (id_end, logradouro, numero, cep, id_tipo_log, referencia, complemento, id_cliente) 
VALUES (3, 'Comercial', 789, '30110000', 2, 'Ao lado do banco', NULL, 3);
COMMIT;

INSERT INTO end_cliente (id_end, logradouro, numero, cep, id_tipo_log, referencia, complemento, id_cliente) 
VALUES (4, 'dos Empresários', 101, '80010000', 1, 'Em frente ao shopping', 'Sala 305', 4);
COMMIT;