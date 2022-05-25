-- link do exercício https://docs.google.com/document/d/1LDTB44raxjTsiEJ6KXUkhDQlBiVY2BDv/edit

create database db_generation_game_online;
use db_generation_game_online;


create table tb_personagens(
	id bigint (5) auto_increment,
    nome varchar(20),
    atk decimal,
    def decimal,
    classe bigint not null,
    
    primary key (id),
    foreign key (classe) references tb_classes (id)
);

create table tb_classes(
	id bigint(5) auto_increment,
    classificacao varchar(20),
    ultimate varchar(20),
	
    primary key (id)
);

insert into tb_classes(classificacao, ultimate) values ("Suiton","Toma um banho ae");
insert into tb_classes(classificacao, ultimate) values ("Katon","Bola de fogo");
insert into tb_classes(classificacao, ultimate) values ("Fuuton","Ventiladorzão");
insert into tb_classes(classificacao, ultimate) values ("Raiton","Vai Pikachu");
insert into tb_classes(classificacao, ultimate) values ("Doton","Duro como pedra");

insert into tb_personagens(nome,atk,def,classe) values ("Naruto",200.00,200.00,3);
insert into tb_personagens(nome,atk,def,classe) values ("Kakashi",2050.00,100.00,4);
insert into tb_personagens(nome,atk,def,classe) values ("Yamato",10000.00,5000.00,5);
insert into tb_personagens(nome,atk,def,classe) values ("Yondaime",50.00,1000.00,3);
insert into tb_personagens(nome,atk,def,classe) values ("Tobirama ",1500.00,3500.00,1);
insert into tb_personagens(nome,atk,def,classe) values ("Sasuke",20.00,20000.00,2);
insert into tb_personagens(nome,atk,def,classe) values ("Konohamaru",20.00,300.00,3);
insert into tb_personagens(nome,atk,def,classe) values ("Jiraya",5000.00,200.00,2);



select * from tb_personagens where atk >2000;
select * from tb_personagens where def <2000 and def > 1000;
select * from tb_personagens where nome like "%c%";

select * from tb_personagens 
inner join tb_classes on tb_classes.id = tb_personagens.classe;

select * from tb_personagens 
inner join tb_classes on tb_classes.id = tb_personagens.classe
where tb_classes.classificacao = "Doton";

-- caso queira remover uma tabela: drop table tb_personagens;