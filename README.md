# SQL-challenge
## Background
For this module challenge, I am acting as a newly hired data engineer at Pewlett Hackard (a fictional company). 
My first major task is to do a research project about people whom the company employed during the 1980s & 1990s.
There are six CSV files that comprise the employee database. 

## Challenge Summary
The required outputs from this challenge can be found within this repository:
* Image file of ERD 
* A `.sql` file of the table schemata
* A `.sql` file of the queries
* A thorough `README.md` file

## Instructions
The objective of this challenge is to design the tables to hold the data from the CSV files, import the CSV files
into a created SQL database, and conduct an analysis of the data. This will be accomplished with data modeling, 
data engineering, and data analysis.

#### Data Modeling

Inspect the six CSVs and sketch out an Entity Relationship Diagram (ERD) of the tables. For this, I used the free tool
provided in the assigment instructions -- [QuickDBD](https://www.quickdatabasediagrams.com/)

#### Data Engineering

Use the provided information from module lessons to create a table schema for the six CSV files. Ensure to specify data types,
primary keys, foreign keys, constraints, table references, accurate value lengths for columns, and NOT NULL conditions.

Import each CSV files into the corresponding SQL table.

#### Data Analysis

Once the database is completed, the following queries are answered:

1. List the employee number, last name, first name, sex, and salary of each employee.
2. List the first name, last name, and hire date for the employees who were hired in 1986.
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6. List each employee in the Sales department, including their employee number, last name, and first name.
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

