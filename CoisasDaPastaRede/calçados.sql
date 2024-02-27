drop database calçados;

create database calçados;
use calçados;

create table cliente(
pk_cliente int primary key auto_increment not null,
nome varchar(50) not null,
cpf char(11) not null,
tel varchar(20) not null,
endereco varchar(200) not null,
nascimento date not null,
email varchar(30)
);

create table pedido(
pk_pedido int primary key auto_increment not null,
valor float not null,
data_pedido date not null,
forma_pagamento enum('dinheiro','pix','credito','debito','carne'),
fk_funcionario int not null,
fk_calcado int not null,
fk_cliente int not null,
foreign key (fk_funcionario) references funcionario(pk_funcionario),
foreign key (fk_calcado) references calcado(pk_calcado),
foreign key (fk_cliente) references cliente(pk_cliente)
);

desc pedido;

create table funcionario(
pk_funcionario int primary key auto_increment not null,
nome varchar(50) not null,
salario float not null,
cpf char(11) not null,
tel varchar(20) not null,
endereco varchar(200) not null,
nascimento date not null,
fk_cargo tinyint not null,
foreign key (fk_cargo) references cargo(pk_cargo)
);

create table cargo(
pk_cargo tinyint primary key auto_increment not null,
cargo varchar(20)
);

create table calcado(
pk_calcado int primary key auto_increment not null,
quantidade real not null,
fk_modelo smallint not null,
fk_cor tinyint not null,
fk_marca smallint not null,
fk_tamanho tinyint not null,
fk_tipo smallint not null,
foreign key (fk_modelo) references modelo(pk_modelo),
foreign key (fk_cor) references cor(pk_cor),
foreign key (fk_marca) references marca(pk_marca),
foreign key (fk_tamanho) references tamanho(pk_tamanho),
foreign key (fk_tipo) references tipo(pk_tipo)
);

create table fornecedor(
pk_fornecedor tinyint primary key auto_increment not null,
nome varchar(50) not null,
cnpj char(14) not null,
tel varchar(20) not null,
endereco varchar(200) not null,
email varchar(30)
);

create table modelo(
pk_modelo smallint primary key auto_increment not null,
modelo varchar(35)
);

create table cor(
pk_cor tinyint primary key auto_increment not null,
cor varchar(20)
);

create table marca(
pk_marca smallint primary key auto_increment not null,
marca varchar(35)
);

create table tamanho(
pk_tamanho tinyint primary key auto_increment not null,
tamanho float
);

create table tipo(
pk_tipo smallint primary key auto_increment not null,
tipo varchar(35)
);

create table RL_pedido_produto(
pk_pedido_produto int primary key auto_increment,
fk_pedido int not null,
fk_calcado int not null,
fk_valor float not null,
foreign key (fk_pedido) references pedido(pk_pedido), 
foreign key (fk_calcado) references calcado(pk_calcado),
foreign key (fk_valor) references pedido(valor)
);

drop table RL_pedido_produto;

