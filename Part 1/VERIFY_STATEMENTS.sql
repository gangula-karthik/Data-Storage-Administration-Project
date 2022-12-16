-- SQL STATEMENT TO VERIFY IF SEQUENCE EXISTS
SELECT SEQUENCE_NAME, INCREMENT_BY, LAST_NUMBER, CYCLE_FLAG, CACHE_SIZE
FROM USER_SEQUENCES;

-- SQL STATEMENT TO VERIFY IF PRIMARY KEY EXISTS
SELECT TABLE_NAME, CONSTRAINT_NAME, CONSTRAINT_TYPE, STATUS
FROM USER_CONSTRAINTS
where  TABLE_NAME like 'ORARENT_%' AND CONSTRAINT_TYPE = 'F';

-- SQL STATEMENT TO VERIFY IF FOREIGN KEY EXISTS
SELECT table_name, constraint_name, constraint_type, status
FROM user_constraints
where table_name like 'ORARENT_%' and constraint_type = 'R';


-- SQL STATEMENT TO VERIFY NOT NULL CONSTRAINTS
SELECT TABLE_NAME, COLUMN_NAME, DATA_TYPE, DATA_LENGTH, NULLABLE
FROM all_tab_columns
WHERE table_name LIKE 'ORARENT_%';  


-- SQL STATEMENT TO VERIFY CHECK CONSTRAINTS
SELECT constraint_name, constraint_type, search_condition
FROM all_constraints
WHERE table_name = 'ORARENT_MOVIES'
AND constraint_type = 'C';


-- SQL STATEMENT TO VERIFY THE CREATION OF INDEX ON THE LAST_NAME COLUMN OF THE CUSTOMERS TABLE
SELECT index_name, table_name
FROM user_indexes
where table_name = 'ORARENT_CUSTOMERS';

-- SQL STATEMENT TO VERIFY THE CREATION OF VIEW ON THE CUSTOMERS TABLE
SELECT VIEW_NAME , TEXT , READ_ONLY
FROM USER_VIEWS
WHERE VIEW_NAME = 'TITLE_UNAVAIL';

-- SQL STATEMENT TO VERIFY THE CREATION OF SYNONYM ON THE CUSTOMERS TABLE
SELECT SYNONYM_NAME, TABLE_OWNER, TABLE_NAME
FROM USER_SYNONYMS
WHERE SYNONYM_NAME = 'MOVIES_ON_LOAN';
