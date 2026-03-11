-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLESPACE DBHOSTTEMPS_32K';
END

-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLESPACE DBHOSTTEMPU_32K';
END

-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLESPACE DBHOST_32K';
END

-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP BUFFERPOOL DBHOST_32K';
END

-- DB2 DB2.LUW DB2LUW

CREATE BUFFERPOOL DBHOST_32K IMMEDIATE SIZE 250 AUTOMATIC PAGESIZE 32K;

-- DB2 DB2.LUW DB2LUW

CREATE LARGE TABLESPACE DBHOST_32K PAGESIZE 32K MANAGED BY AUTOMATIC STORAGE EXTENTSIZE 32 PREFETCHSIZE 32 BUFFERPOOL DBHOST_32K;

-- DB2 DB2.LUW DB2LUW

CREATE USER TEMPORARY TABLESPACE DBHOSTTEMPU_32K PAGESIZE 32K MANAGED BY AUTOMATIC STORAGE BUFFERPOOL DBHOST_32K;

-- DB2 DB2.LUW DB2LUW

CREATE SYSTEM TEMPORARY TABLESPACE DBHOSTTEMPS_32K PAGESIZE 32K MANAGED BY AUTOMATIC STORAGE BUFFERPOOL DBHOST_32K;

-- DB2 DB2.LUW DB2LUW

DROP TABLE "Doctor"

-- DB2 DB2.LUW DB2LUW

DROP TABLE "Patient"

-- DB2 DB2.LUW DB2LUW

DROP TABLE "Person"

-- DB2 DB2.LUW DB2LUW

DROP TABLE "InheritanceParent"

-- DB2 DB2.LUW DB2LUW

CREATE TABLE "InheritanceParent"
(
	"InheritanceParentId" INTEGER       PRIMARY KEY NOT NULL,
	"TypeDiscriminator"   INTEGER                       NULL,
	"Name"                VARCHAR(50)                   NULL
)

-- DB2 DB2.LUW DB2LUW

DROP TABLE "InheritanceChild"

-- DB2 DB2.LUW DB2LUW

CREATE TABLE "InheritanceChild"
(
	"InheritanceChildId"  INTEGER      PRIMARY KEY NOT NULL,
	"InheritanceParentId" INTEGER                  NOT NULL,
	"TypeDiscriminator"   INTEGER                      NULL,
	"Name"                VARCHAR(50)                  NULL
)

-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Person"
(
	"PersonID"   INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY NOT NULL,
	"FirstName"  VARCHAR(50) NOT NULL,
	"LastName"   VARCHAR(50) NOT NULL,
	"MiddleName" VARCHAR(50),
	"Gender"     CHAR(1)     NOT NULL
)

-- DB2 DB2.LUW DB2LUW

INSERT INTO "Person" ("FirstName", "LastName", "Gender") VALUES ('John',   'Pupkin',    'M')

-- DB2 DB2.LUW DB2LUW

INSERT INTO "Person" ("FirstName", "LastName", "Gender") VALUES ('Tester', 'Testerson', 'M')

-- DB2 DB2.LUW DB2LUW

INSERT INTO "Person" ("FirstName", "LastName", "Gender") VALUES ('Jane',   'Doe',       'F')

-- DB2 DB2.LUW DB2LUW

INSERT INTO "Person" ("FirstName", "LastName", "MiddleName", "Gender") VALUES ('Jürgen', 'König', 'Ko', 'M')

-- DB2 DB2.LUW DB2LUW

-- Doctor Table Extension

CREATE TABLE "Doctor"
(
	"PersonID" INTEGER     PRIMARY KEY NOT NULL,
	"Taxonomy" VARCHAR(50) NOT NULL,

	FOREIGN KEY "FK_Doctor_Person" ("PersonID") REFERENCES "Person"
)

-- DB2 DB2.LUW DB2LUW

INSERT INTO "Doctor" ("PersonID", "Taxonomy") VALUES (1, 'Psychiatry')

-- DB2 DB2.LUW DB2LUW

DROP TABLE MasterTable

-- DB2 DB2.LUW DB2LUW

