-- create database
-- create (database | schema) database_name;
create database review;


-- delete database
-- drop (database | schema) database_name;
drop database review;


-- create table
-- create table (database_name.table_name | table_name) (
--   (column_name | field_name) data_type
-- )
create table review.book (
	title varchar(45) not null,
	price INT
);


-- comment in SQL
-- single line comment
/*
	multi line comment
*/

-- ------------------------------ ------------------------------ ------------------------------

-- create data or record
-- INSERT INTO table_name(column_name1, column_name2, ...) VALUES(value1, value2, ...);


insert into books ( title, price) values ( 'Echo', 28);
insert into books ( title, price) values ('Embers', 3);

-- insert multi record
insert into books ( title, price) values  ('Waves', 4), ('Siren', 23), ( 'Frost', 84),  ('Ripple', 25)




-- ------------------------------ ------------------------------ ------------------------------

-- read data or record
-- select (* or column_name) from table_name;
select * from books;
select title from books;

-- where or condition (and | or | between | > | < | in | not in)
-- select (* or column_name) from table_name where (condition or condition1, condition2);
select * from books where price > 20;
select * from books where title = 'Ripple';
select title from books where price > 34 and price <76;
select * from books where price between(30, 60);
select * from books where price in ('Waves', 'Siren', 'Waves');

-- ------------------------------ ------------------------------ ------------------------------