create database cfbcursos;

use cfbcursos;

create table if not exists cliente(
	i_cliente_cliente int primary key not null auto_increment,
	s_nome_cliente varchar(50) NOT NULL,
	s_cpf_cliente VARCHAR(11) NOT NULL,
s_pais_cliente VARCHAR(20) DEFAULT 'BRASIL',
	d_nasc_cliente DATETIME
);


DROP SCHEMA cfbcursos; -- PARA APAGAR BANCO DE DADOS
DROP TABLE cliente; -- PARA APAGAR A TABELA

-- PARA ALTERAR O DATATYPE DA LINHA
ALTER TABLE cliente MODIFY COLUMN s_nome_cliente VARCHAR(30);

-- PARA RENOMEAR O NOME DE UMA COLUNA
ALTER TABLE _tabela_ RENAME type_name TO key_type_name;

-- PARA ADICIONAR UMA COLUNA NA TABELA
ALTER TABLE cliente ADD COLUMN i_tipo_cliente INT NOT NULL DEFAULT 1;

-- PARA APAGAR UMA COLUNA DA TABELA
ALTER TABLE cliente DROP COLUMN i__tipo_cliente;

-- FAZENDO UMA LIGAÇÃO DE CHAVE ESTRANGEIRA COM OUTRA TABELA
ALTER TABLE cliente ADD CONSTRAINT fk_tipocliente FOREIGN KEY (i_tipo_cliente) REFERENCES tipocliente (i_tipocliente_tipocliente);

-- FOREIGN KEY - CHAVE ESTRANGEIRA
-- PRIMARY KEY - CHAVE PRIMARIA

-- COMO ADICIONAR UMA COLUNA
ALTER TABLE cliente ADD COLUMN i_idade_cliente int;

-- COMO ADICIONAR INFORMAÇÕES NA COLUNAS/TABELA
INSERT INTO cliente() VALUES ('01', 'Bruno', '11122233344','2002-05-30', '01');
-- CASO SEJA AUTO_INCREMENT = PODE-SE COLOCAR DEFAULT
-- PARA COLOCAR UMA PALAVRA PADRÃO, CASO O CAMPO NÃO SEJA PREENCHIDO, COLOSA-SE DEFAULT
-- CASO COLOQUE DEFAULT COMO PADRÃO, BASTA DEIXAR DEFAULT AO INVES DO VALOR

-- COMO ADICIONAR AS INFORMAÇÕES DE UMA TABELA, DENTRO DE OUTRA TABELA
INSERT INTO cliente_aux (default, s_nome_cliente, s_cpf_cliente, d_nasc_cliente, i_tipo_cliente);
select 
	i_cliente_cliente, 
	s_nome_cliente, 
	s_cpf_cliente, 
	d_nasc_cliente, 
	i_tipo_cliente
from cliente (Quando as tabelas forem iguais, basta "insert into cliente select * from cliente_aux);

/*

-- COMO MODIFICAR OS DADOS DE UMA LINHA DA TABELA
update cliente
set s_nome_cliente = 'pedrohilbert', i_tipo_cliente = '2'
where id_cliente_cliente = 1
limit 2;

-- COMANDO DELETE
DELETE FROM cliente; -- Aqui apagará todas as linhas da tabela
DELETE FROM cliente WHERE id_cliente = 1; -- Aqui colocamos uma condição, para apagar a linha com o id igual a '1'.
DELETE FROM cliente WHERE id_cliente >0 LIMIT 2; --Aqui apagará as duas primeiras linhas que tiverem o id acima de 1.

-- SELECT
SELECT * FROM cliente; -- Aqui trás todos os registros de uma tabela
SELECT * FROM cliente WHERE _id_ = 1;

-- WHERE - Quando
-- GROUP BY - Agrupar 
-- HAVING
-- ORDER BY - Ordenar 

-- COMO RECEBER OS VALORES SEM SER DUPLICADOS - DISTINCT 
SELECT DISTINCT i_cliente_cliente FROM venda;

-- SELECT QUE RETORNARA O MAIOR VALOR DA COLUNA - MAX
SELECT MAX(id_cliente_cliente) from cliente;

-- AQUI ESTAMOS USANDO UMA FUNÇÃO DENTRO DO NOSSO INSERT INTO PARA PEGAR O PRÓXIMO ID NA TABELA 
INSERT INTO cliente VALUES (
	(select max(c.i_cliente_cliente)+1 as cliente from cliente c),
	'vesperino',
	'12345678999',
	'1999-03-03',
	1
);

-- 
select * from (select * from cliente) c;

-- CRIANTE UMA VIEW (TABELA VIRTUAL)
CREATE VIEW nivermesatual AS SELECT
  i_cliente_cliente, 
	s_nome_cliente, 
	day(d_nasc_cliente) as 'Dia Aniversario'
from cliente
where month(d_nasc_cliente) = month(curdate());


-- WHERE - QUANDO
SELECT * FROM CLIENTE WHERE i_cpf_cliente = '00000000' or i_cpf_cliente '11111111';
SELECT * FROM CLIENTE WHERE i_tipo_cliente = 1 and month(d_nasc_cliente) > 5;
SELECT * FROM CLIENTE WHERE i_tipo_cliente IN(1,2,3) and (month(d_nasc_cliente) >= 4 and month(d_nasc_cliente) <= 9);

-- USANDO TRÊS INNER JOIN EM UM ÚNICO SELECT
SELECT v.i_venda_venda, c.s_nome_cliente, c.s_cpf_cliente, v.d_data_venda,v.f_valor_venda, tc.s_desctipocliente
from venda v
		INNER JOIN cliente c on v.i_cliente_cliente = c.i_cliente_cliente
		INNER JOIN tipocliente tc on c.i_tipo_cliente = tc.i_tipocliente_tipocliente;

-- GRUPO BY -- SERVE PARA AGRUPAR TODOS OS REGISTROS IGUAIS
GRUPO BY __coluna__;
EX: select idcurso, count(idcurso) as Qtd from pessoascurso group by idcurso;

-- HAVING -- 
-----------------------------------------------------------------------------------------------------------------------

upper(nome_clientes) -- AQUI SERÁ ESCRITO TUDO EM MAIUSCULO.
count() -- CONTA A QUANTIDADE DENTRO DO PARENTESE
day() -- PEGA O DIA DA DATA
month() -- PEGA O MÊS DA DATA
curdate() -- PEGA O DIA ATUAL
'''

