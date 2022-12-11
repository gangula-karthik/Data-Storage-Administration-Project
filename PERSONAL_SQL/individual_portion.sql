-- JUN MING SQL STATEMENTS
--Task1
CREATE TABLE copy_hwl_customers  as SELECT *
FROM hwl_customers

UPDATE copy_hwl_customers
SET credit_limit = 10000
WHERE address LIKE '%NY%';

To check Task 1
SELECT *
FROM copy_hwl_customers
WHERE address LIKE '%NY%'

--Task 2
SELECT cus.customer_id AS "Customer ID", cus.name AS "Customer Name",
cus.credit_limit AS "Credit Limit", con.first_name AS "First Name",
con.last_name AS "Last Name", cus.address AS "Address", con.password AS "Password"
FROM HWL_customers cus JOIN hwl_contacts con ON(cus.customer_id=con.customer_id)
WHERE cus.customer_id BETWEEN 120 AND 135;





-- KARTHIK SQL STATEMENTS
-- QUESTION 1
SELECT EMP.FIRST_NAME "First Name", 
EMP.LAST_NAME "Last Name", 
EMP.NRIC "NRIC",
EMP.HIRE_DATE "Hire Date",
MGR.FIRST_NAME "Manager Name"
FROM HWL_EMPLOYEES EMP
JOIN HWL_EMPLOYEES MGR
ON (EMP.MANAGER_ID = MGR.EMPLOYEE_ID)
WHERE EMP.JOB_TITLE = 'Shipping Clerk';

-- QUESTION 2
UPDATE HWL_EMPLOYEES
SET EMAIL = 'hannah.knight@oracle.com', MANAGER_ID = (SELECT EMPLOYEE_ID FROM HWL_EMPLOYEES WHERE FIRST_NAME = 'Ronnie'
AND LAST_NAME = 'Perry')
WHERE FIRST_NAME = 'Hannah'
AND LAST_NAME = 'Knight';




-- PIN SHIEN SQL STATEMENTS
--Sonny Russell has left the company. Please help to remove his record from the employees' table.
DELETE                            
FROM HWL_employees
WHERE first_name = 'Sonny' AND last_name = 'Russell';

-- retrieve a list of customers names where the order is more than 4 (order is a foreign key in the order_details table)
SELECT DISTINCT name
FROM HWL_CUSTOMERS
WHERE CUSTOMER_ID IN (SELECT CUSTOMER_ID
                      FROM HWL_ORDERS
                      GROUP BY CUSTOMER_ID
                      HAVING COUNT(ORDER_ID) > 4);

-- JAY SQL STATEMENTS

--Qn 1
--Sophia Reynolds has been promoted to Sales Manager and reporting to Tommy Bailey, please update her job title and manager in the database accordingly.
UPDATE HWL_EMPLOYEES
SET JOB_TITLE = 'Sales Manager' ,
MANAGER_ID = (SELECT EMPLOYEE_ID
FROM HWL_employees
WHERE FIRST_NAME LIKE 'Tommy' AND LAST_NAME LIKE 'Bailey')
WHERE FIRST_NAME LIKE 'Sophia' AND LAST_NAME LIKE 'Reynolds';

--QN 2
--Retrieve the list of our employees whose job title is Shipping Clerk. The data column in the report should be displayed in this sequence, First Name, Last Name, Hire Date, Salary and Manager Name

SELECT e.first_name , e.last_name , e.hire_date , e.salary , m.first_name ||' '|| m.last_name AS "Manager Name"
FROM HWL_employees e JOIN HWL_employees m ON (e.manager_id = m.employee_id)
WHERE e.JOB_TITLE LIKE 'Shipping Clerk';
