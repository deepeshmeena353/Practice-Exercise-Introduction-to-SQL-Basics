-- HR TABLE

-- Q1 - See all the entries with the job_id of 4

SELECT * FROM employees WHERE job_id = 4;

-- Q2 - Calculate the aggregate salary for every job_id

SELECT job_id, SUM(salary) as aggregate_salary FROM employees GROUP BY job_id;

-- Q3 - Find out all the people where the aggregate salary for their job is greater than 8000

SELECT * FROM employees WHERE job_id IN ( SELECT job_id FROM employees GROUP BY job_id HAVING SUM(salary) > 8000 );

-- titanic TABLE

-- Q1 - Calculate the number of males and females who survived SELECT sex, COUNT(*) as count FROM titanic WHERE survived = 1 GROUP BY sex;

Q2 - Calculate the average age of all the members who survived

SELECT AVG(age) as average_age FROM titanic WHERE survived = 1;

-- Q3 - From which deck were the most survivors?

SELECT deck, COUNT(*) as survivor_count FROM titanic WHERE survived = 1 GROUP BY deck ORDER BY survivor_count DESC LIMIT 1;