insert into cliente
(nome, cpf, tel, endereco,nascimento,email)
values
('Eduardo Silva', '12345678901','1299999','100 R. Cap. Mario Cabral de Vasconcelos','2004-01-04','Eduardo_Silva@gmail.com' ),
('Brad Pereira', '34574349001','1244444','69 Caminho dos Mamoeiros','2008-04-02','Brad_Pereira@gmail.com' ),
('Rihanna Barbosa', '15679042100','1253216','151 Av. Nerina Padovani Squarcina','1994-03-05','Rihanna_Barb@gmail.com' ),
('Lucy Barros', '31429352334','1232159','449 Av. dos Imigrantes','2000-05-04','Lucy_Barros@gmail.com' ),
('Natalie Junior', '56346210789','12552162','167 Rua Halim José Abud','2003-02-01',''),
('Tom Borges', '22753012530','12442126','33 R. José Maria Claro','1990-01-09','Tom_Cruisereal@gmail.com' ),
('Selena Carvalho', '15679042100','1259924','2303 R. José Vicente de Barros','1989-10-03','' ),
('Angelica Castro', '42051232325','12478451','52 R. das Palmas','1996-02-02','Angel_Castro@gmail.com' ),
('Pedro Joao', '79321579421','1294278','34 R. João Couto','1999-11-04','Pedrinho_@gmail.com' ),
('Bruno Freitas', '24186395177','15421216','496 R. 7 de Setembro','1992-01-01','' ),
('Karen Lima','52246719378','12994571830','Moema','1999-12-05',''),
('Marcela Almeida ','26810372813','129940195749','Vila Madalena','1990-02-12',''),
('Fabio Santos','15697332523','129940865208','Butantã','1990-01-05','fabiosantos@gmail.com'),
('Jade','53425583400','12998477316','R Jose dos santos','2000-10-12','Jade09@gmail.com'),
('Julio César Furch', '97462538901','12996012126','Rua Princesa Isabel 342','1984-07-29','el.furch@gmail.com' ),
('John Stiven Mendoza Valencia', '46372898901','129658427','Rua José de Alencar 98','1992-06-27','speedM@gmail.com' ),
('Weslley Patati', '18362519901','1197194659','Rua Paysandú','2003-10-01','patati@gmail.com' ),
('João Paulo Silva Martins', '62354138901','126528646','Rua Princesa Isabel 102','1995-06-29','jp34@gmail.com' ),
('João Othavio basso', '10564268901','129874665','Rua José de Alencar 53','1997-01-13','João.Basso@gmail.com' ),
('Marcos Leonardo Santos Almeida', '23501498901','129656641','Rua Tiradentes 24','2003-05-02','ML9@gmail.com' ),
('Amora Silva','14435523423','129913134572','Rua Urupês','2002-07-05','amora144@gmail.com'),
('Cristiane Rozeira de Souza Silva', '12345678901','129636564','Rua Dom Pedro I 34','1985-05-15','cris.craque@gmail.com' ),
('Camila Fernanda Gomes Rodrigues', '84512038901','129863465','Rua Princesa Isabel 505','2001-01-02','camilaGK@gmail.com' ),
('Fabiana da Silva Santos', '63548918901','129655642','Rua bolivia 42','1989-08-04','fabiana_santos@gmail.com' ),
('Jean Lucas de Souza Oliveira', '95487568901','12985643','Rua Chile 89','1998-06-22','jean08@gmail.com' ),
('Lucas Braga Ribeiro', '50123688901','129548762','Rua Argentina 87','1996-11-10','bagre@gmail.com' ),
('Lucas Rafael Araújo Lima', '69842018901','129496587','Rua José de Alencar 34','1990-07-09','LL10@gmail.com' ),
('Marcelo Lima', '12353541234','124123599','Rua José de Alencar 23','1993-08-09','' ),
('Enzo Rodrigues', '22451676110','123568905','Rua João 21','1995-03-02','Enzo_X@gmail.com' ),
('Clara Barbosa', '03210986642','125741042','Rua José de Alencar 21','1990-11-06','' ),
('Sophia Silva', '12010986542','1234215','Rua Chile 83','2002-05-07','SoSoSilva@gmail.com' );
 
select*from cliente ;

insert into tipo
(tipo)
values
('Sandálias'),
('Rasteiras'),
('Scarpins'),
('Mules'),
('Espadrille'),
('Tênis'),
('Slip on'),
('Sapato Cano Longo'),
('Salto'),
('Chinelo'),
('Mocassim');

insert into marca
(marca)
values
('Nike'),
('Adidas'),
('Hocks'),
('Puma'),
('Vans'),
('Fila'),
('Mizuno'),
('All Star');
 

insert into modelo
(modelo)
values
('Air Force 1'),
('Run falcon 2.0'),
('Reverb'),
('SB Chron 2'),
('Pop Lite Petitpoa'),
('Chuck Taylor All Star'),
('Wave Invictus 3'),
('Breaknet'),
('Citrus'),
('Court Borough Low Recraft'),
('Air Max Excee'),
('Endo Run'),
('Slip-On Puma Carina Bdp'),
(' Carina Bdp Feminino'),
('Progress'),
('Float Elite');
 
 
insert into cor
(cor)
values
('Amarelo'),
('Amarelo-Alaranjado'),
('Vermelho-Alaranjado'),
('Vermelho'),
('Vermelho-arroxeado'),
('Roxo'),
('Azul-arroxeado'),
('Azul'),
('Azul-esverdeado'),
('Verde'),
('Amarelo-Esverdeado'),
('Branco'),
('Preto'),
('Bege'),
('Neon'),
('Estampado'),
('Tons pastel');



