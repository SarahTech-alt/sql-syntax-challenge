CREATE TABLE accounts (
    "id" serial PRIMARY KEY,
    "username" varchar(12) NOT NULL,
    "city" varchar(128),
    "transactions_completed" integer,
    "transactions_attempted" integer,
    "account_balance" numeric(12,2)
);

INSERT INTO accounts (username, city, transactions_completed, transactions_attempted, account_balance)
VALUES ('Shawn', 'Chicago', 5, 10, 355.80),
('Cherise', 'Minneapolis', 9, 9, 4000.00),
('Larry', 'Minneapolis', 3, 4, 77.01),
('Dorothy', 'New York', 6, 12, 0.99),
('Anthony', 'Chicago', 0, 0, 0.00),
('Travis', 'Miami', 10, 100, 500000.34),
('Davey', 'Chicago', 9, 99, 98.04),
('Ora', 'Phoenix', 88, 90, 3.33),
('Grace', 'Miami', 7, 9100, 34.78),
('Hope', 'Phoenix', 4, 10, 50.17);

SELECT * FROM "accounts";

SELECT * FROM "accounts" WHERE "city" = 'Chicago';

SELECT * FROM "accounts" WHERE "username" LIKE '%a%';

/* 
Testing case sensitivity methods

SELECT * FROM "accounts" WHERE ("username" LIKE '%a%' OR "username" LIKE '%A%');

SELECT LOWER(username) AS LowercaseUsername
FROM "accounts" WHERE "LowercaseUsername" LIKE '%a%';

*/

SELECT * FROM "accounts" WHERE "transactions_attempted" > 9;

SELECT ("username", "account_balance") FROM "accounts" ORDER BY "account_balance" DESC LIMIT 3;

SELECT ("username", "account_balance") FROM "accounts" ORDER BY "account_balance" ASC LIMIT 3;

SELECT * FROM "accounts" WHERE "account_balance" > 100;

INSERT INTO accounts (username, city, transactions_completed, transactions_attempted, account_balance) VALUES ('Bob', 'Chicago', 6, 10, 1);

DELETE FROM "accounts" WHERE "username" = 'Bob';

DELETE FROM "accounts" WHERE (("city" = 'Miami' OR "city" = 'Phoenix') AND "transactions_completed" < 5);


UPDATE "accounts" SET "city" = 'Santa Fe' WHERE "username" = 'Anthony';

DELETE FROM "accounts" WHERE "username" = 'Grace';

