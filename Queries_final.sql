USE sakila;
# question 1. What query would you run to get all the customers inside city_id = 312? 
#Your query should return the customers' first name, last name, email, address, and city. 
SELECT customer.first_name AS first_name, customer.last_name AS last_name, customer.email, address.address
FROM customer 
JOIN address ON customer.address_id = address.address_id 
WHERE address.city_id = 312

# question 2 : What query would you run to get all comedy films? Note that the genre is called the category in this schema.  Your query should return film title, description, release year, rating, and special features.
SELECT film.title, film.description, film.release_year, film.rating, film.special_features
FROM film 
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id 
WHERE category.name = 'Comedy'

# question 3 : What query would you run to get all the films that Johnny Lollobrigida was in?
# Your query should return the actor's last name, film title, and release year. 
USE sakila;
SELECT actor.last_name, actor.first_name, film.title, film.release_year
FROM actor
JOIN film ON actor.actor_id = film.film_id
WHERE actor.first_name = 'JOHNNY' AND actor.last_name = 'Lollobrigida'

# 4. What query would you run to get the first and last names of all the actors in the movie titled "Bingo Talented"?
SELECT actor.last_name, actor.first_name, film.title
FROM actor
JOIN film ON actor.actor_id = film.film_id
WHERE film.title = 'Bingo Talented'

# 5. What query would you run to get the customer_id associated with all payments greater than twice the average payment amount? 
# (HINT: use 2* in your query to get twice the amount). Your result should include the customer id and the amount.
SELECT payment.customer_id, payment.amount
FROM payment
WHERE payment.amount > (SELECT AVG(payment.amount) * 2 )


# 6. What query would you run to list the first and last names of the 5 customers who have the highest number(count) of payments? 
#You can title the number of payments as num_payments.
USE sakila;
SELECT customer.first_name,customer.last_name, Count(customer.customer_id)
FROM customer


