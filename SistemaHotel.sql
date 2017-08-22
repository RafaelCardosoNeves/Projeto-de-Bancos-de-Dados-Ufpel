
 /* UFPEL
 * PBD - Projeto de Banco de Dados
 * Rafael Cardoso Neves - rcnevest@inf.ufpel.edu.br 
 * Script de criação do Hotel
 */
 
DROP DATABASE IF EXISTS sistemahotel;

CREATE DATABASE sistemahotel;

USE SistemaHotel;

CREATE TABLE HOTEL (
Nome_hotel VARCHAR(15) NOT NULL,
id_hotel int NOT NULL,
ENDERECO VARCHAR(30) ,
id_cidade  int,



PRIMARY KEY (id_hotel),
foreign key (id_cidade) references cidade (id_cidade)

);
INSERT INTO hotel (nome_hotel, id_hotel, endereco,id_cidade) VALUES
	('manta', '1', 'general neto ','1');

CREATE TABLE TIPOQUARTO (
id_tipo int NOT NULL,
nometipo CHAR(15) NOT NULL,
npessoas int



);
INSERT INTO tipoquarto (id_tipo, nometipo, npessoas) VALUES ('1',  'solteiro ','1');
INSERT INTO tipoquarto (id_tipo, nometipo, npessoas) VALUES ('1',  'casal ','2');

CREATE TABLE Quartos (
id_hotel int NOT NULL,
id_quarto CHAR(9) NOT NULL,
id_tipo int,

foreign key (id_tipo) references quartos (id_tipo),
foreign key (id_hotel) references HOTEL (id_hotel)

);
INSERT INTO quartos (id_hotel, id_quarto, id_tipo) VALUES('1',  '3 ','2');
INSERT INTO quartos (id_hotel, id_quarto, id_tipo) VALUES ('1',  '1 ','1');


CREATE TABLE Cliente (
cpf  int NOT NULL,
PNOME		VARCHAR(15)			NOT NULL, 
SNOME		VARCHAR(15)			NOT NULL, 
sexo char(1),
datanasc date

);
INSERT INTO cliente(cpf, PNOME,SNOME, sexo,datanasc) VALUES
	('019',  'joao ','cardoso','m','1927-11-11');

CREATE TABLE Funcionario (
idfuncionario int NOT NULL,
cpf  int NOT NULL,
PNOME		VARCHAR(15)			NOT NULL,
SNOME		VARCHAR(15)			NOT NULL, 
sexo char(1),
datanasc DATE,
id_hotel int,

foreign key (id_hotel) references HOTEL (id_hotel),

PRIMARY KEY (idfuncionario)

);


INSERT INTO Funcionario (idfuncionario, cpf, pnome,snome , DATANASC,id_hotel) VALUES
	('1', '011', 'carlos','silva', '1927-11-10','1');

CREATE TABLE Aluga(
id_aluguel int,
id_quarto  int,
id_hotel int,
cpf int, 

foreign key (id_hotel) references HOTEL (id_hotel),
foreign key (id_quarto) references quartos (id_quarto),
foreign key (cpf) references Cliente (cpf)

);
INSERT INTO aluga(id_aluguel,id_hotel, id_quarto,cpf) VALUES
	('1', '1', '3', '019');

CREATE TABLE cidade(

nome char(25),
id_cidade int,
estado char(2)


);
INSERT INTO cidade (nome, id_cidade, estado  ) VALUES
	('pelotas', '1',  'RS');



-- Mostra as tabelas criadas
SHOW TABLES;

-- Mostra a descrição da tabela HOTEL
DESCRIBE HOTEL;

-- Mostra a descrição da tabela Cliente
DESCRIBE cliente;

-- Mostra a descrição da tabela cidade
DESCRIBE cidade;

-- Mostra a descrição da tabela empregado
DESCRIBE funcionario;

select* from cidade;
