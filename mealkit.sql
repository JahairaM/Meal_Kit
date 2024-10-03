CREATE TABLE customers (
    user_id SERIAL PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    subscription_level VARCHAR(50),
    subscription_start_date DATE,
    subscription_end_date DATE,
    state VARCHAR(100)
);

INSERT INTO customers (full_name, email, subscription_level, subscription_start_date, subscription_end_date, state) VALUES
('Aisha Khan', 'aisha.khan@yahoo.com', 'Premium', '2024-01-01', '2024-12-31', 'NY'),
('Carlos Ramirez', 'carlos.ramirez@yahoo.com', 'Standard', '2024-01-10', '2024-12-31', 'CA'),
('Liam Brown', 'liam.brown@gmail.com', 'Premium', '2024-03-01', NULL, 'WA'),
('Sophia Chen', 'sophia.chen@umich.edu', 'Standard', '2024-02-15', NULL, 'WA'),
('Chad Murphy', 'chad.murphy@gmail.com', 'Premium', '2024-04-01', NULL, 'IL'),
('Siobhan Byrne', 'siobhan.byrne@gmail.com', 'Standard', '2024-04-01', NULL, 'MA'),
('Ashley Zahra', 'ashley.zahra@gmail.com', 'Premium', '2024-05-01', '2024-12-31', 'AZ'),
('Chris Miller', 'chris.miller@yahoo.com', 'Standard', '2024-06-01', NULL, 'WA'),
('Ravi Singh', 'ravi.singh@gmail.com', 'Premium', '2024-05-01', NULL, 'NY'),
('Emma Johnson', 'emma.johnson@gmail.com', 'Standard', '2024-06-01', NULL, 'IL'),
('Hiroshi Nakamura', 'hiroshi.nakamura@gmail.com', 'Premium', '2024-07-01', NULL, 'WA'),
('Isabella Rossi', 'isabella.rossi@gmail.com', 'Standard', '2024-01-01', '2024-05-01', 'CA'),
('Sean Connor', 'sean.connor@gmail.com', 'Premium', '2024-01-01', '2024-12-31', 'WA'),
('Brittney Kelly', 'brittney.kelly@gmail.com', 'Standard', '2024-01-15', NULL, 'IL'),
('Patrick Murphy', 'patrick.murphy@gmail.com', 'Premium', '2024-02-01', NULL, 'AZ'),
('Fiona Walsh', 'fiona.walsh@gmail.com', 'Standard', '2024-03-01', NULL, 'MA'),
('Anna Schmidt', 'anna.schmidt@gmail.com', 'Premium', '2024-04-01', '2024-12-31', 'IL'),
('Max Weber', 'max.weber@gmail.com', 'Standard', '2024-05-01', NULL, 'WA'),
('Greta Fischer', 'greta.fischer@gmail.com', 'Premium', '2024-06-01', '2025-05-31', 'WA'),
('Ahmed Al-Farsi', 'ahmed.alfarsi@gmail.com', 'Premium', '2024-07-01', '2024-12-31', 'AZ'),
('Maya Patel', 'maya.patel@gmail.com', 'Standard', '2024-01-20', NULL, 'CA'),
('Jacob Lee', 'jacob.lee@gmail.com', 'Premium', '2024-02-01', '2024-12-31', 'NY'),
('Olivia Nguyen', 'olivia.nguyen@msu.edu', 'Standard', '2024-03-01', NULL, 'WA'),
('James Davis', 'james.davis@yahoo.com', 'Premium', '2024-03-15', NULL, 'TX'),
('Emma Collins', 'emma.collins@gmail.com', 'Standard', '2024-04-01', NULL, 'CA'),
('Benjamin Clark', 'benjamin.clark@gmail.com', 'Premium', '2024-04-10', '2024-12-31', 'WA'),
('Sophia Gonzalez', 'sophia.gonzalez@gmail.com', 'Standard', '2024-05-01', NULL, 'NY'),
('Ethan Moore', 'ethan.moore@wmu.edu', 'Premium', '2024-05-15', NULL, 'IL'),
('Isabella Kim', 'isabella.kim@gmail.com', 'Standard', '2024-06-01', NULL, 'TX'),
('Lucas Brown', 'lucas.brown@gmail.com', 'Premium', '2024-06-15', NULL, 'NY'),
('Zoe Martinez', 'zoe.martinez@gmail.com', 'Standard', '2024-07-01', NULL, 'AZ'),
('Oliver White', 'oliver.white@gmail.com', 'Premium', '2024-07-15', NULL, 'WA'),
('Lily Adams', 'lily.adams@gmail.com', 'Standard', '2024-08-01', NULL, 'NY'),
('Mason Turner', 'mason.turner@yahoo.com', 'Premium', '2024-08-15', NULL, 'IL'),
('Ava Robinson', 'ava.robinson@gmail.com', 'Standard', '2024-09-01', '2025-09-01', 'TX'),
('Jackson Lewis', 'jackson.lewis@yahoo.com', 'Premium', '2024-09-15', '2024-12-31', 'NY'),
('Mia Johnson', 'mia.johnson@gmail.com', 'Standard', '2024-10-01', NULL, 'WA'),
('Henry Walker', 'henry.walker@gmail.com', 'Premium', '2024-10-15', NULL, 'AZ'),
('Charlotte Hall', 'charlotte.hall@gmail.com', 'Standard', '2024-11-01', NULL, 'NY'),
('Daniel Young', 'daniel.young@yahoo.com', 'Premium', '2024-11-15', NULL, 'IL');