truncate cor;

insert into fornecedor
(nome,cnpj,tel,endereco,email)
values
('AeroForce','69349426890125','6126816274','Rua Cristiano Olsen','corrinne5791@uorak.com'),
('SapatilhaKids','69313407000125','9524489236','QE 11 Área Especial C','renata1954@uorak.com'),
('BotaMili','69349407310125','7336071720','Avenida Desembargador Moreira','sita299@uorak.com'),
('ChutFut','94153948000120','4123706667','Rua Maria Luísa do Val Penteado','bezza6760@uorak.com'),
('BaskAir','94830706000124','6131113223','Rua Paracatu','david3261@uorak.com');

insert into tamanho
(tamanho)
values
('31'),
('32'),
('33'),
('34'),
('35'),
('36'),
('37'),
('38'),
('39'),
('40'),
('41'),
('42');


insert into cargo
(cargo)
values
('Gerente'),
('Faxineiro'),
('Atendente'),
('Caixa'),
('Repositor');

insert into funcionario
(nome,salario,cpf,tel,endereco,nascimento,fk_cargo)
values
('Arthu','3600','50321265432','1246789013','Rua Paracatu','1998-04-02','1'),
('Regina','2000','41279065432','1262315013','Rua Volta Pra Mim','1998-04-02','3'),
('Jucelino', '1982', '30158965432', '1222589113', 'Rua onde que eu to', '1989-02-25','5'),
('Luiza', '1800', '21479015432', '1222559402', 'Rua onde eu vim parar', '2000-05-10','4'),
('Brenda', '2000', '14796598735', '1299654789235', 'Rua auauauauau', '1992-09-13','3'),
('Tobias','1542','50321297121','1286431302','Rua Tira Dentes','1993-01-02','2');




insert into calcado
(quantidade, fk_modelo, fk_cor, fk_marca, fk_tamanho, fk_tipo)
values
('5','4','2','7','4','2'),
('3','2','1','5','2','1'),
('8','3','1','4','2','8'),
('10','2','1','6','1','9');

insert into pedido
(valor, data_pedido, forma_pagamento, fk_funcionario, fk_calcado, fk_cliente)
values
('400', '2023-10-03','dinheiro','2','2','7'),
('320', '2023-12-13','credito','5','3','10'),
('825', '2023-10-04','pix','2','2','1'),
('620', '2023-10-03','debito','5','4','9');





truncate pedido;

select * from pedido;

select * from cargo;

select * from pedido;

use calçados;


select pk_funcionario, nome, cargo.cargo
from funcionario
join cargo on pk_cargo = fk_cargo;














drop database empresa;

create database empresa;

use empresa;

CREATE TABLE cliente (
    pk_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    cpf CHAR(11) NOT NULL,
    tel VARCHAR(20) NOT NULL,
    endereco varchar(200) NOT NULL,
    email VARCHAR(60)
);

CREATE TABLE produto (
    pk_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    valor FLOAT NOT NULL,
    descricao VARCHAR(200)
);

CREATE TABLE vendas (
    pk_vendas INT PRIMARY KEY AUTO_INCREMENT,
    valor FLOAT NOT NULL,
    data_pedido DATE NOT NULL,
    forma_pagamento ENUM('dinheiro', 'pix', 'credito', 'debito', 'carne'),
    fk_cliente INT NOT NULL,
    fk_produto INT NOT NULL,
    FOREIGN KEY (fk_produto)
        REFERENCES produto (pk_produto),
    FOREIGN KEY (fk_cliente)
        REFERENCES cliente (pk_cliente)
);

drop table cliente;
drop table produto;
drop table vendas;

truncate cliente;




select * from cliente;
select * from produto;
select * from vendas;