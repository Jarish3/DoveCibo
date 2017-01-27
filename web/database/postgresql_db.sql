CREATE TABLE USERS (
	ID SERIAL,
	NAME VARCHAR(255),
	SURNAME VARCHAR(255),
	NICKNAME VARCHAR(25),
	EMAIL VARCHAR(254) NOT NULL,
	PASSWORD VARCHAR(255) NOT NULL,
	ROLE VARCHAR(10),
        LOVE INTEGER,
	PRIMARY KEY (ID),
	UNIQUE (NICKNAME),
	UNIQUE (EMAIL)
);

CREATE TABLE RESTAURANTS (
	ID SERIAL,
	NAME VARCHAR(255) NOT NULL,
	DESCRIPTION VARCHAR(32000),
	WEB_SITE_URL VARCHAR(255),
	GLOBAL_VALUE FLOAT CONSTRAINT GLOBAL_VALUE_CHECK CHECK (GLOBAL_VALUE>= 0 AND GLOBAL_VALUE <= 5),
	N_REVIEWS INTEGER,
        LOVE INTEGER,
	ID_CREATOR INTEGER NOT NULL,
	PRIMARY KEY (ID),
        FOREIGN KEY (ID_CREATOR) REFERENCES USERS (ID)
);

CREATE TABLE PRICE_RANGES (
	ID_RESTAURANT SERIAL,
	MIN_VALUE FLOAT,
	MAX_VALUE FLOAT,
	PRIMARY KEY (ID_RESTAURANT),
	FOREIGN KEY (ID_RESTAURANT) REFERENCES RESTAURANTS (ID),
	CONSTRAINT PRICE_RANGE_CHECK CHECK ((MIN_VALUE IS NULL AND MAX_VALUE IS NOT
	NULL) OR (MIN_VALUE IS
	NOT NULL AND MAX_VALUE IS NULL) OR (MIN_VALUE < MAX_VALUE))
);

CREATE TABLE OPENING_HOURS_RANGES (
	ID_RESTAURANT SERIAL,
	START_HOUR_M INTEGER NOT NULL,
        START_MIN_M INTEGER NOT NULL,
	END_HOUR_M INTEGER NOT NULL,
        END_MIN_M INTEGER NOT NULL,
	START_HOUR_P INTEGER NOT NULL,
        START_MIN_P INTEGER NOT NULL,
	END_HOUR_P INTEGER NOT NULL,
        END_MIN_P INTEGER NOT NULL,
	PRIMARY KEY (ID_RESTAURANT),
	FOREIGN KEY (ID_RESTAURANT) REFERENCES RESTAURANTS (ID)
);

CREATE TABLE RESTAURANT_OWNER (
    ID SERIAL,
    ID_RESTAURANT INTEGER NOT NULL,
    ID_OWNER INTEGER NOT NULL,
    DATE_CREATION TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ID_VALIDATOR INTEGER,
    FOREIGN KEY (ID_RESTAURANT) REFERENCES RESTAURANTS (ID),
    FOREIGN KEY (ID_OWNER) REFERENCES USERS (ID),
    FOREIGN KEY (ID_VALIDATOR) REFERENCES USERS (ID)
);


CREATE TABLE PHOTOS (
	ID SERIAL,
	NAME VARCHAR(25) NOT NULL,
	DESCRIPTION VARCHAR (32000),
	PATH VARCHAR(255) NOT NULL,
	ID_RESTAURANT INTEGER NOT NULL,
	ID_OWNER INTEGER NOT NULL,
        DATE_CREATION TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	VALIDATION INTEGER,
	PRIMARY KEY (ID),
	FOREIGN KEY (ID_RESTAURANT) REFERENCES RESTAURANTS (ID),
	FOREIGN KEY (ID_OWNER) REFERENCES USERS (ID)
);

