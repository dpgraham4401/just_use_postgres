CREATE TABLE products.reviews (
	id BIGSERIAL PRIMARY KEY,
	product_id INT,
	customer_id INT,
	review TEXT,
	rank SMALLINT
);

-- if we are unsure about adding constraints, we can always
-- add them later using ALTER TABLE statements 
