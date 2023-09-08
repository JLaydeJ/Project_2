
-- Create tables and Import CSV files

-- Create category table
 CREATE TABLE category(
	category_id VARCHAR(4) NOT NULL,
	category_name VARCHAR(20),
	PRIMARY KEY(category_id)
);
-- Create contacts table
 CREATE TABLE contacts(
	contact_id INT NOT NULL,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	email VARCHAR(60),
	PRIMARY KEY(contact_id)
);

-- Create subcategory table
CREATE TABLE subcategory
(
	subcategory_id VARCHAR(8) NOT NULL,
	subcategory_name VARCHAR(30) ,
	PRIMARY KEY(subcategory_id)
);
 -- Create campaign table
 CREATE TABLE campaign(
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
	company_name VARCHAR(100),
	description VARCHAR(100),
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(100),
	backers_count INT NOT NULL,
	country VARCHAR(2) NOT NULL,
	currency VARCHAR(3),
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(4) NOT NULL,
	subcategory_id VARCHAR(8) NOT NULL,		
	PRIMARY KEY(cf_id)
	);

-- Add constraint to tables after create/import above data
ALTER TABLE campaign
ADD CONSTRAINT fk_category_campaign FOREIGN KEY(category_id) REFERENCES category (category_id),
ADD CONSTRAINT fk_contacts_campaign FOREIGN KEY(contact_id) REFERENCES contacts (contact_id),
ADD CONSTRAINT fk_subcategory_campaign FOREIGN KEY(subcategory_id) REFERENCES subcategory (subcategory_id);

SELECT * FROM category;
SELECT * FROM contacts;
SELECT * FROM subcategory;
SELECT * FROM campaign;