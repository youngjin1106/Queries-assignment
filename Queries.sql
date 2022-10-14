# 6. What query would you run to list the first and last names of the 5 customers who have the highest number(count) of payments? 
#You can title the number of payments as num_payments.
USE sakila;
SELECT customer.first_name,customer.last_name, Count(customer.customer_id)
FROM customer