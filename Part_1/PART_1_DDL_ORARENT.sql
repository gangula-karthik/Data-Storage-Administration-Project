-- REMINDER THAT WHEN YOU CREATE ON APEX PLEASE DROP THE OLD TABLE THEN RUN THIS SCRIPT

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

CREATE TABLE ORARENT_MEDIA
  ( MEDIA_ID NUMBER(10), 
    FORMAT VARCHAR2(3) NOT NULL, 
    TITLE_ID NUMBER(10) NOT NULL, 
    CONSTRAINT media_title_id_pk PRIMARY KEY(MEDIA_ID),
    CONSTRAINT media_title_id_fk FOREIGN KEY (TITLE_ID) REFERENCES ORARENT_MOVIES(TITLE_ID)
);

CREATE TABLE ORARENT_RENTAL_HISTORY
  ( MEDIA_ID NUMBER(10), 
    RENTAL_DATE DATE DEFAULT SYSDATE,
    CUSTOMER_ID NUMBER(10) NOT NULL,
    RETURN_DATE DATE,
    CONSTRAINT rental_hist_id_rent_date_pk PRIMARY KEY(MEDIA_ID, RENTAL_DATE), 
    CONSTRAINT rental_hist_media_id_fk FOREIGN KEY (MEDIA_ID) REFERENCES ORARENT_MEDIA(MEDIA_ID),
    CONSTRAINT rental_hist_customer_id_fk FOREIGN KEY (CUSTOMER_ID) REFERENCES ORARENT_CUSTOMERS(CUSTOMER_ID)
);

CREATE TABLE ORARENT_ACTORS 
 ( ACTOR_ID NUMBER(10),
   STAGE_NAME VARCHAR2(40) NOT NULL, 
   FIRST_NAME VARCHAR2(25) NOT NULL, 
   LAST_NAME VARCHAR2(25) NOT NULL,
   BIRTH_DATE DATE NOT NULL,
   CONSTRAINT actors_actor_id_pk PRIMARY KEY(ACTOR_ID)
);

CREATE TABLE ORARENT_STAR_BILLINGS
 ( ACTOR_ID NUMBER(10), 
   TITLE_ID NUMBER(10), 
   COMMENTS VARCHAR2(40), 
   CONSTRAINT st_billings_id_rent_date_pk PRIMARY KEY(ACTOR_ID, TITLE_ID), 
   CONSTRAINT star_billings_actor_id_fk FOREIGN KEY (ACTOR_ID) REFERENCES ORARENT_ACTORS(ACTOR_ID),
   CONSTRAINT star_billings_title_id_fk FOREIGN KEY (TITLE_ID) REFERENCES ORARENT_MOVIES(TITLE_ID)
);


-- SEQUENCES CREATED (NOT TESTED YET)
-- ASK TEACHER ON HOW TO DECIDE WHICH CONSTRAINTS TO APPLY TO SEQUENCES
CREATE SEQUENCE CUSTOMER_ID_SEQUENCE
   INCREMENT BY 1
   START WITH 101
   NOCACHE 
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


-- ORARENT CUSTOMERS INSERTS
-- ROW 1
INSERT INTO ORARENT_CUSTOMERS(CUSTOMER_ID, LAST_NAME, FIRST_NAME, HOME_PHONE, ADDRESS, CITY, STATE, EMAIL, CELL_PHONE)
VALUES
   (CUSTOMER_ID_SEQUENCE.CURVAL, 'Wong', 'Johnny', '98806664', '3018 Bedok North Street 5 03-34', 'Singapore', 'SG', 'johnnywong27@gmail.com', '97765433')

-- ROW 2
INSERT INTO ORARENT_CUSTOMERS(CUSTOMER_ID, LAST_NAME, FIRST_NAME, HOME_PHONE, ADDRESS, CITY, STATE, EMAIL, CELL_PHONE)
VALUES
   (CUSTOMER_ID_SEQUENCE.NEXTVAL, 'West', 'Kanye', '65332266', '2021 Bt Batok St 23 #04-198', 'Singapore', 'SG', 'kanyewest2005@gmail.com', '95623014')

-- ROW 3
INSERT INTO ORARENT_CUSTOMERS(CUSTOMER_ID, LAST_NAME, FIRST_NAME, HOME_PHONE, ADDRESS, CITY, STATE, EMAIL, CELL_PHONE)
VALUES
   (CUSTOMER_ID_SEQUENCE.NEXTVAL, 'Parker', 'Peter', '67355160', '143 Cecil Street 18-00 Gb Building', 'Singapore', 'SG', 'peterparker@yahoo.com', '88265973')

-- ROW 4
INSERT INTO ORARENT_CUSTOMERS(CUSTOMER_ID, LAST_NAME, FIRST_NAME, HOME_PHONE, ADDRESS, CITY, STATE, EMAIL, CELL_PHONE)
VALUES
   (CUSTOMER_ID_SEQUENCE.NEXTVAL, 'Griffin', 'Peter', '62884568', 'BLK 119 ALJUNIED AVENUE 2, #01-K4', 'Singapore', 'SG', 'petergriffin69@gmail.com', '82215107')

