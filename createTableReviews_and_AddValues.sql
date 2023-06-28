CREATE TABLE reviews (
review_id SERIAL PRIMARY KEY,
customer_id INT,
film_id INT,
review_text TEXT);

INSERT INTO reviews (customer_id, film_id, review_text)
VALUES (1,3,'awesome!')

INSERT INTO reviews (customer_id, film_id, review_text)
VALUES (5,5,'"Testing"')

INSERT INTO reviews (customer_id, film_id, review_text)
VALUES (9,7,'''tesing''');

INSERT INTO reviews (customer_id, film_id, review_text)
VALUES (9,7,'''"123tesing"''');

SELECT * FROM reviews