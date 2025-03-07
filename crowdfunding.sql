drop table if exists crownd;
CREATE TABLE crownd(cf_id VARCHAR primary key,
contact_id INTEGER , 
company_name VARCHAR,
description	VARCHAR,
goal float,
pledged float,
outcome	VARCHAR,
backers_count VARCHAR,
country	VARCHAR,
currency VARCHAR,
launch_date	VARCHAR,
end_date VARCHAR,
category_id VARCHAR,
subcategory_id VARCHAR


)

select *
from crownd


drop table if exists Subcategory;
CREATE TABLE Subcategory (subcategory_id VARCHAR primary key,
subcategory VARCHAR
)


select *
from Subcategory



drop table if exists category;
CREATE TABLE category(category_id VARCHAR primary key,
category VARCHAR
)

select *
from category



drop table if exists contact;
CREATE TABLE contact(contact_id INTEGER primary key,
first_name VARCHAR,
last_name VARCHAR,
email VARCHAR
)	


SELECT *
FROM contact


ALTER TABLE ONLY crownd
    ADD CONSTRAINT subcategory_id_fkey FOREIGN KEY(subcategory_id ) REFERENCES subcategory(subcategory_id) ON UPDATE CASCADE;



ALTER TABLE ONLY crownd
      ADD CONSTRAINT category_id_fkey FOREIGN KEY(category_id)REFERENCES category(category_id) ON UPDATE CASCADE;  



ALTER TABLE ONLY crownd
      ADD CONSTRAINT contact_id_fkey FOREIGN KEY(contact_id)REFERENCES contact(contact_id) ON UPDATE CASCADE; 