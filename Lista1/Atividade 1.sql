-- LINK DO EXERCÍCIO https://docs.google.com/document/d/1-JfFcSdE4wRFTp5l26NrFSNWoTkrYyPO/edit

create database db_colaboradores;
use db_colaboradores;

Create table tb_dadosfiscais(
	id bigint(5) auto_increment,
    nome varchar(30),
    cpf bigint(11),
    salario real (8,2),
    primary key (id)
);

insert into tb_dadosfiscais (nome, cpf, salario) Values ("Cirano", 12345678923, 20000);
insert into tb_dadosfiscais (nome, cpf, salario) Values ("Rogerio", 12353678923, 5000);
insert into tb_dadosfiscais (nome, cpf, salario) Values ("Carlos", 12345672323, 35000);
insert into tb_dadosfiscais (nome, cpf, salario) Values ("Roberto", 12345558923, 1500);
insert into tb_dadosfiscais (nome, cpf, salario) Values ("Cadu", 12345678900, 1000);

select * from tb_dadosfiscais;

select * from tb_dadosfiscais where salario>2000;
select * from tb_dadosfiscais where salario<2000;

update tb_dadosfiscais set nome = "CiranoRex" where id = 1;

select * from tb_dadosfiscais;

