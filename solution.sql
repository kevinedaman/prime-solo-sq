CREATE TABLE syntax_practice (
    user_id serial PRIMARY KEY,
    username character varying(12),
    city character varying(128),
    transactions_completed integer,
    transactions_attempted integer,
    account_balance numeric(12,2)
);

INSERT INTO syntax_practice (username, city, transactions_completed, transactions_attempted, account_balance) VALUES ('shawn', 'chicago', 5, 10, 355.80),
('cherise', 'minneapolis', 9, 9, 4000.00),
('larry', 'minneapolis', 3, 4, 77.01),
('dallas', 'new york', 6, 12, 0.99),
('anthony', 'chicago', 0, 0, 0.00),
('travis', 'miami', 1, 100, 500000.34),
('davey', 'chicago', 9, 99, 98.04),
('ora', 'phoenix', 88, 90, 3.33),
('grace', 'miami', 7, 9100, 34.78),
('hope', 'phoenix', 4, 10, 50.17);

-- 1. Get all users from Chicago.
SELECT "username" FROM "syntax_practice" WHERE "city" = 'chicago';

-- 2. Get all users with usernames that contain the letter a

SELECT "username" FROM "syntax_practice" WHERE "username" LIKE '%a%';

-- 3. Update all records with an account ballance of 0.00 and a transactions_attempted of 0 to a new ballance of 10.00

SELECT * FROM "syntax_practice" WHERE "transactions_attempted" = 0 AND "account_balance" = 0;
UPDATE "syntax_practice" SET "account_balance" = '10.00' WHERE "transactions_attempted" = 0 AND "account_balance" = 0;

-- 4. Select all users that have attempted 9 or more transactions.

SELECT "username" FROM "syntax_practice" WHERE "transactions_attempted" > 9;

-- 5. Get the username and account balance of the 3 users with the highest balances, sort highest to lowest balance

SELECT "username", "account_balance" FROM "syntax_practice" ORDER BY "account_balance" DESC LIMIT 3;

-- 6. Get the username and account balance of the 3 users with the lowest balances, sort lowest to highest balance.

SELECT "username", "account_balance" FROM "syntax_practice" ORDER BY "account_balance" ASC LIMIT 3;

-- 7. Get all users with account balances that are more than $100

SELECT "username" FROM "syntax_practice" WHERE "account_balance" > 100.00;

-- 8. Add a new record

INSERT INTO syntax_practice (username, city, transactions_completed, transactions_attempted, account_balance) VALUES ('kevin', 'minneapolis', 500, 123, 1000000.00);

-- 9. Delete users that reside in miami OR phoenix and have completed fewer than 5 transactions

SELECT "username" FROM "syntax_practice" where "city" = 'miami' AND "transactions_completed" < 5 OR "city" = 'phoenix' AND "transactions_completed" < 5;
DELETE FROM "syntax_practice" where "city" = 'miami' AND "transactions_completed" < 5 OR "city" = 'phoenix' AND "transactions_completed" < 5;