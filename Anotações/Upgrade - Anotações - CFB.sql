/*

create database cfbcursos;

use cfbcursos;

create table if not exists cliente(
	i_cliente_cliente int primary key not null auto_increment,
	s_nome_cliente varchar(50) NOT NULL,
	s_cpf_cliente VARCHAR(11) NOT NULL,
s_pais_cliente VARCHAR(20) DEFAULT 'BRASIL',
	d_nasc_cliente DATETIME
);
*/
-------------------------------------------------------------------------------------------------------------------------------------


-- COMO APAGAR UM BANCO DE DADOS
DROP DATABASE cfbcursos;
-- COMO APAGAR UMA TABELA NO BANCO DE DADOS
DROP TABLE cliente;
-- COMO ALTERAR UMA OS DADOS DE UMA COLUNA DA TABELA
ALTER TABLE cliente MODIFY COLUMN s_nome_cliente(30);
-- COMO INSERIR UMA NOVA COLUNA NA TABELA 
ALTER TABLE cliente ADD i_tipo_cliente INT DEFAULT 1;