CREATE TABLE REVIEWS (
	ID SERIAL,
	GLOBAL_VALUE INTEGER NOT NULL CONSTRAINT REVIEW_GLOBAL_VALUE_CHECK CHECK (GLOBAL_VALUE >= 1	AND GLOBAL_VALUE <= 5),
	FOOD INTEGER CONSTRAINT REVIEW_FOOD_CHECK CHECK (FOOD IS NULL OR (FOOD>= 1 AND FOOD <=5)),
	SERVICE INTEGER CONSTRAINT REVIEW_SERVICE_CHECK CHECK (SERVICE IS NULL OR (SERVICE >= 1 AND SERVICE <= 5)),
	VALUE_FOR_MONEY INTEGER CONSTRAINT REVIEW_VALUE_FOR_MONEY_CHECK CHECK(VALUE_FOR_MONEY IS NULL OR (VALUE_FOR_MONEY >= 1 AND VALUE_FOR_MONEY <= 5)),
	ATMOSPHERE INTEGER CONSTRAINT REVIEW_ATMOSPHERE_CHECK CHECK (ATMOSPHERE IS NULL OR (ATMOSPHERE >= 1 AND ATMOSPHERE <= 5)),
	NAME VARCHAR(25),
	DESCRIPTION VARCHAR(32000),
        LOVE INTEGER,
	DATE_CREATION TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	ID_RESTAURANT INTEGER NOT NULL,
	ID_CREATOR INTEGER NOT NULL,
	PRIMARY KEY (ID),
	FOREIGN KEY (ID_RESTAURANT) REFERENCES RESTAURANTS (ID),
	FOREIGN KEY (ID_CREATOR) REFERENCES USERS (ID)
);

CREATE TABLE COORDINATES (
	ID_RESTAURANT SERIAL,
	LATITUDE FLOAT NOT NULL,
	LONGITUDE FLOAT NOT NULL,
	ADDRESS VARCHAR(255) NOT NULL,
        NUMERO INTEGER NOT NULL,
        CITY VARCHAR(255) NOT NULL,
        NAZIONE VARCHAR(255) NOT NULL,
	PRIMARY KEY (ID_RESTAURANT),
	FOREIGN KEY (ID_RESTAURANT) REFERENCES RESTAURANTS (ID)
);

CREATE TABLE CUISINES (
	ID SERIAL,
	NAME VARCHAR(25) NOT NULL,
	PRIMARY KEY (ID)
);

CREATE TABLE RESTAURANT_CUISINE (
	ID SERIAL,
	ID_RESTAURANT INTEGER NOT NULL,
	ID_CUISINE INTEGER NOT NULL,
	PRIMARY KEY (ID),
	FOREIGN KEY (ID_RESTAURANT) REFERENCES RESTAURANTS (ID),
	FOREIGN KEY (ID_CUISINE) REFERENCES CUISINES (ID)
);

CREATE TABLE LOVE_USER (
	ID SERIAL,
	ID_RESTAURANT INTEGER NOT NULL,
	ID_USER INTEGER NOT NULL,
	PRIMARY KEY (ID),
	FOREIGN KEY (ID_RESTAURANT) REFERENCES RESTAURANTS (ID),
	FOREIGN KEY (ID_USER) REFERENCES USERS (ID)
);



CREATE TABLE REPLIES (
	ID SERIAL,
	DESCRIPTION VARCHAR(32000) NOT NULL,
	DATE_CREATION TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	ID_REVIEW INTEGER NOT NULL,
	ID_OWNER INTEGER NOT NULL,
	DATE_VALIDATION TIMESTAMP,
	ID_VALIDATOR INTEGER,
	PRIMARY KEY (ID),
	FOREIGN KEY (ID_REVIEW) REFERENCES REVIEWS (ID),
	FOREIGN KEY (ID_OWNER) REFERENCES USERS (ID),
	FOREIGN KEY (ID_VALIDATOR) REFERENCES USERS (ID)
);


INSERT INTO CUISINES (ID, NAME) VALUES (1,'pizzeria');
INSERT INTO CUISINES (ID, NAME) VALUES (2,'trattoria');
INSERT INTO CUISINES (ID, NAME) VALUES (3,'ristorante');
INSERT INTO CUISINES (ID, NAME) VALUES (4,'disco restaurant');
INSERT INTO CUISINES (ID, NAME) VALUES (5,'straniera');
INSERT INTO CUISINES (ID, NAME) VALUES (6,'altro');

INSERT INTO users(id,name,surname,nickname,email,password,role,LOVE) VALUES(DEFAULT, 'admin_name', 'admin_sur', 'admin', 'admin@admin.admin', 'admin', '1', 0);
INSERT INTO users(id,name,surname,nickname,email,password,role,LOVE) VALUES(DEFAULT, 'risto_name', 'risto_sur', 'risto', 'risto@risto.risto', 'risto', '3', 0);
INSERT INTO users(id,name,surname,nickname,email,password,role,LOVE) VALUES(DEFAULT, 'user_name', 'user_sur', 'user', 'user@user.user', 'user', '3', 0);