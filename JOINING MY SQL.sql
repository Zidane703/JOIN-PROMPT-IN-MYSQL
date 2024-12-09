SELECT *
FROM employee_demographics;

SELECT *
FROM  employee_salary;



SELECT d.employee_id, age, occupation
FROM employee_demographics AS d
INNER JOIN  employee_salary AS le
	ON d.employee_id = le.employee_id;
    
SELECT *
FROM employee_demographics AS d
RIGHT JOIN  employee_salary AS le
	ON d.employee_id = le.employee_id;
    
-- SELF JOIN AND INNER JOIN

SELECT empsatu.employee_id AS emp_dude,
empsatu.first_name AS first_name_dude,
empsatu.last_name AS last_name_dude,
empdua.employee_id AS emp_name,
empdua.first_name AS first_name_emp,
empdua.last_name AS last_name_emp
FROM employee_salary empsatu
JOIN employee_salary empdua
	ON empsatu.employee_id + 1 = empdua.employee_id;
    
-- JOINING THE MULTIPLE TABLE TOGETHER

SELECT *
FROM employee_demographics AS demo
INNER JOIN employee_salary AS sala
 ON demo.employee_id = sala.employee_id;
 
 SELECT *
 FROM employee_demographics AS dem
 INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments pd
	ON sal.dept_id = pd.department_id;

SELECT *
FROM parks_departments;
 