DROP TABLE SlaveTable

-- DB2 DB2.LUW DB2LUW

CREATE TABLE MasterTable
(
	ID1 INTEGER NOT NULL,
	ID2 INTEGER NOT NULL,
	PRIMARY KEY (ID1,ID2)
)

-- DB2 DB2.LUW DB2LUW

CREATE TABLE SlaveTable
(
	ID1    INTEGER NOT NULL,
	"ID 2222222222222222222222  22" INTEGER NOT NULL,
	"ID 2222222222222222"           INTEGER NOT NULL,
	FOREIGN KEY FK_SlaveTable_MasterTable ("ID 2222222222222222222222  22", ID1)
	REFERENCES MasterTable
)

-- DB2 DB2.LUW DB2LUW

-- Patient Table Extension

CREATE TABLE "Patient"
(
	"PersonID"  INTEGER      PRIMARY KEY NOT NULL,
	"Diagnosis" VARCHAR(256) NOT NULL,

	FOREIGN KEY "FK_Patient_Person" ("PersonID") REFERENCES "Person"
)

-- DB2 DB2.LUW DB2LUW

INSERT INTO "Patient" ("PersonID", "Diagnosis") VALUES (2, 'Hallucination with Paranoid Bugs'' Delirium of Persecution')

-- DB2 DB2.LUW DB2LUW

DROP TABLE "Parent"

-- DB2 DB2.LUW DB2LUW

DROP TABLE "Child"

-- DB2 DB2.LUW DB2LUW

DROP TABLE "GrandChild"

-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Parent"      ("ParentID" int, "Value1" int)

-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Child"       ("ParentID" int, "ChildID" int)

-- DB2 DB2.LUW DB2LUW

CREATE TABLE "GrandChild"  ("ParentID" int, "ChildID" int, "GrandChildID" int)

-- DB2 DB2.LUW DB2LUW

DROP TABLE "LinqDataTypes"

-- DB2 DB2.LUW DB2LUW

CREATE TABLE "LinqDataTypes"
(
	"ID"             int,
	"MoneyValue"     decimal(10,4),
	"DateTimeValue"  timestamp,
	"DateTimeValue2" timestamp   NULL,
	"BoolValue"      smallint,
	"GuidValue"      char(16) for bit DATA,
	"BinaryValue"    blob(5000)  NULL,
	"SmallIntValue"  smallint,
	"IntValue"       int         NULL,
	"BigIntValue"    bigint      NULL,
	"StringValue"    VARCHAR(50) NULL
)

-- DB2 DB2.LUW DB2LUW

DROP TABLE "TestIdentity"

-- DB2 DB2.LUW DB2LUW

CREATE TABLE "TestIdentity" (
	"ID"   INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY NOT NULL
)

-- DB2 DB2.LUW DB2LUW

DROP TABLE AllTypes

-- DB2 DB2.LUW DB2LUW

CREATE TABLE AllTypes
(
	ID INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY NOT NULL,

	bigintDataType           bigint                NULL,
	intDataType              int                   NULL,
	smallintDataType         smallint              NULL,
	decimalDataType          decimal(30)           NULL,
	decfloatDataType         decfloat              NULL,
	realDataType             real                  NULL,
	doubleDataType           double                NULL,

	charDataType             char(1)               NULL,
	char20DataType           char(20)              NULL,
	varcharDataType          varchar(20)           NULL,
	clobDataType             clob                  NULL,
	dbclobDataType           dbclob(100)           NULL,

	binaryDataType           char(5) for bit data,
	varbinaryDataType        varchar(5) for bit data,
	blobDataType             blob                  NULL,
	graphicDataType          graphic(10)           NULL,

	dateDataType             date                  NULL,
	timeDataType             time                  NULL,
	timestampDataType        timestamp             NULL,

	xmlDataType              xml                   NULL
)

-- DB2 DB2.LUW DB2LUW

INSERT INTO AllTypes (xmlDataType) VALUES (NULL)

-- DB2 DB2.LUW DB2LUW

