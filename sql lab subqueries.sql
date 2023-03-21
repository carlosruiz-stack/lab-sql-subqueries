USE sakila;

SELECT (COUNT) film_id FROM inventory 
WHERE film_id in (SELECT film_id, title 
FROM film 
WHERE title = 'Hunchback Impossible'
)

SELECT (COUNT) length FROM film
( 
SELECT length 
FROM film
WHERE length > length (AVG) 
)

SELECT * FROM actor
(
SELECT film_id, title 
FROM film
WHERE title = 'Alone Trip'
)

SELECT category_id, FROM category
(
SELECT 
WHERE name = 'Family movie'
FROM film_category 
)