-- ROW 5
INSERT INTO ORARENT_CUSTOMERS(CUSTOMER_ID, LAST_NAME, FIRST_NAME, HOME_PHONE, ADDRESS, CITY, STATE, EMAIL, CELL_PHONE)
VALUES
   (CUSTOMER_ID_SEQUENCE.NEXTVAL, 'Tate', 'Andrew', '62743489', '101 Boon Keng Rd #06-01', 'Singapore', 'SG', 'andrewtate112@yahoo.com', '86942069')

-- ROW 6
INSERT INTO ORARENT_CUSTOMERS(CUSTOMER_ID, LAST_NAME, FIRST_NAME, HOME_PHONE, ADDRESS, CITY, STATE, EMAIL, CELL_PHONE)
VALUES
   (CUSTOMER_ID_SEQUENCE.NEXTVAL, 'Marshall', 'Bruce', '69081243', '165 Marine Parade #03-01', 'Singapore', 'SG', 'brucemarshall22@gmail.com', '98865412')



-- ORARENT MOVIES INSERTS
-- ROW 1  (edit)
INSERT INTO ORARENT_MOVIES(TITLE_ID,TITLE,DESCRIPTION,RATING,CATEGORY,RELEASE_DATE)
VALUES   (TITLE_ID_SEQUENCE, 'Forrest Gump', 'Forrest Gump, while not intelligent, has accidentally been present at many historic moments, but his true love, Jenny Curran, eludes him.', 'PG13', 'DRAMA', '6-JUN-1994')

-- ROW 2
INSERT INTO ORARENT_MOVIES(TITLE_ID,TITLE,DESCRIPTION,RATING,CATEGORY,RELEASE_DATE)
VALUES   (TITLE_ID_SEQUENCE.NEXTVAL, 'The Truman Show', 'An insurance salesman/adjuster discovers his entire life is actually a reality TV show.', 'PG', 'DRAMA', '5-JUN-1998')

-- ROW 3 (edit)
INSERT INTO ORARENT_MOVIES(TITLE_ID,TITLE,DESCRIPTION,RATING,CATEGORY,RELEASE_DATE)
VALUES  (TITLE_ID_SEQUENCE.NEXTVAL, 'Mission Impossible', 'An American agent, under false suspicion of disloyalty, must discover and expose the real spy without the help of his organization.', 'PG13', 'ACTION', '22-JUN-1996')