INSERT INTO AllTypes
(
	bigintDataType,
	intDataType,
	smallintDataType,
	decimalDataType,
	decfloatDataType,
	realDataType,
	doubleDataType,

	charDataType,
	varcharDataType,
	clobDataType,
	dbclobDataType,

	binaryDataType,
	varbinaryDataType,
	blobDataType,
	graphicDataType,

	dateDataType,
	timeDataType,
	timestampDataType,

	xmlDataType
)
VALUES
(
	1000000,
	7777777,
	100,
	9999999,
	8888888,
	20.31,
	16.2,

	'1',
	'234',
	'55645',
	'6687',

	'123',
	'1234',
	Cast('234' as blob),
	'23',

	Cast('2012-12-12' as date),
	Cast('12:12:12' as time),
	Cast('2012-12-12 12:12:12.012' as timestamp),

	'<root><element strattr="strvalue" intattr="12345"/></root>'
)

-- DB2 DB2.LUW DB2LUW

CREATE OR REPLACE VIEW PersonView
AS
SELECT * FROM "Person"

-- DB2 DB2.LUW DB2LUW

CREATE OR REPLACE Procedure Person_SelectByKey(in ID integer)
RESULT SETS 1
LANGUAGE SQL
BEGIN
	DECLARE C1 CURSOR WITH RETURN TO CLIENT FOR
		SELECT * FROM "Person" WHERE "PersonID" = ID;

	OPEN C1;
END

-- DB2 DB2.LUW DB2LUW

DROP TABLE "TestMerge1"

-- DB2 DB2.LUW DB2LUW

DROP TABLE "TestMerge2"

-- DB2 DB2.LUW DB2LUW

CREATE TABLE "TestMerge1"
(
	"Id"       INTEGER            PRIMARY KEY NOT NULL,
	"Field1"   INTEGER                            NULL,
	"Field2"   INTEGER                            NULL,
	"Field3"   INTEGER                            NULL,
	"Field4"   INTEGER                            NULL,
	"Field5"   INTEGER                            NULL,

	"FieldInt64"      BIGINT                      NULL,
	"FieldBoolean"    SMALLINT                    NULL,
	"FieldString"     VARCHAR(20)                 NULL,
	"FieldNString"    NVARCHAR(20)                NULL,
	"FieldChar"       CHAR(1)                     NULL,
	"FieldNChar"      NCHAR(1)                    NULL,
	"FieldFloat"      REAL                        NULL,
	"FieldDouble"     DOUBLE                      NULL,
	"FieldDateTime"   TIMESTAMP(3)                NULL,
	"FieldBinary"     VARCHAR(20)  FOR BIT DATA       ,
	"FieldGuid"       CHAR(16)     FOR BIT DATA       ,
	"FieldDecimal"    DECIMAL(24, 10)             NULL,
	"FieldDate"       DATE                        NULL,
	"FieldTime"       TIME                        NULL,
	"FieldEnumString" VARCHAR(20)                 NULL,
	"FieldEnumNumber" INT                         NULL
)

-- DB2 DB2.LUW DB2LUW

CREATE TABLE "TestMerge2"
(
	"Id"       INTEGER            PRIMARY KEY NOT NULL,
	"Field1"   INTEGER                            NULL,
	"Field2"   INTEGER                            NULL,
	"Field3"   INTEGER                            NULL,
	"Field4"   INTEGER                            NULL,
	"Field5"   INTEGER                            NULL,

	"FieldInt64"      BIGINT                      NULL,
	"FieldBoolean"    SMALLINT                    NULL,
	"FieldString"     VARCHAR(20)                 NULL,
	"FieldNString"    NVARCHAR(20)                NULL,
	"FieldChar"       CHAR(1)                     NULL,
	"FieldNChar"      NCHAR(1)                    NULL,
	"FieldFloat"      REAL                        NULL,
	"FieldDouble"     DOUBLE                      NULL,
	"FieldDateTime"   TIMESTAMP(3)                NULL,
	"FieldBinary"     VARCHAR(20)  FOR BIT DATA       ,
	"FieldGuid"       CHAR(16)     FOR BIT DATA       ,
	"FieldDecimal"    DECIMAL(24, 10)             NULL,
	"FieldDate"       DATE                        NULL,
	"FieldTime"       TIME                        NULL,
	"FieldEnumString" VARCHAR(20)                 NULL,
	"FieldEnumNumber" INT                         NULL
)

