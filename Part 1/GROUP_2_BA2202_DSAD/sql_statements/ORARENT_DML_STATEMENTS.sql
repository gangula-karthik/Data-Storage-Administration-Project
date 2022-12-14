-- ORARENT CUSTOMERS INSERTS
-- ROW 1
INSERT INTO ORARENT_CUSTOMERS(CUSTOMER_ID, LAST_NAME, FIRST_NAME, HOME_PHONE, ADDRESS, CITY, STATE, EMAIL, CELL_PHONE)
VALUES
   (CUSTOMER_ID_SEQUENCE.NEXTVAL, 'Wong', 'Johnny', '62343213', '3018 Bedok North Street 5 03-34', 'Singapore', 'SG', 'johnnywong27@gmail.com', '97765433');

-- ROW 2
INSERT INTO ORARENT_CUSTOMERS(CUSTOMER_ID, LAST_NAME, FIRST_NAME, HOME_PHONE, ADDRESS, CITY, STATE, EMAIL, CELL_PHONE)
VALUES
   (CUSTOMER_ID_SEQUENCE.NEXTVAL, 'West', 'Kanye', '65332266', '2021 Bt Batok St 23 #04-198', 'Singapore', 'SG', 'kanyewest2005@gmail.com', '95623014');

-- ROW 3
INSERT INTO ORARENT_CUSTOMERS(CUSTOMER_ID, LAST_NAME, FIRST_NAME, HOME_PHONE, ADDRESS, CITY, STATE, EMAIL, CELL_PHONE)
VALUES
   (CUSTOMER_ID_SEQUENCE.NEXTVAL, 'Parker', 'Peter', '67355160', '143 Cecil Street 18-00 Gb Building', 'Singapore', 'SG', 'peterparker@yahoo.com', '88265973');

-- ROW 4
INSERT INTO ORARENT_CUSTOMERS(CUSTOMER_ID, LAST_NAME, FIRST_NAME, HOME_PHONE, ADDRESS, CITY, STATE, EMAIL, CELL_PHONE)
VALUES
   (CUSTOMER_ID_SEQUENCE.NEXTVAL, 'Griffin', 'Peter', '62884568', 'BLK 119 ALJUNIED AVENUE 2, #01-K4', 'Singapore', 'SG', 'petergriffin69@gmail.com', '82215107');

-- ROW 5
INSERT INTO ORARENT_CUSTOMERS(CUSTOMER_ID, LAST_NAME, FIRST_NAME, HOME_PHONE, ADDRESS, CITY, STATE, EMAIL, CELL_PHONE)
VALUES
   (CUSTOMER_ID_SEQUENCE.NEXTVAL, 'Tate', 'Andrew', '62743489', '101 Boon Keng Rd #06-01', 'Singapore', 'SG', 'andrewtate112@yahoo.com', '86942069');

-- ROW 6
INSERT INTO ORARENT_CUSTOMERS(CUSTOMER_ID, LAST_NAME, FIRST_NAME, HOME_PHONE, ADDRESS, CITY, STATE, EMAIL, CELL_PHONE)
VALUES
   (CUSTOMER_ID_SEQUENCE.NEXTVAL, 'Marshall', 'Bruce', '69081243', '165 Marine Parade #03-01', 'Singapore', 'SG', 'brucemarshall22@gmail.com', '98865412');



-- ORARENT MOVIES INSERTS
-- ROW 1  
INSERT INTO ORARENT_MOVIES(TITLE_ID,TITLE,DESCRIPTION,RATING,CATEGORY,RELEASE_DATE)
VALUES   (TITLE_ID_SEQUENCE.NEXTVAL, 'Forrest Gump', 'Forrest Gump, while not intelligent, has accidentally been present at many historic moments, but his true love, Jenny Curran, eludes him.', 'PG13', 'DRAMA', '6-JUN-1994');

-- ROW 2
INSERT INTO ORARENT_MOVIES(TITLE_ID,TITLE,DESCRIPTION,RATING,CATEGORY,RELEASE_DATE)
VALUES   (TITLE_ID_SEQUENCE.NEXTVAL, 'The Truman Show', 'An insurance salesman/adjuster discovers his entire life is actually a reality TV show.', 'PG', 'DRAMA', '5-JUN-1998');

