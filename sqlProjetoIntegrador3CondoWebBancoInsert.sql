create database condoweb;
use condoweb;

-- drop database condoweb;

create table Pessoa(
id_pessoa int primary key auto_increment,
nome varchar(100),
cpf varchar(11),
rg varchar(10),
data_nasc date,
email varchar(70),
telefone numeric(15),
telefone_celular numeric(15),
nome_usuario varchar(70),
senha varchar(50),
proprietario boolean);

create table Perfil(
id_perfil int primary key auto_increment,
descricao varchar(30));

create table Permissao(
id_permissao int primary key auto_increment,
pstatus boolean,
pdata date,
id_pessoa int,
foreign key (id_pessoa) references Pessoa(id_pessoa),
id_perfil int,
foreign key (id_perfil) references Perfil(id_perfil));

create table Proprietario(
id_proprietario int primary key auto_increment,
id_pessoa int,
foreign key (id_pessoa) references Pessoa(id_pessoa));

create table Imovel(
id_imovel int primary key auto_increment,
numero_apto int,
numero_bloco int,
id_proprietario int,
id_condomino int,
foreign key (id_proprietario) references Proprietario(id_proprietario),
foreign key (id_condomino) references Pessoa(id_pessoa));

create table ContaAReceber(
id_contaareceber int primary key auto_increment,
data_vencimento date,
valor double,
valor_pago double,
data_pagamento date,
data_referencia date,
id_imovel int,
foreign key (id_imovel) references Imovel(id_imovel));

create table Informativo(
id_informativo int primary key auto_increment,
assunto varchar(70),
conteudo mediumtext,
data_info date);

create table RecebeInformativo(
id_recebeinfo int primary key auto_increment,
id_imovel int,
foreign key (id_imovel) references Imovel(id_imovel),
id_informativo int,
foreign key (id_informativo) references Informativo(id_informativo));

insert into Pessoa(nome, cpf, rg, data_nasc, email, telefone, telefone_celular, nome_usuario, senha, proprietario) values
('Ana Maria', '12545625899','45214','1985-04-03', 'anamaria@gmail.com', '3213221321', '98521456', 'AnaMaria', '1234567', true),
('Rogerio Alves', '25896525412','85241','1977-08-23', 'rogerio@gmail.com', '3284723894', '98412356', 'RogerioAlves', '1234567', true),
('Adriana Silva', '14525875899','45287','1960-07-01', 'adriana@gmail.com', '3438428923', '32587412', 'AdrianaSilva', '1234567', true),
('Marisa Monte', '02536514588','852147','1958-10-10', 'marisa@gmail.com', '3243546454', '98523214', 'MarisaMonte', '1234567', true),
('Antônio Filho', '08525412577','859874','2001-12-01', 'antonio@gmail.com', '3564634345', '954123256', 'AntonioFilho', '1234567', true),
('Jade Marina', '03654125877','985214','1999-03-02', 'jade@gmail.com', '3534345345', '96521457', 'JadeMarina', '1234567', true),
('Cristiane Alves', '12545874588','9854125','1997-01-04', 'cristiane@gmail.com', '3435343463', '98745236', 'CristianeAlves', '1234567', false),
('Nazaré Silveira', '05874596522','652874','1988-01-08', 'nazare@gmail.com', '3213221321', '94253658', 'NazareSilveira', '1234567', false),
('Murilo Alves', '36525414799','852147','2000-07-01', 'murilo@gmail.com', '3534534646', '98521478', 'MuriloAlves', '1234567', false),
('José Antonio', '45632114755','8541256','1998-07-05', 'jose@gmail.com', '3214567321', '93251458', 'JoseAntonio', '1234567', false);

insert into Perfil(descricao) values
('Condomino'),
('Sindico'),
('Administrador');

insert into Permissao(pstatus, pdata, id_pessoa, id_perfil) values
(true, '2020-04-20', 1, 2),
(true, '2018-07-10', 2, 1),
(true, '2020-04-25', 3, 1),
(false, '2018-06-06', 4, 2),
(true, '2019-05-02', 5, 1),
(true, '2020-02-13', 6, 3),
(true, '2020-03-20', 7, 1),
(true, '2019-01-22', 8, 1),
(true, '2020-04-16', 9, 1),
(false, '2017-05-30', 10, 2);

insert into Proprietario(id_pessoa) values
(1),
(2),
(3),
(4),
(5),
(6);

insert into Imovel(numero_apto, numero_bloco, id_proprietario, id_condomino) values
(404, 4, 1, 7),
(302, 3, 2, 8),
(306, 3, 3, 9),
(208, 2, 4, 10),
(406, 4, 5, 5),
(206, 2, 6, 6);

insert into ContaAReceber(data_vencimento, valor, valor_pago, data_pagamento, data_referencia, id_imovel) values
('2020-04-25', 200.00, 200.00, '2020-04-15', '2020-04-17', 1),
('2020-04-25', 200.00, 150.00, '2020-04-17', '2020-04-19', 2),
('2020-04-25', 200.00, 200.00, '2020-04-18', '2020-04-20', 3),
('2020-04-25', 200.00, 140.00, '2020-04-19', '2020-04-22', 6),
('2020-04-25', 200.00, 200.00, '2020-04-15', '2020-04-18', 5),
('2020-04-25', 200.00, 120.00, '2020-04-17', '2020-04-20', 4);

insert into ContaAReceber(data_vencimento, valor, valor_pago, data_pagamento, data_referencia, id_imovel) values
('2020-05-25', 200.00, 0.00, '0000-00-00', '2020-05-15', 1),
('2020-05-25', 250.00, 0.00, '0000-00-00', '2020-05-15', 2),
('2020-05-25', 200.00, 0.00, '0000-00-00', '2020-05-15', 3),
('2020-05-25', 260.00, 0.00, '0000-00-00', '2020-05-15', 6),
('2020-05-25', 200.00, 0.00, '0000-00-00', '2020-05-15', 5),
('2020-05-25', 280.00, 0.00, '0000-00-00', '2020-05-15', 4);

insert into Informativo(assunto, conteudo, data_info) values 
("Eleição do sindico", "", '2020-01-14'),
("Creche", "", '2020-06-19'),
("Salão de festas", "", '2020-04-27'),
("Segurança", "", '2020-05-18');

insert into RecebeInformativo(id_imovel, id_informativo) values 
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),

(1, 2),
(2, 2),
(3, 2),
(4, 2),

(1, 3),
(2, 3),
(3, 3),
(5, 3),
(6, 3),

(1, 4),
(2, 4),
(3, 4),
(4, 4),
(6, 4);