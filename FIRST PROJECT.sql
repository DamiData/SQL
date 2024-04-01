CREATE DATABASE IF NOT EXISTS sales;

use sales;

# sales table

CREATE TABLE sales (
    purchase_number INT NOT NULL AUTO_INCREMENT,
    date_of_purchase DATE NOT NULL,
    customer_id INT,
    item_code VARCHAR(10) NOT NULL,
    PRIMARY KEY (purchase_number)
);


/*

adding foreign key to the customer_id

*/


ALTER TABLE sales
ADD FOREIGN KEY(customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE;

#remove foreign key
ALTER TABLE sales
DROP FOREIGN KEY `sales_ibfk_1`;


# customers table


CREATE TABLE IF NOT EXISTS customers (
    customer_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email_address VARCHAR(255),
    PRIMARY KEY (customer_id)
);



ALTER TABLE customers
ADD UNIQUE KEY(email_address);


# remove unique key
ALTER TABLE customers 
DROP INDEX email_address;

# to add new column to a table

ALTER TABLE customers
ADD COLUMN gender ENUM ('F','M');


ALTER TABLE customers
ADD COLUMN Number_of_column CHAR(3) DEFAULT(0);

# TO RENAME A COLUMN


ALTER TABLE customers
RENAME COLUMN Number_of_column TO complaint;

ALTER TABLE customers
RENAME COLUMN complaint TO number_of_complaint;

#to rename a table

ALTER TABLE customers
RENAME TO paid;


ALTER TABLE paid
RENAME TO customers;

# change data type

ALTER TABLE customers 
MODIFY number_of_complaint ENUM('0','1','2','3');

# to remove default
ALTER TABLE customers
ALTER COLUMN number_of_complaint DROP DEFAULT;

