DROP TABLE IF EXISTS PARTY_USERS;
DROP TABLE IF EXISTS QUESTION_SELECTION;
DROP TABLE IF EXISTS SELECTION;
DROP TABLE IF EXISTS VOTE_QUESTION;
DROP TABLE IF EXISTS QUESTION;
DROP TABLE IF EXISTS VOTE;
DROP TABLE IF EXISTS PARTY;
DROP TABLE IF EXISTS USERS;

CREATE TABLE USERS(
		USER_ID                       		VARCHAR(20)		 NOT NULL		 PRIMARY KEY,
		NAME                          		VARCHAR(20)		 NOT NULL,
		BIRTH                         		DATE		 NULL ,
		GENDER                        		INTEGER(1)		 NULL ,
		PHONE                         		VARCHAR(13)		 NULL ,
		ADDRESS                       		VARCHAR(100)		 NULL ,
		EMAIL                         		VARCHAR(30)		 NULL ,
		PASS_HASH                     		VARCHAR(50)		 NOT NULL
);

CREATE TABLE PARTY(
		PARTY_ID                      		VARCHAR(20)		 NOT NULL		 PRIMARY KEY,
		PARTY_USER                    		VARCHAR(20)		 NOT NULL,
		PARTY_CON                     		VARCHAR(100)		 NULL 
);

CREATE TABLE VOTE(
		VOTE_ID                       		VARCHAR(20)		 NOT NULL		 PRIMARY KEY,
		VOTE_USER                     		VARCHAR(10)		 NOT NULL,
		TITLE                         		VARCHAR(20)		 NOT NULL,
		START_DATE                    		DATE		 NOT NULL,
		END_DATE                      		DATE		 NOT NULL,
		MAX_PEOPLE                    		VARCHAR(10)		 NULL ,
		CONTENT                       		VARCHAR(50)		 NULL ,
		PARTY_ID                      		VARCHAR(20)		 NULL ,
		EMAGE1                        		VARCHAR(100)		 NULL ,
		EMAGE2                        		VARCHAR(100)		 NULL ,
  FOREIGN KEY (PARTY_ID) REFERENCES PARTY (PARTY_ID)
);

CREATE TABLE QUESTION(
		QUESTION_ID                   		VARCHAR(20)		 NOT NULL		 PRIMARY KEY,
		QUESTION_CON                  		VARCHAR(100)		 NULL 
);

CREATE TABLE VOTE_QUESTION(
		VQ_ID                         		VARCHAR(20)		 NULL 		 PRIMARY KEY,
		VOTE_ID                       		VARCHAR(20)		 NOT NULL,
		QUESTION_ID                   		VARCHAR(20)		 NOT NULL,
  FOREIGN KEY (VOTE_ID) REFERENCES VOTE (VOTE_ID),
  FOREIGN KEY (QUESTION_ID) REFERENCES QUESTION (QUESTION_ID)
);

CREATE TABLE SELECTION(
		SELECT_ID                     		VARCHAR(20)		 NULL 		 PRIMARY KEY,
		SELECT_CON                    		VARCHAR(100)		 NULL 
);

CREATE TABLE QUESTION_SELECTION(
		QS_ID                         		VARCHAR(20)		 NOT NULL		 PRIMARY KEY,
		QUESTION_ID                   		VARCHAR(20)		 NOT NULL,
		SELECT_ID                     		VARCHAR(20)		 NOT NULL,
  FOREIGN KEY (QUESTION_ID) REFERENCES QUESTION (QUESTION_ID),
  FOREIGN KEY (SELECT_ID) REFERENCES SELECTION (SELECT_ID)
);

CREATE TABLE PARTY_USERS(
		PU_ID                         		VARCHAR(20)		 NULL 		 PRIMARY KEY,
		PARTY_ID                      		VARCHAR(20)		 NOT NULL,
		USER_ID                       		VARCHAR(20)		 NOT NULL,
  FOREIGN KEY (PARTY_ID) REFERENCES PARTY (PARTY_ID),
  FOREIGN KEY (USER_ID) REFERENCES USERS (USER_ID)
);

