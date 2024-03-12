create schema spring_jdbc;
create table spring_jdbc.customers
(
    id           serial PRIMARY KEY,
    name         varchar(50),
    surname      varchar(70),
    age          int,
    phone_number varchar(10)
);
insert into spring_jdbc.customers (name, surname, age, phone_number)
values ('Ivan', 'Ivanov', 30, '9105782455'),
       ('alexey', 'Petrov', 25, '9105782525'),
       ('Ivan', 'Smirnov', 68, '9105786725'),
       ('Alexey', 'Ivanov', 41, '9105787525'),
       ('Oleg', 'Ivanov', 19, '9105782345');

create table spring_jdbc.order
(
    id           serial PRIMARY KEY,
    date         date,
    customer_id  int,
    product_name varchar(50),
    amount       int
);

insert into spring_jdbc.order (date, customer_id, product_name, amount)
values (CURRENT_DATE, 1, 'product1', 100),
       (CURRENT_DATE, 1, 'product2', 200),
       (CURRENT_DATE, 1, 'product3', 300),
       (CURRENT_DATE, 2, 'product4', 400),
       (CURRENT_DATE, 2, 'product5', 500),
       (CURRENT_DATE, 3, 'product6', 600),
       (CURRENT_DATE, 3, 'product7', 700),
       (CURRENT_DATE, 3, 'product8', 800),
       (CURRENT_DATE, 4, 'product9', 900),
       (CURRENT_DATE, 4, 'product10', 1000),
       (CURRENT_DATE, 5, 'product11', 1100);