-- ROW 3 
INSERT INTO ORARENT_MOVIES(TITLE_ID,TITLE,DESCRIPTION,RATING,CATEGORY,RELEASE_DATE)
VALUES  (TITLE_ID_SEQUENCE.NEXTVAL, 'Mission Impossible', 'An American agent, under false suspicion of disloyalty, must discover and expose the real spy without the help of his organization.', 'PG13', 'ACTION', '22-JUN-1996');

-- ROW 4
INSERT INTO ORARENT_MOVIES(TITLE_ID,TITLE,DESCRIPTION,RATING,CATEGORY,RELEASE_DATE)
VALUES  (TITLE_ID_SEQUENCE.NEXTVAL, 'The Matrix', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.', 'R', 'ACTION', '22-APR-1999');

-- ROW 5
INSERT INTO ORARENT_MOVIES(TITLE_ID,TITLE,DESCRIPTION,RATING,CATEGORY,RELEASE_DATE)
VALUES  (TITLE_ID_SEQUENCE.NEXTVAL, 'Shrek', 'After his swamp is filled with magical creatures, an ogre agrees to rescue a princess for a villainous lord in order to get his land back.', 'PG', 'COMEDY', '07-JUN-2001');

-- ROW 6
INSERT INTO ORARENT_MOVIES(TITLE_ID,TITLE,DESCRIPTION,RATING,CATEGORY,RELEASE_DATE)
VALUES  (TITLE_ID_SEQUENCE.NEXTVAL, 'Avatar', 'A paraplegic marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.', 'PG13', 'ACTION', '18-DEC-2009');




-- ORARENT MEDIA INSERTS
-- ROW 1
INSERT INTO ORARENT_MEDIA(MEDIA_ID, FORMAT, TITLE_ID)
VALUES  (MEDIA_ID_SEQUENCE.NEXTVAL, 'DVD', 6);

-- ROW 2
INSERT INTO ORARENT_MEDIA(MEDIA_ID, FORMAT, TITLE_ID)
VALUES  (MEDIA_ID_SEQUENCE.NEXTVAL, 'VHS', 6);

-- ROW 3
INSERT INTO ORARENT_MEDIA(MEDIA_ID, FORMAT, TITLE_ID)
VALUES  (MEDIA_ID_SEQUENCE.NEXTVAL, 'DVD', 5);

-- ROW 4
INSERT INTO ORARENT_MEDIA(MEDIA_ID, FORMAT, TITLE_ID)
VALUES  (MEDIA_ID_SEQUENCE.NEXTVAL, 'VHS', 5);

-- ROW 5
INSERT INTO ORARENT_MEDIA(MEDIA_ID, FORMAT, TITLE_ID)
VALUES  (MEDIA_ID_SEQUENCE.NEXTVAL, 'DVD', 4);

-- ROW 6
INSERT INTO ORARENT_MEDIA(MEDIA_ID, FORMAT, TITLE_ID)
VALUES  (MEDIA_ID_SEQUENCE.NEXTVAL, 'VHS', 4);




-- ORARENT RENTAL HISTORY INSERTS
-- ROW 1
INSERT INTO ORARENT_RENTAL_HISTORY(MEDIA_ID, RENTAL_DATE, CUSTOMER_ID, RETURN_DATE)
VALUES ( 92, '01-JAN-2021', 101, '05-JAN-2021');
   
-- ROW 2
INSERT INTO ORARENT_RENTAL_HISTORY(MEDIA_ID, RENTAL_DATE, CUSTOMER_ID, RETURN_DATE)
VALUES ( 93, '01-JAN-2021', 102, '05-JAN-2021');

-- ROW 3
INSERT INTO ORARENT_RENTAL_HISTORY(MEDIA_ID, RENTAL_DATE, CUSTOMER_ID, RETURN_DATE)
VALUES (94, '19-SEP-2022', 103, '22-SEP-2022');

-- ROW 4
INSERT INTO ORARENT_RENTAL_HISTORY(MEDIA_ID, RENTAL_DATE, CUSTOMER_ID, RETURN_DATE)
VALUES (95, '03-MAR-2022', 104, '07-MAR-2022');


-- ROW 5 
INSERT INTO ORARENT_RENTAL_HISTORY(MEDIA_ID, RENTAL_DATE, CUSTOMER_ID, RETURN_DATE)
VALUES (92, '09-DEC-2022', 105, NULL);

-- ROW 6
INSERT INTO ORARENT_RENTAL_HISTORY(MEDIA_ID, RENTAL_DATE, CUSTOMER_ID, RETURN_DATE)
VALUES (95, '09-DEC-2022', 105, NULL);



-- ORARENT ACTORS INSERTS
-- ROW 1
INSERT INTO ORARENT_ACTORS(ACTOR_ID,STAGE_NAME,FIRST_NAME,LAST_NAME,BIRTH_DATE)
VALUES    (ACTOR_ID_SEQUENCE.NEXTVAL, 'Tom Hanks', 'Thomas', 'Hanks', '09-Jul-1956');

-- ROW 2
INSERT INTO ORARENT_ACTORS(ACTOR_ID,STAGE_NAME,FIRST_NAME,LAST_NAME,BIRTH_DATE)
VALUES    (ACTOR_ID_SEQUENCE.NEXTVAL, 'Jim Carrey', 'James', 'Carrey', '17-Jan-1962');

-- ROW 3
INSERT INTO ORARENT_ACTORS(ACTOR_ID,STAGE_NAME,FIRST_NAME,LAST_NAME,BIRTH_DATE)
VALUES    (ACTOR_ID_SEQUENCE.NEXTVAL, 'Keanu Reeves', 'Keanu', 'Reeves', '02-Sep-1964');

-- ROW 4
INSERT INTO ORARENT_ACTORS(ACTOR_ID,STAGE_NAME,FIRST_NAME,LAST_NAME,BIRTH_DATE)
VALUES    (ACTOR_ID_SEQUENCE.NEXTVAL, 'Sam Worthington', 'Samuel', 'Worthington', '02-Aug-1976');

-- ROW 5
INSERT INTO ORARENT_ACTORS(ACTOR_ID,STAGE_NAME,FIRST_NAME,LAST_NAME,BIRTH_DATE)
VALUES    (ACTOR_ID_SEQUENCE.NEXTVAL, 'Eddie Murphy', 'Edward', 'Murphy', '03-Apr-1961');

-- ROW 6
INSERT INTO ORARENT_ACTORS(ACTOR_ID,STAGE_NAME,FIRST_NAME,LAST_NAME,BIRTH_DATE)
VALUES    (ACTOR_ID_SEQUENCE.NEXTVAL, 'Tom Cruise', 'Thomas', 'Cruise', '03-Jul-1962');




-- ORARENT STAR BILLINGS INSERTS
-- ROW 1
INSERT INTO ORARENT_STAR_BILLINGS(ACTOR_ID, TITLE_ID, COMMENTS)
VALUES  (1001, 1, 'Tom Hanks plays the role of Forrest Gump');

-- ROW 2
INSERT INTO ORARENT_STAR_BILLINGS(ACTOR_ID, TITLE_ID, COMMENTS)
VALUES  (1002, 2, 'Jim Carrey is Truman Burbank');

-- ROW 3 
INSERT INTO ORARENT_STAR_BILLINGS(ACTOR_ID, TITLE_ID, COMMENTS)
VALUES  (1003, 4, 'Keanu Reeves is Neo in The Matrix');

-- ROW 4
INSERT INTO ORARENT_STAR_BILLINGS(ACTOR_ID, TITLE_ID, COMMENTS)
VALUES  (1004, 6, 'Sam Worthington is Jake Sully in Avatar');

-- ROW 5 
INSERT INTO ORARENT_STAR_BILLINGS(ACTOR_ID, TITLE_ID, COMMENTS)
VALUES  (1005, 5, 'Eddie Murphy is Donkey in Shrek');

-- ROW 6 
INSERT INTO ORARENT_STAR_BILLINGS(ACTOR_ID, TITLE_ID, COMMENTS)
VALUES  (1006, 3, 'Tom Cruise is Ethan Hunt');