-- DB2 DB2.LUW DB2LUW

DROP TABLE "KeepIdentityTest"

-- DB2 DB2.LUW DB2LUW

CREATE TABLE "KeepIdentityTest" (
	"ID"    INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY NOT NULL,
	"Value" INTEGER                                                  NULL
)

-- DB2 DB2.LUW DB2LUW

CREATE OR REPLACE Procedure AddIssue792Record()
LANGUAGE SQL
BEGIN
	INSERT INTO AllTypes(char20DataType) VALUES('issue792');
END

-- DB2 DB2.LUW DB2LUW

DROP TABLE "CollatedTable"

-- DB2 DB2.LUW DB2LUW

CREATE TABLE "CollatedTable"
(
	"Id"				INT NOT NULL,
	"CaseSensitive"		NVARCHAR(20) NOT NULL,
	"CaseInsensitive"	NVARCHAR(20) NOT NULL
)

-- DB2 DB2.LUW DB2LUW

CREATE OR REPLACE MODULE TEST_MODULE1

-- DB2 DB2.LUW DB2LUW

ALTER MODULE TEST_MODULE1 PUBLISH
	FUNCTION TEST_FUNCTION(i INT) RETURNS INT
	RETURN i + 1

-- DB2 DB2.LUW DB2LUW

ALTER MODULE TEST_MODULE1 PUBLISH
	FUNCTION TEST_TABLE_FUNCTION(i INT) RETURNS TABLE(O INT)
	RETURN SELECT i + 1 FROM "Person"

-- DB2 DB2.LUW DB2LUW

ALTER MODULE TEST_MODULE1 PUBLISH
	PROCEDURE TEST_PROCEDURE(i INT)
	RESULT SETS 1
	BEGIN
		DECLARE C1 CURSOR WITH RETURN TO CLIENT FOR
		SELECT i + 1 FROM SYSIBM.SYSDUMMY1;
		OPEN C1;
	END

-- DB2 DB2.LUW DB2LUW

CREATE OR REPLACE MODULE TEST_MODULE2

-- DB2 DB2.LUW DB2LUW

ALTER MODULE TEST_MODULE2 PUBLISH
	FUNCTION TEST_FUNCTION(i INT) RETURNS INT
	RETURN i + 2

-- DB2 DB2.LUW DB2LUW

ALTER MODULE TEST_MODULE2 PUBLISH
	FUNCTION TEST_TABLE_FUNCTION(i INT) RETURNS TABLE(O INT)
	RETURN SELECT i + 2 FROM "Person"

-- DB2 DB2.LUW DB2LUW

ALTER MODULE TEST_MODULE2 PUBLISH
	PROCEDURE TEST_PROCEDURE(i INT)
	RESULT SETS 1
	BEGIN
		DECLARE C1 CURSOR WITH RETURN TO CLIENT FOR
		SELECT i + 2 FROM SYSIBM.SYSDUMMY1;
		OPEN C1;
	END

-- DB2 DB2.LUW DB2LUW

CREATE OR REPLACE FUNCTION TEST_FUNCTION(i INT) RETURNS INT
RETURN i + 3

-- DB2 DB2.LUW DB2LUW

CREATE OR REPLACE FUNCTION TEST_TABLE_FUNCTION(i INT) RETURNS TABLE(O INT)
RETURN SELECT i + 3 FROM "Person"

-- DB2 DB2.LUW DB2LUW

CREATE OR REPLACE PROCEDURE TEST_PROCEDURE(i INT)
RESULT SETS 1
BEGIN
	DECLARE C1 CURSOR WITH RETURN TO CLIENT FOR
	SELECT i + 3 FROM SYSIBM.SYSDUMMY1;
	OPEN C1;
END

-- DB2 DB2.LUW DB2LUW