-- ROW 4
INSERT INTO ORARENT_MOVIES(TITLE_ID,TITLE,DESCRIPTION,RATING,CATEGORY,RELEASE_DATE)
VALUES  (TITLE_ID_SEQUENCE.NEXTVAL, 'The Matrix', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.', 'R', 'ACTION', '22-APR-1999')

-- ROW 5
INSERT INTO ORARENT_MOVIES(TITLE_ID,TITLE,DESCRIPTION,RATING,CATEGORY,RELEASE_DATE)
VALUES  (TITLE_ID_SEQUENCE.NEXTVAL, 'Shrek', 'After his swamp is filled with magical creatures, an ogre agrees to rescue a princess for a villainous lord in order to get his land back.', 'PG', 'COMEDY', '07-JUN-2001')

-- ROW 6
INSERT INTO ORARENT_MOVIES(TITLE_ID,TITLE,DESCRIPTION,RATING,CATEGORY,RELEASE_DATE)
VALUES  (TITLE_ID_SEQUENCE.NEXTVAL, 'Avatar', 'A paraplegic marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.', 'PG13', 'ACTION', '18-DEC-2009')



-- ORARENT MEDIA INSERTS
-- ROW 1
INSERT INTO ORARENT_MEDIA(MEDIA_ID, FORMAT, TITLE_ID)
VALUES  (MEDIA_ID_SEQUENCE, 'DVD', 6)

-- ROW 2
INSERT INTO ORARENT_MEDIA(MEDIA_ID, FORMAT, TITLE_ID)
VALUES  (MEDIA_ID_SEQUENCE.NEXTVAL, 'VHS', 6)

-- ROW 3
INSERT INTO ORARENT_MEDIA(MEDIA_ID, FORMAT, TITLE_ID)
VALUES  (MEDIA_ID_SEQUENCE.NEXTVAL, 'DVD', 5)

-- ROW 4
INSERT INTO ORARENT_MEDIA(MEDIA_ID, FORMAT, TITLE_ID)
VALUES  (MEDIA_ID_SEQUENCE.NEXTVAL, 'VHS', 5)


-- ROW 5
INSERT INTO ORARENT_MEDIA(MEDIA_ID, FORMAT, TITLE_ID)
VALUES  (MEDIA_ID_SEQUENCE.NEXTVAL, 'DVD', 4)

-- ROW 6
INSERT INTO ORARENT_MEDIA(MEDIA_ID, FORMAT, TITLE_ID)
VALUES  (MEDIA_ID_SEQUENCE.NEXTVAL, 'VHS', 4)



-- ORARENT RENTAL HISTORY INSERTS
-- ROW 1
INSERT INTO ORARENT_RENTAL_HISTORY(MEDIA_ID, RENTAL_DATE, CUSTOMER_ID, RETURN_DATE)
VALUES ( 92, '01-JAN-2021', 101, '05-JAN-2021')
   
-- ROW 2
INSERT INTO ORARENT_RENTAL_HISTORY(MEDIA_ID, RENTAL_DATE, CUSTOMER_ID, RETURN_DATE)
VALUES ( 93, '01-JAN-2021', 102, '05-JAN-2021')

-- ROW 3
INSERT INTO ORARENT_RENTAL_HISTORY(MEDIA_ID, RENTAL_DATE, CUSTOMER_ID, RETURN_DATE)
VALUES (94, '19-SEP-2022', 103, '22-SEP-2022')

-- ROW 4
INSERT INTO ORARENT_RENTAL_HISTORY(MEDIA_ID, RENTAL_DATE, CUSTOMER_ID, RETURN_DATE)
VALUES (95, '03-MAR-2022', 104, '07-MAR-2022')



-- ORARENT ACTORS INSERTS
-- ROW 1
INSERT INTO ORARENT_ACTORS(ACTOR_ID,STAGE_NAME,FIRST_NAME,LAST_NAME,BIRTH_DATE)
VALUES    (ACTOR_ID_SEQUENCE, 'Tom Hanks', 'Thomas', 'Hanks', '09-JUL-1956')

-- ROW 2
INSERT INTO ORARENT_ACTORS(ACTOR_ID,STAGE_NAME,FIRST_NAME,LAST_NAME,BIRTH_DATE)
VALUES    (ACTOR_ID_SEQUENCE.NEXTVAL, 'Jim Carrey', 'James', 'Carrey', '17-01-1962')

-- ROW 3
INSERT INTO ORARENT_ACTORS(ACTOR_ID,STAGE_NAME,FIRST_NAME,LAST_NAME,BIRTH_DATE)
VALUES    (ACTOR_ID_SEQUENCE.NEXTVAL, 'Keanu Reeves', 'Keanu', 'Reeves', '02-SEP-1964')

-- ROW 4
INSERT INTO ORARENT_ACTORS(ACTOR_ID,STAGE_NAME,FIRST_NAME,LAST_NAME,BIRTH_DATE)
VALUES    (ACTOR_ID_SEQUENCE.NEXTVAL, 'Sam Worthington', 'Samuel', 'Worthington', '02-08-1976')

-- ROW 5
INSERT INTO ORARENT_ACTORS(ACTOR_ID,STAGE_NAME,FIRST_NAME,LAST_NAME,BIRTH_DATE)
VALUES    (ACTOR_ID_SEQUENCE.NEXTVAL, 'Eddie Murphy', 'Edward', 'Murphy', '03-APR-1961')

-- ROW 6
INSERT INTO ORARENT_ACTORS(ACTOR_ID,STAGE_NAME,FIRST_NAME,LAST_NAME,BIRTH_DATE)
VALUES    (ACTOR_ID_SEQUENCE.NEXTVAL, 'Tom Cruise', 'Thomas', 'Cruise', '03-JUL-1962')


-- ORARENT STAR BILLINGS INSERTS
-- ROW 1  (correct)
INSERT INTO ORARENT_STAR_BILLINGS(ACTOR_ID, TITLE_ID, COMMENTS)
VALUES  (1001, 1, 'Tom Hanks plays the role of Forrest Gump')

-- ROW 2 (correct)
INSERT INTO ORARENT_STAR_BILLINGS(ACTOR_ID, TITLE_ID, COMMENTS)
VALUES  (1002, 2, 'Jim Carrey plays the role of truman Burbank')

-- ROW 3 (correct)
INSERT INTO ORARENT_STAR_BILLINGS(ACTOR_ID, TITLE_ID, COMMENTS)
VALUES  (1003, 4, 'Keanu Reeves plays the role of Neo')

-- ROW 4 (correct)
INSERT INTO ORARENT_STAR_BILLINGS(ACTOR_ID, TITLE_ID, COMMENTS)
VALUES  (1004, 6, 'Sam Worthington plays the role of Jake Sully')

-- ROW 5 (correct)
INSERT INTO ORARENT_STAR_BILLINGS(ACTOR_ID, TITLE_ID, COMMENTS)
VALUES  (1005, 5, 'Eddie Murphy plays the role of Donkey in shrek')

-- ROW 6 (correct)
INSERT INTO ORARENT_STAR_BILLINGS(ACTOR_ID, TITLE_ID, COMMENTS)
VALUES  (1006, 3, 'Tom Cruise plays the role of Ethan Hunt')
