**Deliverable 1**
--To create the retirement titles table
SELECT e.emp_no, first_name, last_name, t.title, from_date,to_date
INTO retirement_titles
FROM employees AS e
	JOIN titles AS t 
		USING (emp_no)
WHERE birth_date BETWEEN  '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no;

--To create the unique titles table
SELECT DISTINCT ON(emp_no)emp_no, first_name, last_name, title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, title, to_date DESC;

--To retrieve the number of employees by their most recent job who are about to retire
SELECT COUNT(title) AS employees, title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY employees DESC;

**Deliverable 2**
--Create a mentorship eligibility table for the mentorship program
SELECT DISTINCT ON (e.emp_no)e.emp_no, first_name, last_name, birth_date,
	d.from_date, d.to_date,
	tt.title
INTO mentorship_eligibility
FROM employees AS e
	JOIN dept_emp AS d USING (emp_no)
	JOIN titles AS tt USING (emp_no)
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31') 
	AND (d.to_date = '9999-01-01')
ORDER BY e.emp_no;
