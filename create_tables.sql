create database food_service;
use food_service;


create table users(
	user_id int primary key auto_increment,
    user_name varchar(50) not null,
    user_last_name varchar(50) not null,
    user_national_number int unique not null
);

create table students(
	id int primary key,
	student_number int unique not null,
    student_major varchar(50) not null,
    constraint FK_users foreign key (id) references users (user_id) on delete cascade
);

create table professors(
	id int primary key,
    personal_id int unique not null,
    department varchar(50) not null,
    edu_level varchar(50) not null,
    constraint FK_users2 foreign key (id) references users (user_id) on delete cascade
);

create table food(
	food_id int primary key auto_increment,
    food_name varchar(50) not null,
    food_price decimal(4 , 2) not null,
    day_date date not null,
    week_day varchar(50) not null
);

create table order_food(
	id int primary key auto_increment,
    person_id int,
    food_id int,
    constraint FK_users3 foreign key (person_id) references users (user_id) on delete cascade,
    constraint FK_food foreign key (food_id) references food (food_id) on delete cascade
);