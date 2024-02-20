

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

create table if not exists customers (
id int primary key auto_increment,
`name` varchar(50) not null,
birthday date,
phone_number varchar(10) not null,
email varchar(50),
address varchar(200) not null,
id_account int ,
foreign key (id_account) references accounts(id)
);


create table if not exists type_product(
id int primary key auto_increment,
`name` varchar(255)
);

create table if not exists trademark(
id int primary key auto_increment,
`name` varchar(255)
);

create table if not exists products (
id int primary key auto_increment,
`code` varchar(255) unique,
`name` varchar(255),
quantity int ,
main_image varchar(255),
start_price double,
promotional_price double,
color varchar(255),
date_of_manufacture datetime,
`describe` varchar(255),
id_type_product int,
id_trademark int,
foreign key (id_type_product) references type_product(id),
foreign key (id_trademark) references trademark(id)
);

create table if not exists secondary_image(
id int primary key auto_increment,
image_one varchar(255),
image_tow varchar(255),
image_three varchar(255),
id_product int,
foreign key (id_product) references products(id)
);

create table if not exists `orders`(
id int primary key auto_increment ,
`code` varchar(255),
`data` datetime,
id_customer int,
foreign key (id_customer) references customers(id)
);

create table if not exists order_details(
id int primary key auto_increment,
total_amount double,
price double,
id_product int,
id_order int,
foreign key (id_product) references products(id),
foreign key (id_order) references orders(id)
);

create table if not exists cart(
id int primary key auto_increment,
is_delete int,
id_customer int ,
id_product int,
amount int,
foreign key (id_customer) references customers(id),
foreign key (id_product) references products(id)
);