SELECT * FROM customers;

SELECT * FROM customers WHERE subscription_level = 'Premium';

SELECT DISTINCT state FROM customers ORDER BY state;

SELECT COUNT(*) FROM customers WHERE state = 'NY';

SELECT full_name, email FROM customers WHERE subscription_end_date IS NULL;

CREATE INDEX idx_state ON customers(state);

INSERT INTO customers (full_name, email, subscription_level, subscription_start_date, subscription_end_date, state) 
VALUES ('John Doe', 'john.doe@example.com', 'Standard', '2024-10-01', NULL, 'TX');

UPDATE customers SET subscription_level = 'Premium' WHERE full_name = 'Emma Collins';

SELECT COUNT(*) FROM customers WHERE email LIKE '%.edu';

DELETE FROM customers WHERE subscription_end_date < '2024-08-01';

SELECT full_name, email FROM customers WHERE subscription_level = 'Premium' AND state = 'NY' ORDER BY full_name ASC;

CREATE TABLE meals (
    meal_id SERIAL PRIMARY KEY,
    meal_name VARCHAR(255) NOT NULL,
    calories INT,
    price DECIMAL(10, 2),
    is_vegetarian BOOLEAN,
    subscription_level VARCHAR(50)
);

INSERT INTO meals (meal_name, calories, price, is_vegetarian, subscription_level) VALUES 
('Truffle Risotto', 700, 25.00, FALSE, 'Premium'),
('Vegetable Quiche', 500, 11.00, TRUE, 'Standard'),
('Greek Salad', 500, 9.00, TRUE, 'Standard');

SELECT meal_name FROM meals WHERE is_vegetarian = TRUE LIMIT 5;

SELECT * FROM meals ORDER BY calories DESC, price ASC;

SELECT AVG(price) AS average_price, MAX(price) AS max_price, MIN(price) AS min_price FROM meals;

SELECT * FROM meals WHERE price BETWEEN 10.00 AND 20.00;

ALTER TABLE meals ADD COLUMN star_rating INT;

CREATE TABLE oops (
    id SERIAL PRIMARY KEY,
    foo INT
);

DROP TABLE oops;

SELECT subscription_level, COUNT(*) AS meal_count FROM meals GROUP BY subscription_level;

SELECT subscription_level, AVG(price) AS average_price FROM meals GROUP BY subscription_level;

SELECT is_vegetarian, AVG(calories) AS average_calories FROM meals GROUP BY is_vegetarian;

SELECT subscription_level, MIN(price) AS cheapest_price FROM meals GROUP BY subscription_level;

SELECT state, COUNT(*) AS customer_count FROM customers GROUP BY state ORDER BY state;

SELECT state, COUNT(*) AS customer_count FROM customers GROUP BY state HAVING COUNT(*) >= 5 ORDER BY customer_count DESC;







