ALTER TABLE products.catalog ADD CONSTRAINT catalog_price_check CHECK (price >= 0);

-- Another example

ALTER TABLE products.review 
ADD CONSTRAINT products_review_customer_id_fk FOREIGN KEY (customer_id) 
REFERENCES customers.accounts(id);
