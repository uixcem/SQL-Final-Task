# My Historical Dictators Database Project

This is my database project where I collected information about historical dictators. I got interested in this topic after seeing diktaattoriporssi.com, and I decided to create a database to practice what I learned in our database course.
## What I Did

I created a database with two main tables:

- A table for countries (with regions)
- A table for dictators with their basic information

While researching, I found lots of interesting data about different dictators throughout history. I grouped them by regions to make it easier to analyze patterns in different parts of the world.

## How To Use My Project

If you want to try this yourself:

1. First create a new database
2. Run the CREATE TABLE statements
3. Run the INSERT statements to add the data
4. Try out the example queries
5. Feel free to modify the queries to find different information

## Notes About My Project

- I collected this data from your website diktaattoriporssi.com
- I grouped them by regions to make it easier to understand
- I included both historical and current rulers
- I kept the structure simple to focus on what we learned in class, at least what I learned.

This was a really interesting project for me to practice . I learned a lot about different dictators and their countries. I hope you find it interesting too!

## Sources

- I used diktaattoriporssi.com as my main source for the data. This helped me create a comprehensive list of historical and current dictators.


# Installation and Setup Steps

1. First, create the database:

createdb DictatorDBv1

2. Connect to the database:

psql DictatorDBv1

3. Create the tables by copying and pasting the CREATE TABLE statements:

CREATE TABLE countries (
id INT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
region VARCHAR(50)
);

CREATE TABLE dictators (
id INT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
country_id INT,
birth_year INT,
death_year INT,
rule_start INT,
rule_end INT,
FOREIGN KEY (country_id) REFERENCES countries(id)
);

4. Insert the data by copying and pasting the INSERT statements:

INSERT INTO countries VALUES
(1, 'Germany', 'Europe'),
same to the others..

5. Verify the data is loaded:

-- Check countries table
SELECT \* FROM countries;

-- Check dictators table
SELECT \* FROM dictators;

-- Check total number of records
SELECT COUNT(_) FROM countries;
SELECT COUNT(_) FROM dictators;

6. Basic psql commands you might need:

\dt -- List all tables
\d countries -- Show countries table structure
\d dictators -- Show dictators table structure
\q -- Quit psql
\? -- Show all psql commands

7. If you need to delete the database and start over:
   bash

# Quit psql first with \q then,

dropdb DictatorDBv1

# Note: Make sure Postgresql is installed on your system before running these commands.
