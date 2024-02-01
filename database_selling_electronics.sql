

create database Selling_electronics;
use Selling_electronics;


create table if not exists accounts(
id int auto_increment primary key,
email varchar(50) unique not null,
`password` varchar(50) not null
);

create table if not exists roles(
id int auto_increment primary key,
roles varchar(15) unique not null
);

create table if not exists role_account(
id int auto_increment primary key,
id_role int not null,
id_account int not null,
foreign key(id_role) references roles(id),
foreign key(id_account) references accounts(id)
);


create table if not exists employees(
id int primary key auto_increment,
`name` varchar(50) not null,
birthday date not null,
phone_number varchar(10) not null,
address varchar(200) not null,
gender bit(1) not null,
avatar longtext not null,
id_account int unique not null,
foreign key (id_account) references accounts(id)
);

create table if not exists customers(
id int primary key auto_increment,
`name` varchar(50) not null,
birthday date,
phone_number varchar(10) not null,
email varchar(50),
address varchar(200) not null,
id_account int ,
foreign key (id_account) references accounts(id)
);


