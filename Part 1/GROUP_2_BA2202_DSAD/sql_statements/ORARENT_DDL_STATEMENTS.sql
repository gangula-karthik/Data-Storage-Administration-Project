CREATE TABLE ORARENT_CUSTOMERS 
 ( CUSTOMER_ID NUMBER(10) NOT NULL, 
   LAST_NAME VARCHAR2(25) NOT NULL,
   FIRST_NAME VARCHAR2(25) NOT NULL, 
   HOME_PHONE VARCHAR2(12) NOT NULL,
   ADDRESS VARCHAR2(100) NOT NULL, 
   CITY VARCHAR2(30) NOT NULL,
   STATE VARCHAR2(2) NOT NULL, 
   EMAIL VARCHAR2(25),
   CELL_PHONE VARCHAR2(12),
   CONSTRAINT customers_customer_id_pk PRIMARY KEY(CUSTOMER_ID)
);

-- DDL STATEMENTS FOR THE ORARENT MOVIES
CREATE TABLE ORARENT_MOVIES
  ( TITLE_ID NUMBER(10), 
    TITLE VARCHAR2(60) NOT NULL, 
    DESCRIPTION VARCHAR2(400) NOT NULL, 
    RATING VARCHAR2(4), 
    CATEGORY VARCHAR2(20),
    RELEASE_DATE DATE NOT NULL, 
    CONSTRAINT movies_title_id_pk PRIMARY KEY(TITLE_ID),
    CONSTRAINT movies_rating_check CHECK(RATING IN ('G', 'PG', 'PG13', 'R')),
    CONSTRAINT movies_category_check CHECK(CATEGORY IN ('DRAMA', 'COMEDY', 'ACTION', 'CHILD', 'SCIFI', 'DOCUMENTARY'))
);

-- DDL STATEMENTS FOR THE ORARENT MEDIA
CREATE TABLE ORARENT_MEDIA
  ( MEDIA_ID NUMBER(10), 
    FORMAT VARCHAR2(3) NOT NULL, 
    TITLE_ID NUMBER(10) NOT NULL, 
    CONSTRAINT media_title_id_pk PRIMARY KEY(MEDIA_ID),
    CONSTRAINT media_title_id_fk FOREIGN KEY (TITLE_ID) REFERENCES ORARENT_MOVIES(TITLE_ID)
);

-- DDL STATEMENTS FOR THE ORARENT RENTAL_HISTORY
CREATE TABLE ORARENT_RENTAL_HISTORY
  ( MEDIA_ID NUMBER(10), 
    RENTAL_DATE DATE DEFAULT SYSDATE,
    CUSTOMER_ID NUMBER(10) NOT NULL,
    RETURN_DATE DATE,
    CONSTRAINT rental_hist_id_rent_date_pk PRIMARY KEY(MEDIA_ID, RENTAL_DATE), 
    CONSTRAINT rental_hist_media_id_fk FOREIGN KEY (MEDIA_ID) REFERENCES ORARENT_MEDIA(MEDIA_ID),
    CONSTRAINT rental_hist_customer_id_fk FOREIGN KEY (CUSTOMER_ID) REFERENCES ORARENT_CUSTOMERS(CUSTOMER_ID)
);

-- DDL STATEMENTS FOR THE ORARENT ACTORS
CREATE TABLE ORARENT_ACTORS 
 ( ACTOR_ID NUMBER(10),
   STAGE_NAME VARCHAR2(40) NOT NULL, 
   FIRST_NAME VARCHAR2(25) NOT NULL, 
   LAST_NAME VARCHAR2(25) NOT NULL,
   BIRTH_DATE DATE NOT NULL,
   CONSTRAINT actors_actor_id_pk PRIMARY KEY(ACTOR_ID)
);

-- DDL STATEMENTS FOR THE ORARENT STAR_BILLINGS
CREATE TABLE ORARENT_STAR_BILLINGS
 ( ACTOR_ID NUMBER(10), 
   TITLE_ID NUMBER(10), 
   COMMENTS VARCHAR2(40), 
   CONSTRAINT st_billings_id_rent_date_pk PRIMARY KEY(ACTOR_ID, TITLE_ID), 
   CONSTRAINT star_billings_actor_id_fk FOREIGN KEY (ACTOR_ID) REFERENCES ORARENT_ACTORS(ACTOR_ID),
   CONSTRAINT star_billings_title_id_fk FOREIGN KEY (TITLE_ID) REFERENCES ORARENT_MOVIES(TITLE_ID)
);





-- values of the sequences are not omitted from the table
-- set it to cache if it is transactional and not cache if it is not transactional
CREATE SEQUENCE CUSTOMER_ID_SEQUENCE
   INCREMENT BY 1
   START WITH 101
   CACHE
   NOCYCLE;


CREATE SEQUENCE TITLE_ID_SEQUENCE
   INCREMENT BY 1
   START WITH 1
   NOCACHE 
   NOCYCLE;


CREATE SEQUENCE MEDIA_ID_SEQUENCE
   INCREMENT BY 1
   START WITH 92
   NOCACHE 
   NOCYCLE;


CREATE SEQUENCE ACTOR_ID_SEQUENCE
   INCREMENT BY 1
   START WITH 1001
   NOCACHE 
   NOCYCLE;




-- creating indexes on the last_name column of the Customers table.
CREATE INDEX CUSTOMERS_LAST_NAME_IDX 
ON ORARENT_CUSTOMERS(LAST_NAME);

-- Create a view called TITLE_UNAVAIL to show the movie titles and media_id of the media not returned yet. The view should not allow any DML operations.
CREATE VIEW TITLE_UNAVAIL AS
SELECT TITLE, MEDIA_ID
FROM ORARENT_MEDIA NATURAL JOIN ORARENT_MOVIES
WHERE MEDIA_ID IN (SELECT MEDIA_ID FROM ORARENT_RENTAL_HISTORY WHERE RETURN_DATE IS NULL)
WITH READ ONLY;

-- Create a synonym for the TITLE_UNAVAIL view.
CREATE SYNONYM MOVIES_ON_LOAN
FOR TITLE_UNAVAIL;
