USE sakila;

#1. How many copies of the film Hunchback Impossible exist in the inventory system?

SELECT (COUNT) film_id FROM inventory 
WHERE film_id in (SELECT film_id, title 
FROM film 
WHERE title = 'Hunchback Impossible'
)

#2. List all films whose length is longer than the average of all the films.

SELECT (COUNT) length FROM film
( 
SELECT length 
FROM film
WHERE length > length (AVG) 
)

#3. Use subqueries to display all actors who appear in the film Alone Trip.

SELECT * FROM actor
(
SELECT film_id, title 
FROM film
WHERE title = 'Alone Trip'
)

#4. Sales have been lagging among young families, and you wish to target all family movies for a promotion. Identify all movies categorized as family films.

SELECT category_id, FROM category
(
SELECT 
WHERE name = 'Family movie'
FROM film_category 
)

#5. Get name and email from customers from Canada using subqueries. Do the same with joins. Note that to create a join, you will have to identify the correct tables with their primary keys and foreign keys, that will help you get the relevant information. 

SELECT first_name, email FROM customer
(SELECT 
WHERE country = 'Canada'
FROM country
)

#5.2. Do the same with joins.

SELECT customer.first_name, customer.last_name, customer.email 
FROM customer
INNER JOIN country ON country.countryid=customer.customer_id;

#6. Which are films starred by the most prolific actor? Most prolific actor is defined as the actor that has acted in the most number of films. First you will have to find the most prolific actor and then use that actor_id to find the different films that he/she starred.

SELECT actor_id MAX(actor_id)
FROM (SELECT film_id, actor_id, COUNT(actor_id)  AS film_id_count
FROM film_actor
GROUP BY film_id
ORDER BY film_id_count DESC)





