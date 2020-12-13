drop table if exists REFRIGERATOR;
drop table if exists FOOD;
drop table if exists SUPPLIER;
drop table if exists PRODUCT;
drop table if exists DILIVER;


Create Table REFRIGERATOR
    (RID			INTEGER PRIMARY KEY AUTOINCREMENT, 	
	 RPW			INTEGER,
     ADRESS			VARCHAR(250),
     AGREE 			INTEGER 		DEFAULT 0
    );

CREATE TABLE FOOD
    (FID 	INTEGER PRIMARY KEY AUTOINCREMENT,
    FRID	INTEGER,
    FNAME	VARCHAR(250),
    CNT	    INTEGER,
    FDATE	INTEGER,
    FOREIGN KEY(FRID) REFERENCES REFRIGERATOR(RID)
    ); 

CREATE TABLE SUPPLIER
    (SID	INTEGER PRIMARY KEY AUTOINCREMENT,
    SPW		INTEGER		NOT NULL,
    DFEE	INTEGER,
    SNAME	VARCHAR(250),
    UNIQUE(SNAME)
    ); 

CREATE TABLE PRODUCT
    (PID	 	INTEGER PRIMARY KEY AUTOINCREMENT,
    PSID		INTEGER		NOT NULL,
    PNAME		VARCHAR(250),
    PRICE		INTEGER,
    PDATE		INTEGER,
    FOREIGN KEY (PSID) REFERENCES SUPPLIER(SID)
    ); 

CREATE TABLE DILIVER
    (DID	INTEGER PRIMARY KEY AUTOINCREMENT,
    PID		INTEGER		NOT NULL,
    RID		INTEGER		NOT NULL,
    SID		INTEGER	NOT NULL,
    ADRESS			VARCHAR(250),
    ORDER_DATE		INTEGER,
    COST	INTEGER		DEFAULT 0,
    UNIQUE(PID),
    UNIQUE(RID),
    UNIQUE(SID),
    FOREIGN KEY (PID) REFERENCES PRODUCT(PID),
    FOREIGN KEY (RID) REFERENCES REFRIGERATOR(RID),
    FOREIGN KEY (SID) REFERENCES SUPPLIER(SID)
    ); 