INSERT INTO "LinqDataTypes"
(
	ID,
	"MoneyValue",
	"DateTimeValue",
	"DateTimeValue2",
	"BoolValue",
	"GuidValue",
	"SmallIntValue",
	"IntValue",
	"BigIntValue",
	"StringValue"
)
VALUES
(1,1.11,'2001-01-11-01.11.21.100000',NULL,1,BX'659112EFFE6FF94DBB6BBB16E413C883',1,NULL,1,NULL),
(2,2.49,'2005-05-15-05.15.25.500000',NULL,0,BX'613A66BC407B8146AC38F9AAF55B706B',2,NULL,2,''),
(3,3.99,'2009-09-19-09.19.29.090000',NULL,1,BX'C070F9D2AC3587499CD55BADB1757436',3,NULL,NULL,'1'),
(4,4.50,'2009-09-20-09.19.29.090000',NULL,0,BX'DB2F934043154A4EAC2CCA371604FB4B',4,NULL,NULL,'2'),
(5,5.50,'2009-09-20-09.19.29.090000',NULL,1,BX'CA3EBEFE5FCBB240AD392979D312AFCA',5,NULL,NULL,'3'),
(6,6.55,'2009-09-22-09.19.29.090000',NULL,0,BX'1D5D3C8DDB4730479FE7968F6228A4C0',6,NULL,NULL,'4'),
(7,7.00,'2009-09-23-09.19.29.090000',NULL,1,BX'15410948AF83DD46A906BFF26EE21EE2',7,NULL,NULL,'5'),
(8,8.99,'2009-09-24-09.19.29.090000',NULL,0,BX'1F9F13C13513D44C937E92602F732DD3',8,NULL,NULL,'6'),
(9,9.63,'2009-09-25-09.19.29.090000',NULL,1,BX'12C5C5464B3DF74CB4E71DE080789E5D',9,NULL,NULL,'7'),
(10,10.77,'2009-09-26-09.19.29.090000',NULL,0,BX'55BCB2617F14404B93EDA4AA83602FEE',10,NULL,NULL,'8'),
(11,11.45,'2009-09-27-00.00.00.000000',NULL,1,BX'181D02D3F097C04D98D0F0C7DF4A1230',11,NULL,NULL,'9'),
(12,11.45,'2012-11-07-19.19.29.090000',NULL,1,BX'181D0203F097C04D98D0F0C7DF4A1230',12,NULL,NULL,'0')

-- DB2 DB2.LUW DB2LUW

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(1,1),
(2,NULL),
(3,3),
(4,NULL),
(5,5),
(6,6),
(7,1)

-- DB2 DB2.LUW DB2LUW

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
VALUES
(1,11),
(2,21),
(2,22),
(3,31),
(3,32),
(3,33),
(4,41),
(4,42),
(4,43),
(4,44),
(6,61),
(6,62),
(6,63),
(6,64),
(6,65),
(6,66),
(7,77)

-- DB2 DB2.LUW DB2LUW

INSERT INTO "GrandChild"
(
	"ParentID",
	"ChildID",
	"GrandChildID"
)
VALUES
(1,11,111),
(2,21,211),
(2,21,212),
(2,22,221),
(2,22,222),
(3,31,311),
(3,31,312),
(3,31,313),
(3,32,321),
(3,32,322),
(3,32,323),
(3,33,331),
(3,33,332),
(3,33,333),
(4,41,411),
(4,41,412),
(4,41,413),
(4,41,414),
(4,42,421),
(4,42,422),
(4,42,423),
(4,42,424)

-- DB2 DB2.LUW DB2LUW

INSERT INTO "InheritanceParent"
(
	"InheritanceParentId",
	"TypeDiscriminator",
	"Name"
)
VALUES
(1,NULL,NULL),
(2,1,NULL),
(3,2,'InheritanceParent2')

-- DB2 DB2.LUW DB2LUW

INSERT INTO "InheritanceChild"
(
	"InheritanceChildId",
	"TypeDiscriminator",
	"InheritanceParentId",
	"Name"
)
VALUES
(1,NULL,1,NULL),
(2,1,2,NULL),
(3,2,3,'InheritanceParent2')

