 CREATE TABLE category(
	category_id VARCHAR(4) NOT NULL,
	category_name VARCHAR(20),
	PRIMARY KEY(category_id)
);
 
 CREATE TABLE contacts(
	contact_id INT NOT NULL,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	email VARCHAR(60),
	PRIMARY KEY(contact_id)
);

CREATE TABLE subcategory
(
	subcategory_id VARCHAR(8) NOT NULL,
	subcategory_name VARCHAR(30),
	PRIMARY KEY(subcategory_id)
);
 
 CREATE TABLE campaign(
	cf_id INT NOT NULL,
	contact_id INT,
	company_name VARCHAR(100),
	description VARCHAR(100),
	goal NUMERIC,
	pledge NUMERIC,
	outcome VARCHAR(100),
	backers_count INT,
	country VARCHAR(2) NOT NULL,
	currency VARCHAR(3),
	launched_date DATE,
	end_date DATE,
	category_id VARCHAR(4) NOT NULL,
	subcategory_id VARCHAR(8) NOT NULL,		
	PRIMARY KEY(cf_id)
	);
ALTER TABLE campaign
ADD CONSTRAINT fk_category_campaign FOREIGN KEY(category_id) REFERENCES category (category_id),
ADD CONSTRAINT fk_subcategory_campaign FOREIGN KEY(subcategory_id) REFERENCES subcategory (subcategory_id),
ADD CONSTRAINT fk_contacts_campaign FOREIGN KEY(contact_id) REFERENCES contacts (contact_id);


