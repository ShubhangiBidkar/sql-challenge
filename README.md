
# sql-challenge

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.
##  Resources


Tools :PostgreSQL ,QuickDBD


## Instructions

This Challenge is divided into three parts: data modeling, data engineering, and data analysis.

## Data Modeling
Inspect the CSV files, and then sketch an Entity Relationship Diagram of the tables. To create the sketch, feel free to use a tool like QuickDBDLinks to an external site.

## Data Engineering 

1.	Use the provided information to create a table schema for each of the six CSV files. Be sure to do the following:

    o	Remember to specify the data types, primary keys, foreign keys, and other constraints.

    o	For the primary keys, verify that the column is unique. Otherwise, create a        composite keyLinks to an external site., which takes two primary keys to uniquely identify a row.

    o	Be sure to create the tables in the correct order to handle the foreign keys.

2.	Import each CSV file into its corresponding SQL table.

## Data Analysis
1.	List the employee number, last name, first name, sex, and salary of each employee.

2.	List the first name, last name, and hire date for the employees who were hired in 1986.

3.	List the manager of each department along with their department number, department name, employee number, last name, and first name.

4.	List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

5.	List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

6.	List each employee in the Sales department, including their employee number, last name, and first name.

7.	List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

8.	List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).


## Results

### Data Modeling
After inspecting the CSVs, create an ERD using Quick Database Diagrams
![image](https://github.com/ShubhangiBidkar/sql-challenge/assets/38162670/858f5d88-0945-47dd-a562-5f2dafcc5811)


### Data Engineering

Can be found in employee-schema.sql file in EmployeeSQL folder.

#### Data Analysis

Can be found in employee-query.sql file in EmployeeSQL folder.

### Bonus Analysis

In a Jupyter Notebook, import the SQL database into Pandas and create an engine via SQLalchemy to read the tables and create the following graphs:

A histogram to visualize the most common salary ranges for employees.

![image](https://github.com/ShubhangiBidkar/sql-challenge/assets/38162670/88ff41a0-8f92-4b87-a9f0-728baabed8eb)



A bar chart of average salary by title.

![image](https://github.com/ShubhangiBidkar/sql-challenge/assets/38162670/f5af1065-8414-4b5f-b691-f2d9d1f9ff5a)
