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
SET EMAIL = 'hannah.knight@oracle.com', MANAGER_ID = (SELECT EMPLOYEE_ID FROM COPY_HWL_EMPLOYEES WHERE FIRST_NAME = 'Ronnie'
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