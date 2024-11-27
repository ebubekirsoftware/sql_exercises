-- Exercise 1: Basic Queries
--SELECT title, description FROM film;
--SELECT * FROM film WHERE length > 60 AND length < 75;,
--SELECT * FROM film WHERE rental_rate = 0.99 AND (replacement_cost = 12.99 OR replacement_cost = 28.99);
--SELECT last_name FROM customer WHERE first_name = 'Mary';
--SELECT * FROM film WHERE NOT length > 50 AND NOT (rental_rate = 2.99 AND rental_rate = 4.99)

-- Exercise 2: BETWEEN, IN
--SELECT * FROM film WHERE replacement_cost BETWEEN 12.99 AND 16.99;
--SELECT first_name, last_name FROM actor WHERE first_name IN ('Penelope', 'Nick', 'Ed')
--SELECT * FROM film WHERE rental_rate IN (0.99, 2.99, 4.99) AND replacement_cost IN (12.99, 15.99, 28.99)

-- Exercise 3: LIKE, ILIKE
--SELECT country FROM country WHERE country LIKE 'A%a';
--SELECT country FROM country WHERE LENGTH(country) >= 6 AND country LIKE '%n';
--SELECT title FROM film WHERE title ~* '(.*T.*){4,}';
--SELECT * FROM film WHERE title LIKE 'C%' AND length > 90 AND rental_rate = 2.99;

-- Exercise 4: DISTINCT, COUNT
--SELECT DISTINCT replacement_cost FROM film;
--SELECT COUNT (DISTINCT replacement_cost) FROM film;
--COUNT(*) AS Toplam_film_sayisi FROM film WHERE title LIKE 'T%' AND rating = 'G';
--SELECT COUNT(*) AS toplam_ulke FROM country WHERE LENGTH(country) = 5;
--SELECT COUNT(*) AS toplam_sehir FROM city WHERE city LIKE '%r' OR city LIKE '%R';

-- Exercise 5: ORDER BY, LIMIT, OFFSET
--SELECT * FROM film WHERE title LIKE '%n' ORDER BY length DESC LIMIT 5;
--SELECT * FROM film WHERE title LIKE '%n' ORDER BY length ASC LIMIT 5 OFFSET 5;
--SELECT * FROM customer WHERE store_id = 1 ORDER BY last_name DESC LIMIT 4;

-- Exercise 6: Aggregate Functions
--SELECT AVG(rental_rate) AS rental_rate_ort FROM film;
--SELECT COUNT(*) AS c_sayısı FROM film WHERE title LIKE 'C%';
--SELECT MAX(length) AS en_uzun_film FROM film WHERE rental_rate = 0.99;
--SELECT COUNT(DISTINCT replacement_cost) AS farkli_replacement_cost FROM film WHERE length > 150;

-- Exercise 7: GROUP BY, HAVING, and ALIAS
--SELECT rating, COUNT(*) FROM film GROUP BY rating;
--SELECT replacement_cost, COUNT(*) AS film_sayisi FROM film GROUP BY replacement_cost HAVING COUNT(*) > 50
--SELECT store_id, COUNT(*) AS musteri_sayisi FROM customer GROUP BY store_id;
--SELECT country_id, COUNT(*) AS sehir_sayisi FROM city GROUP BY country_id ORDER BY sehir_sayisi DESC LIMIT 1;

-- Exercise 8: INNER JOIN
--SELECT city.city AS sehir, country.country AS ulke FROM city INNER JOIN country ON city.country_id = country.country_id;
--SELECT payment.payment_id, customer.first_name, customer.last_name FROM customer INNER JOIN payment ON customer.customer_id = payment.customer_id;
--SELECT rental.rental_id, customer.first_name, customer.last_name FROM customer INNER JOIN rental ON customer.customer_id = rental.customer_id;

-- Exercise 9: LEFT, RIGHT, and FULL JOIN
--SELECT city.city AS sehir, country.country AS ulke FROM city LEFT JOIN country ON city.country_id = country.country_id;
--SELECT payment.payment_id, customer.first_name, customer.last_name FROM customer RIGHT JOIN payment ON customer.customer_id = payment.customer_id;
--SELECT rental.rental_id, customer.first_name, customer.last_name FROM customer FULL JOIN rental ON customer.customer_id = rental.customer_id;

-- Exercise 10: UNION, INTERSECT, and EXCEPT
--SELECT first_name FROM actor UNION SELECT first_name FROM customer;
--SELECT first_name FROM actor INTERSECT SELECT first_name FROM customer;
--SELECT first_name FROM actor EXCEPT SELECT first_name FROM customer;

-- Exercise 11: Subqueries, ANY, and ALL
--SELECT COUNT(*) FROM film WHERE length > (SELECT AVG(length) FROM film);
--SELECT COUNT(*) FROM film WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);
--SELECT * FROM film WHERE rental_rate = (SELECT MIN(rental_rate) FROM film) AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);
--SELECT customer_id, COUNT(*) AS toplam_alısveris FROM paymentGROUP BY customer_id ORDER BY toplam_alısveris DESC LIMIT 1;
