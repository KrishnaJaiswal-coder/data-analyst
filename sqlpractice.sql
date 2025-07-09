SELECT *
FROM parks_and_recreation.employee_demographics; 

SELECT *
FROM parks_and_recreation.employee_salary; 

SELECT  employee_id, first_name, last_name
FROM parks_and_recreation.employee_demographics;

#PEMDAS(Paranthesis Exponential Multiply Divison Addition Subtraction)

SELECT DISTINCT employee_id, gender 
FROM parks_and_recreation.employee_demographics;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name="tom" AND age = 36;

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE "a_%";

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date LIKE '1989%';

SELECT gender, AVG(age), MAX(age), MIN(age) , COUNT(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

SELECT occupation, salary
FROM parks_and_recreation.employee_salary 
GROUP BY occupation, salary;

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY first_name asc;

SELECT first_name, last_name, salary
FROM parks_and_recreation.employee_salary
ORDER BY salary desc;

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY gender desc , age asc ;

SELECT occupation , AVG(salary)
FROM parks_and_recreation.employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary)>75000;

                   -- LIMIT use

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age desc
LIMIT 2,1;


					-- USE OF ALIASING
SELECT gender , AVG(age) AS avg_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING avg_age>=38.5;

								-- JOINS
SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON	dem.employee_id = sal.employee_id
;

SELECT dem.employee_id , dem.first_name , dem.last_name , occupation , salary 
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON	dem.employee_id = sal.employee_id
;

SELECT * 
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;
SELECT * 
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;
							-- SELF JOIN--  
SELECT emp1.employee_id AS employee_santa , 
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS employee_name , 
emp2.first_name AS first_name,
emp2.last_name AS last_name
FROM employee_salary AS emp1
JOIN employee_salary AS emp2
	ON emp1.employee_id + 1 = emp2.employee_id
;

			-- HOW TO JOIN MULTIPLE TABLES USING JOIN 

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON	dem.employee_id = sal.employee_id
;

SELECT *
FROM parks_departments; 
            





















