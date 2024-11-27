# PostgreSQL Query Exercises

This repository contains a comprehensive list of PostgreSQL query exercises covering a wide range of SQL topics, from basic data retrieval to advanced operations like joins, subqueries, and set operations. These exercises are ideal for SQL learners and professionals who want to enhance their database querying skills.

---

## **Table of Contents**
1. [Exercise 1: Basic Queries](#exercise-1-basic-queries)
2. [Exercise 2: BETWEEN and IN](#exercise-2-between-and-in)
3. [Exercise 3: LIKE and ILIKE](#exercise-3-like-and-ilike)
4. [Exercise 4: DISTINCT and COUNT](#exercise-4-distinct-and-count)
5. [Exercise 5: LIMIT and OFFSET](#exercise-5-limit-and-offset)
6. [Exercise 6: Aggregate Functions](#exercise-6-aggregate-functions)
7. [Exercise 7: GROUP BY, HAVING, and ALIAS](#exercise-7-group-by-having-and-alias)
8. [Exercise 8: INNER JOIN](#exercise-8-inner-join)
9. [Exercise 9: LEFT, RIGHT, and FULL JOIN](#exercise-9-left-right-and-full-join)
10. [Exercise 10: UNION, INTERSECT, and EXCEPT](#exercise-10-union-intersect-and-except)
11. [Exercise 11: Subqueries, ANY, and ALL](#exercise-11-subqueries-any-and-all)

---

## **Exercise 1: Basic Queries**
1. Retrieve the `title` and `description` columns from the `film` table and sort the results.
2. List all rows from the `film` table where the `length` is greater than 60 and less than 75.
3. Retrieve all rows from the `film` table where `rental_rate = 0.99` and `replacement_cost` is either 12.99 or 28.99.
4. Find the `last_name` of the customer whose `first_name` is 'Mary'.
5. Retrieve all rows from the `film` table where the `length` is not greater than 50 and `rental_rate` is not 2.99 or 4.99.

---

## **Exercise 2: BETWEEN and IN**
1. Retrieve all rows from the `film` table where `replacement_cost` is between 12.99 and 16.99.
2. Retrieve the `first_name` and `last_name` from the `actor` table where `first_name` is 'Penelope', 'Nick', or 'Ed'.
3. Retrieve all rows from the `film` table where `rental_rate` is in (0.99, 2.99, 4.99) and `replacement_cost` is in (12.99, 15.99, 28.99).

---

## **Exercise 3: LIKE and ILIKE**
1. Find all countries in the `country` table where `country` starts with 'A' and ends with 'a'.
2. Find all countries with names at least 6 characters long and ending in 'n'.
3. Retrieve film titles from the `film` table that contain at least 4 occurrences of the letter 'T', case insensitive.
4. List all rows from the `film` table where `title` starts with 'C', `length` is greater than 90, and `rental_rate` is 2.99.

---

## **Exercise 4: DISTINCT and COUNT**
1. Retrieve distinct values from the `replacement_cost` column in the `film` table.
2. Count the number of distinct values in the `replacement_cost` column in the `film` table.
3. Count how many film titles in the `film` table start with 'T' and have a `rating` of 'G'.
4. Count how many countries in the `country` table have names with exactly 5 characters.
5. Count how many cities in the `city` table end with 'R' or 'r'.

---

## **Exercise 5: LIMIT and OFFSET**
1. Retrieve the top 5 longest films where `title` ends with 'n'.
2. Retrieve the 6th to 10th shortest films where `title` ends with 'n'.
3. Retrieve the top 4 customers (by `last_name` in descending order) where `store_id = 1`.

---

## **Exercise 6: Aggregate Functions**
1. Calculate the average `rental_rate` in the `film` table.
2. Count how many films in the `film` table start with the letter 'C'.
3. Find the length of the longest film where `rental_rate` is 0.99.
4. Count the distinct `replacement_cost` values for films longer than 150 minutes.

---

## **Exercise 7: GROUP BY, HAVING, and ALIAS**
1. Group the films by `rating` and count the number of films in each group.
2. Group the films by `replacement_cost` and list groups with more than 50 films.
3. Count the number of customers for each `store_id` in the `customer` table.
4. Group cities by `country_id` and find the `country_id` with the most cities.

---

## **Exercise 8: INNER JOIN**
1. Perform an INNER JOIN between the `city` and `country` tables to list city and country names together.
2. Perform an INNER JOIN between the `customer` and `payment` tables to list `payment_id` and customer names.
3. Perform an INNER JOIN between the `customer` and `rental` tables to list `rental_id` and customer names.

---

## **Exercise 9: LEFT, RIGHT, and FULL JOIN**
1. Perform a LEFT JOIN between the `city` and `country` tables to list all cities and their corresponding countries.
2. Perform a RIGHT JOIN between the `customer` and `payment` tables to list all `payment_id`s and customer names.
3. Perform a FULL JOIN between the `customer` and `rental` tables to list all `rental_id`s and customer names.

---

## **Exercise 10: UNION, INTERSECT, and EXCEPT**
1. List all `first_name` values from the `actor` and `customer` tables.
2. List the intersection of `first_name` values from the `actor` and `customer` tables.
3. List all `first_name` values in `actor` that are not in `customer`.
4. Repeat the above three queries, including duplicate rows.

---

## **Exercise 11: Subqueries, ANY, and ALL**
1. Count how many films have a `length` greater than the average film length.
2. Count how many films have the highest `rental_rate`.
3. List films with the lowest `rental_rate` and `replacement_cost`.
4. Find the customers who made the most payments.

---

## **How to Use**
1. Clone this repository to your local machine.
2. Run the provided queries in a PostgreSQL environment.
3. Explore and modify the queries to deepen your understanding of PostgreSQL.

---

## **Contributing**
Feel free to submit issues or pull requests to improve the exercises or add more queries.

## **License**
This project is licensed under the MIT License.
