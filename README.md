# Crowdfunding_ETL
Project 2

# ETL Mini Project

This repository contains the code and resources for an ETL (Extract, Transform, Load) mini project. The goal of this project is to build an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform data. After transforming the data, we will create four CSV files, design an ERD (Entity-Relationship Diagram), define a table schema, and upload the data into a PostgreSQL database.

## Project Requirements

1. **Extract and Transform Data:**
   - Use Python and Pandas to extract and transform data from the provided datasets.
   - Utilize Python dictionary methods or regular expressions for data manipulation.

2. **Create CSV Files:**
   - Generate four CSV files from the transformed data.

3. **Design ERD and Table Schema:**
   - Create an ERD to visualize the relationships between the tables.
   - Define a table schema for the PostgreSQL database.

4. **Load Data into PostgreSQL:**
   - Upload the CSV file data into a PostgreSQL database.

## Tables

The project involves the following tables:

### `campaign`
| Column           | Data Type | Description                           |
|------------------|-----------|---------------------------------------|
| gLjd             | INT       | Primary key                          |
| contact_id       | INT       | Foreign key referencing `contacts`    |
| company_name     | VARCHAR   | Name of the company                  |
| description      | TEXT      | Description of the campaign          |
| goal             | FLOAT     | Funding goal                         |
| pledged          | FLOAT     | Amount pledged                       |
| outcome          | VARCHAR   | Outcome of the campaign              |
| backers_count    | INT       | Number of backers                    |
| country          | VARCHAR   | Country of the campaign              |
| currency         | VARCHAR   | Currency used                        |
| launch_date      | TIMESTAMP | Launch date of the campaign          |
| end_date         | TIMESTAMP | End date of the campaign             |
| category_id      | VARCHAR   | Foreign key referencing `category`   |
| subcategory_id   | VARCHAR   | Foreign key referencing `subcategory`|

### `contacts`
| Column           | Data Type | Description                           |
|------------------|-----------|---------------------------------------|
| contact_id       | INT       | Primary key                          |
| first_name       | VARCHAR   | First name of the contact            |
| last_name        | VARCHAR   | Last name of the contact             |
| email            | VARCHAR   | Email address of the contact         |
| subcategory_id   | VARCHAR   | Foreign key referencing `subcategory`|
| subcategory      | VARCHAR   | Subcategory name                     |
| category_id      | VARCHAR   | Foreign key referencing `category`   |
| category         | VARCHAR   | Category name                        |

### `category`
| Column           | Data Type | Description                           |
|------------------|-----------|---------------------------------------|
| category_id      | VARCHAR   | Primary key                          |
| category_name    | VARCHAR   | Name of the category                 |

### `subcategory`
| Column           | Data Type | Description                           |
|------------------|-----------|---------------------------------------|
| subcategory_id   | VARCHAR   | Primary key                          |
| subcategory_name | VARCHAR   | Name of the subcategory              |
| category_id      | VARCHAR   | Foreign key referencing `category`   |

## Getting Started

### Prerequisites

- Python 3.x
- Pandas
- PostgreSQL
- pgAdmin 4

### Installation

1- **Clone the Repository:**
   ```bash
   git clone https://github.com/your-username/etl-mini-project.git
   cd etl-mini-project
   

2- **Install Dependencies:**

bash

pip install pandas sqlalchemy psycopg2


###Usage
1- **Extract and Transform Data:**

 Run the Python script to extract and transform the data:
 
> (bash) python etl_pipeline.py 


2- **Generate CSV Files:** 

> The script will generate four CSV files: campaign.csv, contacts.csv, category.csv, and subcategory.csv.

3- **Create ERD and Table Schema:**

> * 	Use pgAdmin 4 to create an ERD based on the CSV files.
> * Define the table schema in PostgreSQL.
	
4- **Load Data into PostgreSQL:**

Use the following command to load the CSV data into the PostgreSQL database:

> (bash) python load_data.py


###Contributing
Contributions are welcome! Please fork the repository and create a pull request with your changes.

License
This project is licensed under the MIT License. See the LICENSE file for details.

Acknowledgments
Thanks to the instructors and TAs for their guidance and to my project partner for their collaboration.

