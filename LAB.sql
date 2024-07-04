#Determine the number of copies of the film "Hunchback Impossible" that exist in the inventory system.
#List all films whose length is longer than the average length of all the films in the Sakila database.
#Use a subquery to display all actors who appear in the film "Alone Trip".

use sakila;

select count(*) from inventory where film_id in
(
select film_id from film_text where title =  "Hunchback Impossible"
);

select title from film 
where length>
(
select avg(length) from film
);

select * from film_actor fa
inner join actor a 
on fa.actor_id = a. actor_id
where film_id in
(
select film_id from film_text where title ="Alone Trip"
);