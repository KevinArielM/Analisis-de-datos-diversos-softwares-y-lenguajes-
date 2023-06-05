USE sakila;
SHOW TABLES;
DESCRIBE film;
DESCRIBE address;
DESCRIBE actor;
#SELECT* FROM film;
#SELECT title, rating, description, release_year FROM film; 
SELECT * FROM actor;
SELECT first_name, last_name from actor;

select * from film;


select title, description from film;

select title from film
where title like 'A%';

select description, release_year from film;
SELECT DISTINCT rating FROM film
order by rating;
SELECT title, length, rating FROM film
where rating = "R" or length < 45;

SELECT title, length, rating from film
where rating = "R" and length < 55;

#más, usando funciones de agregado

select title, rating, length from film;

select title, rating, max(length) from film;

select title, rating from film where length = 185;
select title, rating from film where length= 46;

select count(*) from film where rating = "NC-17";
select count(*) from film where length = 185 ;
select first_name, last_name from actor
where first_name like 'P%';
select * from actor;

#aqui iniciamos
select first_name, last_name from actor
order by first_name;

select actor_id, first_name, last_name from actor
order by last_name;
select actor_id, first_name, last_name from actor
order by actor_id;

select * from city;
select city from city;


select city from city 
where city like "A%";

select * from sales_by_film_category;

select category, total_sales from sales_by_film_category;

select max(total_sales) "Máximo", min(total_sales) "Mínimo de", avg(total_sales) 'más o menos cuánto' from sales_by_film_category;

select city from city
where city = "Zapopan";
 
 select count(city) from city
 where city = "Zapopan";
 
 select count(city) "cuántas ciudades hay" from city;
 
 #create table t(nu int,  price int);
 
 CREATE VIEW v_today (today) AS SELECT CURRENT_DATE;

select count(city) from city;

select * from actor;

select count(actor_id) from actor;

select first_name from actor
where first_name like "B%";
 
 select count(first_name) from actor
 where first_name like "B%";
 
 show tables;
 
 select* from payment;
 
 select count(amount) from payment;
 
 select count(amount) from payment
 where amount > 1;
 
 select count(amount) from payment
 where amount < 1;
 
 select count(amount) from payment 
 where amount < 1 or amount > 1;
 
 select avg(amount) "En promedio", max(amount) "Máximo valor de renta" , min(amount) "Mínimo valor de renta" 
 from payment;
 
 select sum(amount) "Cuánto es" from payment;
 
 
 select amount from payment;
 
 select count(amount) from payment;
 
 select sum(amount) "Esto es el total", AVG(amount) "En promedio", MAX(amount) "Tope", MIN(amount) "mínimo"
 from payment;
 
 select distinct amount from payment; 
 
 select count(distinct amount) from payment;
 select count(amount) "Total de registros", count(distinct amount) from payment;
 
 
 select * from payment;
 
 select count(amount) from payment;
 
 select amount 
 from payment
 order by amount desc;
 
 select * from city;
 
 select city_id "este es el id", city "la ciudad" from city
 order by city_id desc, city desc;
 
 select city from city
 where city like "Za%";

select count(city) 
from city where city like "Za%";

 
 select count(city) from city;
 
 select max(country_id)
 from city;
 
 select country_id, city, count(*)
 from city
 group by country_id;
 
 select count(city), country_id
 from city where city="London";
 
 select count(country_id) from city
 where country_id = 2;
 
 select * from city 
 where country_id=2;
 
 select* from payment;
 
 select amount from payment;

select count(amount) "cuántos montos hay" from payment;
select count(customer_id) "cuántos customer hay" from payment;
select customer_id, amount from payment
order by amount asc;

select customer_id, count(customer_id), amount from payment
group by customer_id; 
 
select amount,customer_id from payment 
order by amount desc limit 13;
  
  
 select * from country;
 
 select country from country order by country desc;
 
 select count(country) from country;
 
select distinct country from country;

select count(distinct country) from country;

select country, count(country) from country group by country; 

select country from country group by country having count(country)>0 ;

select * from country;

select country_id as pais, country 
from country order by 2 asc;

select country_id "pais", country 
from country order by 2 asc;