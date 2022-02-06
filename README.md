# Pewlett_Hackard_Analysis

## Overview of Pewlett-Hackard Analysis

In this project, I have been tasked with analyzing employee data for Pewlett-Hackard, a large technology corporation, to help plan for the upcoming "silver tsunami" of retiring employees at the company. Employees who are eligible for retirement within the next few years must be born between 1952 and 1955 and currently have an active role at the company. Employees eligible for a future mentorship program must be born in 1965. I collaborated directly with Pewlett-Hackard to analyze and report the following employee information:

1. List of current employees preparing for retirement.
2. Number of employees preparing for retirement by department.
3. List of current employees preparing for retirement in the Sales department.
4. List of current employees preparing for retirement in the Sales & Development department.
5. List of current employees and current title preparing for retirement.
6. Number of employees preparing for retirement by current job title.
7. List of employees eligible for the future mentorship program.

Pewlett-Hackard provided six datasets with employee information in CSV files. The list of files is notes in the resources section and contain private information about employee names, positions, departments, salries, and titles. The data also documents employee history in the company including title changes, salary changes and retirement/termination. I used PostgreSQL 11 and table queries to import and export the requested CSV files for the analysis. The full set of resources and analysis results are shown below.

## Resources
- Data Sources: departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv
- Software: PostgreSQL 11, pgAdmin 4

## Pewlett-Hackard Results

The results of this analysis are provided in the Data folder with the following CSV files and descriptions:

- Retirement Employee Information: emp_info.csv
	- This file contains each employees number, name, gender, and salary.
- Retirement Employees by Department: retirement_count.csv
	- This file contains a count of the employees eligible for retirement by department number.
- Retirement Employees in the Sales department: sales_emp.csv
	- This file contains employee information for retirees in the sales department.
- Retirement Employees in the Sales & Development department: sales_dev_emp.csv
	- This file contains employee information for retirees in the Sales and Development department.
- Retirement Employee Titles: unique_titles.csv
	- This file contains each retiring employee and their current title
- Retirement Employees by Position: retiring_titles.csv
	- This file contains a count of the employees eligible for retirement by position.

![Retire_Count_by_Title](https://user-images.githubusercontent.com/95327115/152697464-248fb479-5348-492e-917d-9422774fb969.png)
- Mentorship Eligible Employees: mentorship_eligibility_csv
	- This file contains a list of current employees eligible for a future mentorship program.
	
The above files provide comprehensive information on the "silver tsunami" about to hit the company in the next few years. Based on the extracted information, the four major points of this analysis are

1. There are 72,458 employees eligible for retirement in the next few years.
2. The vast majority of employees preparing for retirement are either Senior Engineers or Senior Staff.
3. Many of the employees preparing for retirement have been promoted in the past and have shown dedication to the company.
4. There are 1,549 employees eligible for the future mentorship program.

## PyBer Summary

There are a total of 72,458 roles that will need to be filled as the "silver tsunami" begins to make an impact. We saw above that many of the employees are retiring from either a senior engineer or senior staff position. The following table shows the current number of employees by position to help prioritize positions that will soon need to start the interview process. 

![Count_by_Position](https://user-images.githubusercontent.com/95327115/152697524-9b8c1d9f-502b-449a-a49d-cf82ca14f3df.png)

The above table shows that there are 97,744 Senior Engineers and 92,845 Senior Staff currently employed. There are also 47,306 engineers and 41,130 staff available to interview for promotion. Filling the senior positions should be prioritized based on the results of this query.

There are a total of 1,549 employees eligible to mentor the next generation of Pewlett-Hackard employees. The following table shows the current number of eligible mentors by department to help allocate training resources for the future employees. 

![Mentor_Count_by_Dept](https://user-images.githubusercontent.com/95327115/152697536-8a6fd6ad-adba-4055-9ea0-80d9921d1c4b.png)

The above table shows that the Human Resources, Research, Quality Management, and Finance depatments have less than 100 employees eligible for mentorship. Additional training resources should be provided to these departments once the "silver tsunami" begins to make an impact. 
