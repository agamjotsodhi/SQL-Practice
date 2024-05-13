

-- PM1. Insert a new product named "chair", priced at $44.00, and not returnable.

INSERT INTO products
  (name, price, can_be_returned)
VALUES
  ('chair', 44.00, 'f');

-- PM2. Insert a new product named "stool", priced at $25.99, and returnable.

INSERT INTO products
  (name, price, can_be_returned)
VALUES
  ('stool', 25.99, 't');

-- PM3. Insert a new product named "table", priced at $124.00, and not returnable.

INSERT INTO products
  (name, price, can_be_returned)
VALUES
  ('table', 124.00, 'f');

-- PM4. Retrieve all records from the products table.

SELECT * FROM products;

-- PM5. Retrieve only the names of the products.

SELECT name FROM products;

-- PM6. Retrieve the names and prices of the products.

SELECT name, price FROM products;

-- PM7. Add a new product named "hammock", priced at $99.00, and returnable.

INSERT INTO products
  (name, price, can_be_returned)
VALUES
  ('hammock', 99.00, 't');

-- PM8. Retrieve only the products that can be returned.

SELECT * FROM products WHERE can_be_returned;

-- PM9. Retrieve only the products priced less than $44.00.

SELECT * FROM products WHERE price < 44.00;

-- PM10. Retrieve only the products priced between $22.50 and $99.99.

SELECT * FROM products WHERE price BETWEEN 22.50 AND 99.99;

-- PM11. Apply a $20 discount to all products due to a sale.

UPDATE products SET price = price - 20;

-- PM12. Remove products priced less than $25 due to sell-out.

DELETE FROM products WHERE price < 25;

-- PM13. Restore original prices by increasing each product's price by $20.

UPDATE products SET price = price + 20;

-- PM14. Update company policy to make all products returnable.

UPDATE products SET can_be_returned = 't';