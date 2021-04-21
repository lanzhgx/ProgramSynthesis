DROP TABLE IF EXISTS part;

CREATE TABLE PART  ( P_PARTKEY     INTEGER NOT NULL,
                          P_NAME        VARCHAR(55) NOT NULL,
                          P_MFGR        CHAR(25) NOT NULL,
                          P_BRAND       CHAR(10) NOT NULL,
                          P_TYPE        VARCHAR(25) NOT NULL,
                          P_SIZE        INTEGER NOT NULL,
                          P_CONTAINER   CHAR(10) NOT NULL,
                          P_RETAILPRICE DECIMAL(15,2) NOT NULL,
                          P_COMMENT     VARCHAR(23) NOT NULL );

INSERT INTO part VALUES
(1, 'pname1', 'pmfgr1', 'Brand#45', 'ptype1', 49, 'pcontain1', 1.1, 'pcomment1'),
(2, 'pname2', 'pmfgr2', 'Brand#4', 'MEDIUM POLISHED', 14, 'pcontain2', 2.2, 'pcomment2'),
(3, 'pname3', 'pmfgr3', 'Brand#5', 'ptype1', 23, 'pcontain1', 1.1, 'pcomment3'),
(4, 'pname4', 'pmfgr4', 'Brand#32', 'ptype1', 45, 'pcontain1', 1.1, 'pcomment4'),
(5, 'pname5', 'pmfgr5', 'Brand#52', 'ptype1', 19, 'pcontain1', 1.1, 'pcomment5'),
(6, 'pname6', 'pmfgr6', 'Brand#1', 'ptype1', 3, 'pcontain1', 1.1, 'pcomment6'),
(7, 'pname7', 'pmfgr7', 'Brand#6', 'ptype1', 36, 'pcontain1', 1.1, 'pcomment7'),
(8, 'pname8', 'pmfgr8', 'Brand#63', 'ptype1', 10, 'pcontain1', 1.1, 'pcomment8');

DROP TABLE IF EXISTS partsupp;

CREATE TABLE PARTSUPP ( PS_PARTKEY     INTEGER NOT NULL,
                             PS_SUPPKEY     INTEGER NOT NULL,
                             PS_AVAILQTY    INTEGER NOT NULL,
                             PS_SUPPLYCOST  DECIMAL(15,2)  NOT NULL,
                             PS_COMMENT     VARCHAR(199) NOT NULL );

INSERT INTO partsupp VALUES
(1, 2, 3325, 771.64, 'pscomment1'),
(1, 25002, 8076, 993.49, 'pscomment2'),
(1, 50002, 3956, 337.09, 'pscomment3'), 
(1, 75002, 4069, 357.84, 'pscomment4'),
(2, 2, 3325, 771.64, 'pscomment1'),
(2, 25002, 8076, 993.49, 'pscomment2'),
(2, 50002, 3956, 337.09, 'pscomment3'), 
(2, 75002, 4069, 357.84, 'pscomment4'),
(3, 2, 3325, 771.64, 'pscomment1'),
(3, 25002, 8076, 993.49, 'pscomment2'),
(3, 50002, 3956, 337.09, 'pscomment3'), 
(3, 75002, 4069, 357.84, 'pscomment4'),
(4, 2, 3325, 771.64, 'pscomment1'),
(4, 25002, 8076, 993.49, 'pscomment2'),
(4, 50002, 3956, 337.09, 'pscomment3'), 
(4, 75002, 4069, 357.84, 'pscomment4'),
(5, 2, 3325, 771.64, 'pscomment1'),
(5, 25002, 8076, 993.49, 'pscomment2'),
(5, 50002, 3956, 337.09, 'pscomment3'), 
(5, 75002, 4069, 357.84, 'pscomment4'),
(6, 2, 3325, 771.64, 'pscomment1'),
(6, 25002, 8076, 993.49, 'pscomment2'),
(6, 50002, 3956, 337.09, 'pscomment3'), 
(6, 75002, 4069, 357.84, 'pscomment4'),
(7, 2, 3325, 771.64, 'pscomment1'),
(7, 25002, 8076, 993.49, 'pscomment2'),
(7, 50002, 3956, 337.09, 'pscomment3'), 
(7, 75002, 4069, 357.84, 'pscomment4'),
(8, 2, 3325, 771.64, 'pscomment1'),
(8, 25002, 8076, 993.49, 'pscomment2'),
(8, 50002, 3956, 337.09, 'pscomment3'), 
(8, 75002, 4069, 357.84, 'pscomment4');

DROP TABLE IF EXISTS supplier;

CREATE TABLE SUPPLIER ( S_SUPPKEY     INTEGER NOT NULL,
                             S_NAME        CHAR(25) NOT NULL,
                             S_ADDRESS     VARCHAR(40) NOT NULL,
                             S_NATIONKEY   INTEGER NOT NULL,
                             S_PHONE       CHAR(15) NOT NULL,
                             S_ACCTBAL     DECIMAL(15,2) NOT NULL,
                             S_COMMENT     VARCHAR(101) NOT NULL);

INSERT INTO supplier VALUES
(2, 'sname2', 'saddress2', 0, '123456789012345', 1.0, 'sadfjsadj Customer Complaints fsdljf'),
(25002, 'sname25002', 'saddress25002', 0, '123456789012345', 1.0, 'sadfjsadj fsdljf'),
(50002, 'sname50002', 'saddress50002', 0, '123456789012345', 1.0, 'sadfjsadj  fsdljf'),
(75002, 'sname75002', 'saddress75002', 0, '123456789012345', 1.0, 'sadfjsadj  fsdljf');