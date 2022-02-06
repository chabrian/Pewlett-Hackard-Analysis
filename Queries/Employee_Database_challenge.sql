-- create the retirement titles table 
SELECT e.emp_no,
	   e.first_name,
	   e.last_name,
	   tit.title,
	   tit.from_date,
	   tit.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as tit
ON (e.emp_no = tit.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- verify expected results
SELECT * FROM retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
							first_name,
							last_name,
							title
INTO unique_titles
FROM retirement_titles
WHERE (to_date = '9999-01-01')
ORDER BY emp_no, to_date DESC;

-- verify expected results
SELECT * FROM unique_titles;

-- Retrieve number of employees by most recent job title
SELECT COUNT(emp_no) count, title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(emp_no) DESC;

-- verify expected results
SELECT * FROM retiring_titles;








