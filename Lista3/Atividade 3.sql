-- link do exercício https://docs.google.com/document/d/1LDTB44raxjTsiEJ6KXUkhDQlBiVY2BDv/edit

create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categorias(
	id bigint(5) auto_increment,
    categoria varchar(20),
    preco decimal(5,2),
	
    primary key (id)
);

create table tb_pizzas(
	id bigint (5) auto_increment,
    nome varchar(20),
    ing1 varchar(20),
    ing2 varchar(20),
    ing3 varchar(20),
    classe bigint not null,
    
    primary key (id),
    foreign key (classe) references tb_categorias(id)
);



insert into tb_categorias(categoria, preco) values ("Doce",80);
insert into tb_categorias(categoria, preco) values ("Standard",70);
insert into tb_categorias(categoria, preco) values ("Vegana",60);
insert into tb_categorias(categoria, preco) values ("Premium",95);
insert into tb_categorias(categoria, preco) values ("Barato do dia",40);

insert into tb_pizzas (nome,ing1,ing2,ing3,classe) values ("Calabresa",",Calabres","Queijo Mussarela","Requeijão",5);
insert into tb_pizzas (nome,ing1,ing2,ing3,classe) values ("Brócolis","Brócolis" ,"Queijo 3D","Alface",3);
insert into tb_pizzas (nome,ing1,ing2,ing3,classe) values ("Strogonoff do chefe","Strogonoff de Carne","Queijo Mussarela","Batata Falha",4);
insert into tb_pizzas (nome,ing1,ing2,ing3,classe) values ("Tutushi","Ovo de Galinha","Ovo de Codorna","Óleo de ontem",5);
insert into tb_pizzas (nome,ing1,ing2,ing3,classe) values ("Iscas de Monstro","Iscas de carne","Queijo Cheddar","Requeijão",2);
insert into tb_pizzas (nome,ing1,ing2,ing3,classe) values ("Pra Cirançada","Chocolate","Açucar","Adoçante",1);
insert into tb_pizzas (nome,ing1,ing2,ing3,classe) values ("Kitkat","Nescau","Queijo Mussarela","Kitkat",1);
insert into tb_pizzas (nome,ing1,ing2,ing3,classe) values ("Rocovô","Arroz","Queijo Mussarela","Ovo",5);


select * from tb_pizzas
inner join tb_categorias on tb_categorias.id = tb_pizzas.classe
where preco >45;

select * from tb_pizzas
inner join tb_categorias on tb_categorias.id = tb_pizzas.classe
where preco>50 and preco<100;

select * from tb_personagens where nome like "%M%";

select * from tb_pizzas
inner join tb_categorias on tb_categorias.id = tb_pizzas.classe;

select * from tb_pizzas
inner join tb_categorias on tb_categorias.id = tb_pizzas.classe
where tb_categorias.categoria = "Doce";

-- caso queira remover uma tabela: drop table tb_personagens;