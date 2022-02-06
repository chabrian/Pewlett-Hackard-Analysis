-- DELIVERABLE 1
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

-- DELIVERABLE 2
-- create a mentorship eligibility table
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	   e.first_name,
	   e.last_name,
	   e.birth_date,
	   de.from_date,
	   de.to_date,
	   tit.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as tit
ON (e.emp_no = tit.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

-- verify expected results
SELECT * FROM mentorship_eligibility;








