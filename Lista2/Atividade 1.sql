-- LINK DO EXERCÍCIO https://docs.google.com/document/d/1WffBDbf-5HJ-aevLU3JvGOK9QKf7d-5D/edit

create database db_produtos;
use db_produtos;

Create table tb_produtos(
	id bigint(5) auto_increment,
    nome varchar(20),
    categoria varchar(20),
    estoque bigint(5),
    setor bigint(5),
    primary key (id)
);

insert into tb_produtos(nome,categoria,estoque,setor) Value ("Tomate","Frutas",100,3);
insert into tb_produtos(nome,categoria,estoque,setor) Value ("Cenoura","Legumes",50,3);
insert into tb_produtos(nome,categoria,estoque,setor) Value ("Maça","Frutas",10,3);
insert into tb_produtos(nome,categoria,estoque,setor) Value ("Laranja","Frutas",1040,2);
insert into tb_produtos(nome,categoria,estoque,setor) Value ("Beterraba","Legumes",500,5);
insert into tb_produtos(nome,categoria,estoque,setor) Value ("Toranja","Frutas",10,1);
insert into tb_produtos(nome,categoria,estoque,setor) Value ("Banana","Frutas",1,1);
insert into tb_produtos(nome,categoria,estoque,setor) Value ("Batata doce","Outros",0,4);

select * from tb_produtos;

select * from tb_produtos where categoria = "Frutas";
select * from tb_produtos where categoria = "Legumes";

update tb_produtos set nome = "Tomate Gaúcho" where id = 2;


set sql_safe_updates = 0;

delete from tb_produtos where categoria = "Verduras";