



INSERT INTO cidade (nome, id_cidade, estado  ) VALUES ('rio grande', '2',  'RS');
INSERT INTO cidade (nome, id_cidade, estado  ) VALUES ('curitiba', '3',  'PR');
INSERT INTO cidade (nome, id_cidade, estado  ) VALUES ('bage', '4',  'SP');
INSERT INTO cidade (nome, id_cidade, estado  ) VALUES ('Porto Alegre', '5',  'RS');


INSERT INTO hotel (nome_hotel, id_hotel, endereco,id_cidade) VALUES ('curi', '8', 'general neto ,20 ','1');
INSERT INTO hotel (nome_hotel, id_hotel, endereco,id_cidade) VALUES ('jacks', '2', 'barroso ,18 ','5');
INSERT INTO hotel (nome_hotel, id_hotel, endereco,id_cidade) VALUES ('rafael', '5', '3 de maio,90 ','3');
INSERT INTO hotel (nome_hotel, id_hotel, endereco,id_cidade) VALUES ('curi', '4', 'general neto45 ','1');


INSERT INTO Funcionario (idfuncionario, cpf, pnome,snome,  DATANASC,id_hotel) VALUES ('2', '2', 'joao','silveira','1927-11-11','1');

INSERT INTO quartos (id_hotel, id_quarto, id_tipo) VALUES('2',  '1 ','2');
INSERT INTO quartos (id_hotel, id_quarto, id_tipo) VALUES('2',  '2 ','2');
INSERT INTO quartos (id_hotel, id_quarto, id_tipo) VALUES ('1',  '5 ','1');
INSERT INTO quartos (id_hotel, id_quarto, id_tipo) VALUES ('5',  '1 ','1');


INSERT INTO cliente(cpf, PNOME,SNOME, sexo,datanasc) VALUES ('610',  'maria ','cardoso','f','1955-11-11');
INSERT INTO cliente(cpf, PNOME,SNOME, sexo,datanasc) VALUES ('615',  'marcia ','silva','f','1955-10-11');
INSERT INTO cliente(cpf, PNOME,SNOME, sexo,datanasc) VALUES ('510',  'marcio ','neves','m','1990-11-10');
INSERT INTO cliente(cpf, PNOME,SNOME, sexo,datanasc) VALUES ('900',  'bruno ','souza','m','1982-11-10');

INSERT INTO aluga(id_aluguel,id_hotel, id_quarto,cpf) VALUES ('2', '2', '1', '610');
INSERT INTO aluga(id_aluguel,id_hotel, id_quarto,cpf) VALUES ('3', '1', '5', '615');
INSERT INTO aluga(id_aluguel,id_hotel, id_quarto,cpf) VALUES ('4', '2', '2', '900');
INSERT INTO aluga(id_aluguel,id_hotel, id_quarto,cpf) VALUES ('5', '5', '1', '510');




-- mostra todas cidade cadastradas
select* from cidade;

-- mostra todos os funcionarios que trabalha no hotel 1
select Idfuncionario, cpf, PNOME , SNOME, datanasc
from hotel natural join funcionario
where id_hotel =1;


-- mostra a cidade
select *
from cidade  
where id_cidade=3;


-- mostrar tdos hoteis  da cidade de pelotas
select* 
from hotel natural join cidade
where id_cidade=1;


-- mostra todos os alugueis no hotel 1
select PNOME, SNOME, sexo ,datanasc 
from aluga natural join cliente natural join hotel natural join quartos 
where id_hotel=1;

-- mostra os hoteis com mais de 1 cliente
select id_hotel, nome_hotel,COUNT(*)
from aluga natural join cliente natural join hotel natural join quartos 
GROUP BY id_hotel
having count(*)>1;


-- todas cidades do rio grande do sul cadastradas
select NOME, id_cidade ,estado 
from cidade
where estado LIKE '%rs%';






