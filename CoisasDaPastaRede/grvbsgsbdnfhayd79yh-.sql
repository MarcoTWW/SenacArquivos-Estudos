create database quintafeira;

use quintafeira;

create table pessoa(
pk_pessoa smallint not null auto_increment,
nome varchar(30) not null,
nascimento date,
endereco varchar(100),
nacionalidade varchar(20) default 'Brasil',
peso decimal(5,2),
altura decimal(3,2),
sexo enum('M','F','T','NB'),
genero varchar(15),
primary key(pk_pessoa)
)default charset = utf8;

create table carro(
pk_carro smallint not null auto_increment,
nome varchar(30) not null,
modelo varchar(30) not null,
ano_fabricacao year not null,
preco float not null,
marca varchar(20) not null,
motor varchar(30) not null,
carroceria varchar(20) not null, 
categoria varchar(15) not null,
cambio varchar(10),
tipo varchar(10) not null,
combustivel varchar(8) not null,
km char(6) not null,
descricao varchar(100),
primary key (pk_carro)
)default charset = utf8;

insert into pessoa(nome, nascimento, endereco, nacionalidade, peso, altura, sexo, genero) 
values('Glauco', '2000-05-27','Rua da bosta, Taubaté', 'Brasil', '84.00', '1.80', 'M', 'Hétero');

insert into carro(nome, modelo, ano_fabricacao, preco, marca, motor, carroceria, categoria, cambio, tipo, combustivel, km, descricao) 
values('EX 30 CORE','EX 30 CORE', '2024', '220000', 'Volvo', 'Motor Elétrico', 'SUV', 'Carro', 'Automático', 'Compacto', 'N/A', '0', '');

select * from pessoa;
select * from pessoa order by nome;

alter table pessoa
add column profissao varchar(20) not null;

alter table pessoa 
drop column profissao;

alter table pessoa 
add column profissao varchar(20) not null AFTER nome;

alter table pessoa 
modify column profissao varchar(20);

alter table pessoa
rename to aluno;

alter table pessoa 
change column profissao prof varchar(20) AFTER nome;

select * from pessoa;
select nome, altura from pessoa;
select * from pessoa order by altura;
select nome, altura from pessoa order by nome;

update aluno 
set nome = 'Joãozinho'
where pk_pessoa = '2';

delete from pessoa 
where pk_pessoa = '11';

truncate pessoa;

describe pessoa;
describe carros;

drop table carros;








create database loja;

use loja;

create table cliente(
pk_cliente smallint not null auto_increment primary key,
nome varchar(80),
endereco varchar(100),
contato varchar(20)
)default charset = utf8;

create table vendedor(
pk_vendedor smallint not null auto_increment primary key,
nome varchar(80),
carga_hr time,
salario int,
contato varchar(20),
qntd_venda smallint,
foreign key(qntd_venda) references produto(pk_produto)
)default charset = utf8;

create table produto(
pk_produto smallint not null auto_increment primary key,
nome varchar(80),
preco float,
validade date,
data_fabricacao date,
cadastro int
)default charset = utf8;

create table fornecedora(
pk_fornecedora smallint not null auto_increment primary key,
nome varchar(80), 
endereco varchar(100),
contato varchar(20)
)default charset = utf8;

create table venda(
pk_venda int not null auto_increment primary key,
valor_total float not null,
dia date not null,
fk_produto smallint not null,
foreign key(fk_produto) references produto(pk_produto),
fk_cliente smallint not null,
foreign key(fk_cliente) references cliente(pk_cliente),
fk_vendedor smallint not null,
foreign key(fk_vendedor) references vendedor(pk_vendedor)
);