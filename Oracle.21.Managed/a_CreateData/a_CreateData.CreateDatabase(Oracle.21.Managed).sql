-- Oracle.21.Managed Oracle.Managed Oracle12

ALTER SYSTEM SET DEFERRED_SEGMENT_CREATION=FALSE

-- Oracle.21.Managed Oracle.Managed Oracle12

-- default is 300
ALTER SYSTEM SET OPEN_CURSORS=10000 SID='*' SCOPE=BOTH

-- Oracle.21.Managed Oracle.Managed Oracle12

-- Cleanup schema

BEGIN
	EXECUTE IMMEDIATE 'DROP SEQUENCE ' || '"PersonSeq"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -2289 THEN
			RAISE;
		END IF;
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP TABLE "Doctor"

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP TABLE "Patient"

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP TABLE "Person"

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP SEQUENCE BinaryDataSeq

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP TABLE BinaryData

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP SEQUENCE "DataTypeTestSeq"

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP TABLE "DataTypeTest"

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP TABLE "GrandChild"

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP TABLE "Child"

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP TABLE "Parent"

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP TABLE "StringTest"

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP TABLE "LinqDataTypes"

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP TABLE LINQDATATYPESBC

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP SEQUENCE SequenceTestSeq

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP TABLE SequenceTest

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP TABLE "STG_TRADE_INFORMATION"

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP table "t_test_user_contract"

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP table "t_test_user"

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP sequence "sq_test_user_contract"

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP table "t_entity"

-- Oracle.21.Managed Oracle.Managed Oracle12

--StringTest Table
CREATE TABLE "StringTest"
	( "StringValue1"                VARCHAR2(50) NULL
	, "StringValue2"                CHAR(50)     NULL
	, "KeyValue"                    VARCHAR2(50) NOT NULL
	)

-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "StringTest" ("StringValue1", "StringValue2", "KeyValue") VALUES ('Value1', 'Value2', 'HasValues')

-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "StringTest" ("StringValue1", "StringValue2", "KeyValue") VALUES (null,     null,     'NullValues')


-- Inheritance Parent/Child

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP TABLE "InheritanceParent"

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE TABLE "InheritanceParent"
(
	"InheritanceParentId" NUMBER        NOT NULL PRIMARY KEY,
	"TypeDiscriminator"   NUMBER            NULL,
	"Name"                NVARCHAR2(50)     NULL
)

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP TABLE "InheritanceChild"

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE TABLE "InheritanceChild"
(
	"InheritanceChildId"  NUMBER        NOT NULL PRIMARY KEY,
	"InheritanceParentId" NUMBER        NOT NULL,
	"TypeDiscriminator"   NUMBER            NULL,
	"Name"                NVARCHAR2(50)     NULL
)

-- Oracle.21.Managed Oracle.Managed Oracle12

-- Person Table

CREATE SEQUENCE "PersonSeq"

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE TABLE "Person"
	( "PersonID"                     NUMBER NOT NULL PRIMARY KEY
	, "FirstName"                    VARCHAR2(50) NOT NULL
	, "LastName"                     VARCHAR2(50) NOT NULL
	, "MiddleName"                   VARCHAR2(50)
	, "Gender"                       CHAR(1) NOT NULL

	, CONSTRAINT "Ck_Person_Gender"  CHECK ("Gender" IN ('M', 'F', 'U', 'O'))
	)

-- Oracle.21.Managed Oracle.Managed Oracle12

-- Insert Trigger for Person

CREATE OR REPLACE TRIGGER "Person_Add"
BEFORE INSERT
ON "Person"
FOR EACH ROW
BEGIN
SELECT
	"PersonSeq".NEXTVAL
INTO
	:NEW."PersonID"
FROM
	dual;
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

-- Doctor Table Extension

CREATE TABLE "Doctor"
	( "PersonID"                       NUMBER NOT NULL PRIMARY KEY
	, "Taxonomy"                       NVARCHAR2(50) NOT NULL

	, CONSTRAINT "FK_Doctor_Person" FOREIGN KEY ("PersonID")
		REFERENCES "Person" ("PersonID") ON DELETE CASCADE
	)

-- Oracle.21.Managed Oracle.Managed Oracle12

-- Patient Table Extension

CREATE TABLE "Patient"
(
	"PersonID"  NUMBER NOT NULL PRIMARY KEY,
	"Diagnosis" NVARCHAR2(256) NOT NULL,

	CONSTRAINT "FK_Patient_Person" FOREIGN KEY ("PersonID") REFERENCES "Person" ("PersonID") ON DELETE CASCADE
)

-- Oracle.21.Managed Oracle.Managed Oracle12

-- Sample data for Person/Doctor/Patient

INSERT INTO "Person"  ("FirstName", "LastName", "Gender") VALUES ('John',   'Pupkin',    'M')

-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "Person"  ("FirstName", "LastName", "Gender") VALUES ('Tester', 'Testerson', 'M')

-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "Person"  ("FirstName", "LastName", "Gender") VALUES ('Jane',   'Doe',       'F')

-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "Person"  ("FirstName", "LastName", "MiddleName", "Gender") VALUES ('Jürgen', 'König', 'Ko', 'M')

-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "Doctor"  ("PersonID",  "Taxonomy")  VALUES (1, 'Psychiatry')

-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "Patient" ("PersonID",  "Diagnosis") VALUES (2, 'Hallucination with Paranoid Bugs'' Delirium of Persecution')

-- Oracle.21.Managed Oracle.Managed Oracle12

-- Person_Delete

CREATE OR REPLACE
PROCEDURE Person_Delete(pPersonID IN NUMBER) IS
BEGIN
DELETE FROM
	"Person"
WHERE
	"PersonID" = pPersonID;
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

-- Person_Insert

CREATE OR REPLACE
PROCEDURE Person_Insert_OutputParameter
	( pFirstName  IN NVARCHAR2
	, pLastName   IN NVARCHAR2
	, pMiddleName IN NVARCHAR2
	, pGender     IN CHAR
	, pPersonID   OUT NUMBER
	) IS
BEGIN
INSERT INTO "Person"
	( "LastName",  "FirstName",  "MiddleName",  "Gender")
VALUES
	(pLastName, pFirstName, pMiddleName, pGender)
RETURNING
	"PersonID"
INTO
	pPersonID;
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE OR REPLACE
FUNCTION Person_Insert
	( pFirstName  IN NVARCHAR2
	, pLastName   IN NVARCHAR2
	, pMiddleName IN NVARCHAR2
	, pGender     IN CHAR
	)
RETURN SYS_REFCURSOR IS
	retCursor SYS_REFCURSOR;
	lPersonID NUMBER;
BEGIN
INSERT INTO "Person"
	( "LastName",  "FirstName",  "MiddleName",  "Gender")
VALUES
	(pLastName, pFirstName, pMiddleName, pGender)
RETURNING
	"PersonID"
INTO
	lPersonID;

OPEN retCursor FOR
	SELECT
		"PersonID", "FirstName", "LastName", "MiddleName", "Gender"
	FROM
		"Person"
	WHERE
		"PersonID" = lPersonID;
RETURN
	retCursor;
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

-- Person_SelectAll

CREATE OR REPLACE
FUNCTION Person_SelectAll
RETURN SYS_REFCURSOR IS
	retCursor SYS_REFCURSOR;
BEGIN
OPEN retCursor FOR
	SELECT
		"PersonID", "FirstName", "LastName", "MiddleName", "Gender"
	FROM
		"Person";
RETURN
	retCursor;
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

-- Person_SelectAllByGender

CREATE OR REPLACE
FUNCTION Person_SelectAllByGender(pGender IN CHAR)
RETURN SYS_REFCURSOR IS
	retCursor SYS_REFCURSOR;
BEGIN
OPEN retCursor FOR
	SELECT
		"PersonID", "FirstName", "LastName", "MiddleName", "Gender"
	FROM
		"Person"
	WHERE
		"Gender" = pGender;
RETURN
	retCursor;
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

-- Person_SelectByKey

CREATE OR REPLACE
FUNCTION Person_SelectByKey(pID IN NUMBER)
RETURN SYS_REFCURSOR IS
	retCursor SYS_REFCURSOR;
BEGIN
OPEN retCursor FOR
	SELECT
		"PersonID", "FirstName", "LastName", "MiddleName", "Gender"
	FROM
		"Person"
	WHERE
		"PersonID" = pID;
RETURN
	retCursor;
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

-- Person_SelectByName

CREATE OR REPLACE
FUNCTION Person_SelectByName
	( pFirstName IN NVARCHAR2
	, pLastName  IN NVARCHAR2
	)
RETURN SYS_REFCURSOR IS
	retCursor SYS_REFCURSOR;
BEGIN
OPEN retCursor FOR
	SELECT
		"PersonID", "FirstName", "LastName", "MiddleName", "Gender"
	FROM
		"Person"
	WHERE
		"FirstName" = pFirstName AND "LastName" = pLastName;
RETURN
	retCursor;
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

-- Person_SelectListByName

CREATE OR REPLACE
FUNCTION Person_SelectListByName
	( pFirstName IN NVARCHAR2
	, pLastName  IN NVARCHAR2
	)
RETURN SYS_REFCURSOR IS
	retCursor SYS_REFCURSOR;
BEGIN
OPEN retCursor FOR
	SELECT
		"PersonID", "FirstName", "LastName", "MiddleName", "Gender"
	FROM
		"Person"
	WHERE
		"FirstName" LIKE pFirstName AND "LastName" LIKE pLastName;
RETURN
	retCursor;
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE OR REPLACE
PROCEDURE Person_Update
	( pPersonID   IN NUMBER
	, pFirstName  IN NVARCHAR2
	, pLastName   IN NVARCHAR2
	, pMiddleName IN NVARCHAR2
	, pGender     IN CHAR
	) IS
BEGIN
UPDATE
	"Person"
SET
	"LastName"   = pLastName,
	"FirstName"  = pFirstName,
	"MiddleName" = pMiddleName,
	"Gender"     = pGender
WHERE
	"PersonID"   = pPersonID;
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

-- Patient_SelectAll

CREATE OR REPLACE
FUNCTION Patient_SelectAll
RETURN SYS_REFCURSOR IS
	retCursor SYS_REFCURSOR;
BEGIN
OPEN retCursor FOR
SELECT
	"Person".*, "Patient"."Diagnosis"
FROM
	"Patient", "Person"
WHERE
	"Patient"."PersonID" = "Person"."PersonID";
RETURN
	retCursor;
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

-- Patient_SelectByName

CREATE OR REPLACE
FUNCTION Patient_SelectByName
	( pFirstName IN NVARCHAR2
	, pLastName  IN NVARCHAR2
	)
RETURN SYS_REFCURSOR IS
	retCursor SYS_REFCURSOR;
BEGIN
OPEN retCursor FOR
SELECT
	"Person".*, "Patient"."Diagnosis"
FROM
	"Patient", "Person"
WHERE
	"Patient"."PersonID" = "Person"."PersonID"
	AND "FirstName" = pFirstName AND "LastName" = pLastName;
RETURN
	retCursor;
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

-- BinaryData Table

CREATE SEQUENCE BinaryDataSeq

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE TABLE BinaryData
	( BinaryDataID                 NUMBER NOT NULL PRIMARY KEY
	, Stamp                        TIMESTAMP DEFAULT SYSDATE NOT NULL
	, Data                         BLOB NOT NULL
	)

-- Oracle.21.Managed Oracle.Managed Oracle12

-- Insert Trigger for Binarydata

CREATE OR REPLACE TRIGGER BinaryData_Add
BEFORE INSERT
ON BinaryData
FOR EACH ROW
BEGIN
SELECT
	BinaryDataSeq.NEXTVAL
INTO
	:NEW.BinaryDataID
FROM
	dual;
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

-- OutRefTest

CREATE OR REPLACE
PROCEDURE OutRefTest
	( pID             IN     NUMBER
	, pOutputID       OUT    NUMBER
	, pInputOutputID  IN OUT NUMBER
	, pStr            IN     NVARCHAR2
	, pOutputStr      OUT    NVARCHAR2
	, pInputOutputStr IN OUT NVARCHAR2
	) IS
BEGIN
	pOutputID       := pID;
	pInputOutputID  := pID + pInputOutputID;
	pOutputStr      := pStr;
	pInputOutputStr := pStr || pInputOutputStr;
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE OR REPLACE
PROCEDURE OutRefEnumTest
	( pStr            IN     NVARCHAR2
	, pOutputStr      OUT    NVARCHAR2
	, pInputOutputStr IN OUT NVARCHAR2
	) IS
BEGIN
	pOutputStr      := pStr;
	pInputOutputStr := pStr || pInputOutputStr;
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

-- ArrayTest

CREATE OR REPLACE
PROCEDURE ArrayTest
	( pIntArray            IN     DBMS_UTILITY.NUMBER_ARRAY
	, pOutputIntArray      OUT    DBMS_UTILITY.NUMBER_ARRAY
	, pInputOutputIntArray IN OUT DBMS_UTILITY.NUMBER_ARRAY
	, pStrArray            IN     DBMS_UTILITY.NAME_ARRAY
	, pOutputStrArray      OUT    DBMS_UTILITY.NAME_ARRAY
	, pInputOutputStrArray IN OUT DBMS_UTILITY.NAME_ARRAY
	) IS
BEGIN
pOutputIntArray := pIntArray;

FOR i IN pIntArray.FIRST..pIntArray.LAST LOOP
	pInputOutputIntArray(i) := pInputOutputIntArray(i) + pIntArray(i);
END LOOP;

pOutputStrArray := pStrArray;

FOR i IN pStrArray.FIRST..pStrArray.LAST LOOP
	pInputOutputStrArray(i) := pInputOutputStrArray(i) || pStrArray(i);
END LOOP;
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE OR REPLACE
PROCEDURE ScalarArray
	( pOutputIntArray      OUT    DBMS_UTILITY.NUMBER_ARRAY
	) IS
BEGIN
FOR i IN 1..5 LOOP
	pOutputIntArray(i) := i;
END LOOP;
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

-- ResultSetTest

CREATE OR REPLACE
PROCEDURE RESULTSETTEST
	( mr OUT SYS_REFCURSOR
	, sr OUT SYS_REFCURSOR
	) IS
BEGIN
OPEN mr FOR
	SELECT       1 as MasterID FROM dual
	UNION SELECT 2 as MasterID FROM dual;
OPEN sr FOR
	SELECT       4 SlaveID, 1 as MasterID FROM dual
	UNION SELECT 5 SlaveID, 2 as MasterID FROM dual
	UNION SELECT 6 SlaveID, 2 as MasterID FROM dual
	UNION SELECT 7 SlaveID, 1 as MasterID FROM dual;
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

-- ExecuteScalarTest

CREATE OR REPLACE
FUNCTION Scalar_DataReader
RETURN SYS_REFCURSOR
IS
	retCursor SYS_REFCURSOR;
BEGIN
OPEN retCursor FOR
	SELECT
		12345 intField, '54321' stringField
	FROM
		DUAL;
RETURN
	retCursor;
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE OR REPLACE
PROCEDURE Scalar_OutputParameter
	( pOutputInt    OUT BINARY_INTEGER
	, pOutputString OUT NVARCHAR2
	) IS
BEGIN
	pOutputInt := 12345;
	pOutputString := '54321';
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE OR REPLACE
FUNCTION Scalar_ReturnParameter
RETURN BINARY_INTEGER IS
BEGIN
RETURN
	12345;
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

-- Data Types test

CREATE SEQUENCE "DataTypeTestSeq"

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE TABLE "DataTypeTest"
(
	"DataTypeID"      INTEGER      NOT NULL PRIMARY KEY,
	"Binary_"         RAW(50)          NULL,
	"Boolean_"        NUMBER(1,0)      NULL,
	"Byte_"           NUMBER(3,0)      NULL,
	"Bytes_"          BLOB             NULL,
	"Char_"           NCHAR            NULL,
	"DateTime_"       DATE             NULL,
	"Decimal_"        NUMBER(19,5)     NULL,
	"Double_"         DOUBLE PRECISION NULL,
	"Guid_"           RAW(16)          NULL,
	"Int16_"          NUMBER(5,0)      NULL,
	"Int32_"          NUMBER(10,0)     NULL,
	"Int64_"          NUMBER(20,0)     NULL,
	"Money_"          NUMBER           NULL,
	"SByte_"          NUMBER(3,0)      NULL,
	"Single_"         FLOAT            NULL,
	"Stream_"         BLOB             NULL,
	"String_"         NVARCHAR2(50)    NULL,
	"UInt16_"         NUMBER(5,0)      NULL,
	"UInt32_"         NUMBER(10,0)     NULL,
	"UInt64_"         NUMBER(20,0)     NULL,
	"Xml_"            XMLTYPE          NULL
)

-- Oracle.21.Managed Oracle.Managed Oracle12

-- Insert Trigger for DataTypeTest

CREATE OR REPLACE TRIGGER "DataTypeTest_Add"
BEFORE INSERT
ON "DataTypeTest"
FOR EACH ROW
BEGIN
SELECT
	"DataTypeTestSeq".NEXTVAL
INTO
	:NEW."DataTypeID"
FROM
	dual;
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "DataTypeTest"
	("Binary_",      "Boolean_",    "Byte_",     "Bytes_",   "Char_", "DateTime_", "Decimal_",
	 "Double_",         "Guid_",   "Int16_",     "Int32_",  "Int64_",    "Money_",   "SByte_",
	 "Single_",       "Stream_",  "String_",    "UInt16_", "UInt32_",   "UInt64_",     "Xml_")
VALUES
	(   NULL,          NULL,     NULL,       NULL,    NULL,      NULL,     NULL,
		NULL,          NULL,     NULL,       NULL,    NULL,      NULL,     NULL,
		NULL,          NULL,     NULL,       NULL,    NULL,      NULL,     NULL)

-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "DataTypeTest"
	("Binary_",      "Boolean_",    "Byte_",     "Bytes_",   "Char_", "DateTime_", "Decimal_",
	 "Double_",         "Guid_",   "Int16_",     "Int32_",  "Int64_",    "Money_",   "SByte_",
	 "Single_",       "Stream_",  "String_",    "UInt16_", "UInt32_",   "UInt64_",     "Xml_")
VALUES
	(SYS_GUID(),          1,      255, SYS_GUID(),     'B',   SYSDATE, 12345.67,
	   1234.567, SYS_GUID(),    32767,      32768, 1000000,   12.3456,      127,
	   1234.123, SYS_GUID(), 'string',      32767,   32768, 200000000,
	XMLTYPE('<root><element strattr="strvalue" intattr="12345"/></root>'))

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE TABLE "Parent"      ("ParentID" int, "Value1" int)

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE TABLE "Child"       ("ParentID" int, "ChildID" int)

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE TABLE "GrandChild"  ("ParentID" int, "ChildID" int, "GrandChildID" int)

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE TABLE "LinqDataTypes"
(
	ID               int,
	"MoneyValue"     decimal(10,4),
	"DateTimeValue"  timestamp,
	"DateTimeValue2" timestamp,
	"BoolValue"      smallint,
	"GuidValue"      raw(16),
	"BinaryValue"    blob         NULL,
	"SmallIntValue"  smallint,
	"IntValue"       int          NULL,
	"BigIntValue"    number(20,0) NULL,
	"StringValue"    VARCHAR2(50) NULL
)

-- Oracle.21.Managed Oracle.Managed Oracle12

-- uppercased table for native bulk copy
CREATE TABLE LinqDataTypesBC
(
	ID               int,
	MoneyValue     decimal(10,4),
	DateTimeValue  timestamp,
	DateTimeValue2 timestamp,
	BoolValue      smallint,
	GuidValue      raw(16),
	SmallIntValue  smallint,
	IntValue       int          NULL,
	BigIntValue    number(20,0) NULL,
	StringValue    VARCHAR2(50) NULL
)

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE SEQUENCE SequenceTestSeq
	MINVALUE 1
	START WITH 1
	INCREMENT BY 1
	CACHE 10

-- Oracle.21.Managed Oracle.Managed Oracle12

-- names not escaped to test native bulk copy
CREATE TABLE SequenceTest
(
	ID      int NOT NULL PRIMARY KEY,
	Value VARCHAR2(50) NOT NULL
)

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE TABLE "STG_TRADE_INFORMATION"
(
	"STG_TRADE_ID"          NUMBER NOT NULL ENABLE,
	"STG_TRADE_VERSION"     NUMBER NOT NULL ENABLE,
	"INFORMATION_TYPE_ID"   NUMBER NOT NULL ENABLE,
	"INFORMATION_TYPE_NAME" VARCHAR2(50 BYTE),
	"VALUE"                 VARCHAR2(4000 BYTE),
	"VALUE_AS_INTEGER"      NUMBER,
	"VALUE_AS_DATE"         DATE
)

-- Oracle.21.Managed Oracle.Managed Oracle12

create table "t_test_user"
(
	"user_id"  number primary key,
	"name"     varchar2(255) not null unique
)

-- Oracle.21.Managed Oracle.Managed Oracle12

create table "t_test_user_contract"
(
	"user_contract_id" number primary key,
	"user_id"          number not null references "t_test_user" on delete cascade,
	"contract_no"      number not null,
	"name"             varchar2(255) not null,
	unique           ("user_id", "contract_no")
)

-- Oracle.21.Managed Oracle.Managed Oracle12

create sequence "sq_test_user_contract"

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP SEQUENCE "TestIdentitySeq"

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP TABLE "TestIdentity"

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE TABLE "TestIdentity" (
	"ID" NUMBER NOT NULL PRIMARY KEY
)

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE SEQUENCE "TestIdentitySeq"

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE OR REPLACE TRIGGER "TestIdentity_Add"
BEFORE INSERT
ON "TestIdentity"
FOR EACH ROW
BEGIN
SELECT
	"TestIdentitySeq".NEXTVAL
INTO
	:NEW.ID
FROM
	dual;
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP TABLE "AllTypes"

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE TABLE "AllTypes"
(
	"ID"                         int                        NOT NULL PRIMARY KEY,

	"bigintDataType"           number(20,0)                   NULL,
	"numericDataType"          numeric                        NULL,
	"bitDataType"              number(1,0)                    NULL,
	"smallintDataType"         number(5,0)                    NULL,
	"decimalDataType"          number(*,6)                    NULL,
	"smallmoneyDataType"       number(10,4)                   NULL,
	"intDataType"              number(10,0)                   NULL,
	"tinyintDataType"          number(3,0)                    NULL,
	"moneyDataType"            number                         NULL,
	"floatDataType"            binary_double                  NULL,
	"realDataType"             binary_float                   NULL,

	"datetimeDataType"         date                           NULL,
	"datetime2DataType"        timestamp                      NULL,
	"datetimeoffsetDataType"   timestamp with time zone       NULL,
	"localZoneDataType"        timestamp with local time zone NULL,

	"charDataType"             char(1)                        NULL,
	"char20DataType"           char(20)                       NULL,
	"varcharDataType"          varchar2(20)                   NULL,
	"textDataType"             clob                           NULL,
	"ncharDataType"            nchar(20)                      NULL,
	"nvarcharDataType"         nvarchar2(20)                  NULL,
	"ntextDataType"            nclob                          NULL,

	"binaryDataType"           blob                           NULL,
	"bfileDataType"            bfile                          NULL,
	"guidDataType"             raw(16)                        NULL,
	"longDataType"             long                           NULL,

	"xmlDataType"              XmlType                        NULL
)

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP SEQUENCE "AllTypesSeq"

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE SEQUENCE "AllTypesSeq"

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE OR REPLACE TRIGGER "AllTypes_Add"
BEFORE INSERT
ON "AllTypes"
FOR EACH ROW
BEGIN
	SELECT "AllTypesSeq".NEXTVAL INTO :NEW.ID FROM dual;
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE OR REPLACE DIRECTORY DATA_DIR AS 'C:\DataFiles'

-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"numericDataType",
	"bitDataType",
	"smallintDataType",
	"decimalDataType",
	"smallmoneyDataType",
	"intDataType",
	"tinyintDataType",
	"moneyDataType",
	"floatDataType",
	"realDataType",

	"datetimeDataType",
	"datetime2DataType",
	"datetimeoffsetDataType",
	"localZoneDataType",

	"charDataType",
	"varcharDataType",
	"textDataType",
	"ncharDataType",
	"nvarcharDataType",
	"ntextDataType",

	"binaryDataType",
	"bfileDataType",
	"guidDataType",
	"longDataType",

	"xmlDataType"
)
SELECT
	NULL bigintDataType,
	NULL numericDataType,
	NULL bitDataType,
	NULL smallintDataType,
	NULL decimalDataType,
	NULL smallmoneyDataType,
	NULL intDataType,
	NULL tinyintDataType,
	NULL moneyDataType,
	NULL floatDataType,
	NULL realDataType,

	NULL datetimeDataType,
	NULL datetime2DataType,
	NULL datetimeoffsetDataType,
	NULL localZoneDataType,

	NULL charDataType,
	NULL varcharDataType,
	NULL textDataType,
	NULL ncharDataType,
	NULL nvarcharDataType,
	NULL ntextDataType,

	NULL binaryDataType,
	NULL bfileDataType,
	NULL guidDataType,
	NULL longDataType,

	NULL xmlDataType
FROM dual
UNION ALL
SELECT
	1000000,
	9999999,
	1,
	25555,
	2222222,
	100000,
	7777777,
	100,
	100000,
	20.31,
	16.2,

	to_date  ('2012-12-12 12:12:12', 'YYYY-MM-DD HH:MI:SS'),
	timestamp '2012-12-12 12:12:12.012',
	timestamp '2012-12-12 12:12:12.012 -5:00',
	timestamp '2012-12-12 12:12:12.012',

	'1',
	'234',
	'567',
	'23233',
	'3323',
	'111',

	to_blob('00AA'),
	bfilename('DATA_DIR', 'bfile.txt'),
	sys_guid(),
	'LONG',

	XMLTYPE('<root><element strattr="strvalue" intattr="12345"/></root>')
FROM dual

-- Oracle.21.Managed Oracle.Managed Oracle12

create table "t_entity"
(
	"entity_id" integer primary key,
	"time"      date,
	"duration"  interval day(3) to second(2)
)

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP TABLE "LongRawTable"

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE TABLE "LongRawTable"
(
	"ID"                NUMBER        NOT NULL PRIMARY KEY,
	"longRawDataType" long raw      NULL
)

-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "LongRawTable"
SELECT 1, NULL                        FROM dual UNION ALL
SELECT 2, to_blob('4c4f4e4720524157') FROM dual -- "LONG RAW"

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP TABLE "DecimalOverflow"

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE TABLE "DecimalOverflow"
(
	"Decimal1" numeric(38,20),
	"Decimal2" numeric(31,2),
	"Decimal3" numeric(38,36),
	"Decimal4" numeric(29,0),
	"Decimal5" numeric(38,38)
)

-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "DecimalOverflow"
SELECT  123456789012345.12345678901234567890,  1234567890123456789.91,  12.345678901234512345678901234567890,  1234567890123456789,  .12345678901234512345678901234567890 FROM dual UNION ALL
SELECT -123456789012345.12345678901234567890, -1234567890123456789.91, -12.345678901234512345678901234567890, -1234567890123456789, -.12345678901234512345678901234567890 FROM dual UNION ALL
SELECT  12345678901234.567890123456789,                          NULL,                                  NULL,                 NULL,                                  NULL FROM dual UNION ALL
SELECT -12345678901234.567890123456789,                          NULL,                                  NULL,                 NULL,                                  NULL FROM dual UNION ALL
SELECT  12345678901234.56789012345678,                           NULL,                                  NULL,                 NULL,                                  NULL FROM dual UNION ALL
SELECT -12345678901234.56789012345678,                           NULL,                                  NULL,                 NULL,                                  NULL FROM dual UNION ALL
SELECT  12345678901234.5678901234567,                            NULL,                                  NULL,                 NULL,                                  NULL FROM dual UNION ALL
SELECT -12345678901234.5678901234567,                            NULL,                                  NULL,                 NULL,                                  NULL FROM dual


-- merge test tables

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP TABLE "TestMerge1"

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP TABLE "TestMerge2"

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE TABLE "TestMerge1"
(
	"Id"		NUMBER	NOT NULL PRIMARY KEY,
	"Field1"	NUMBER	NULL,
	"Field2"	NUMBER	NULL,
	"Field3"	NUMBER	NULL,
	"Field4"	NUMBER	NULL,
	"Field5"	NUMBER	NULL,

	"FieldInt64"      NUMBER(20, 0)               NULL,
	"FieldBoolean"    NUMBER(1, 0)                NULL,
	"FieldString"     VARCHAR(20)                 NULL,
	"FieldNString"    NVARCHAR2(20)               NULL,
	"FieldChar"       CHAR(1)                     NULL,
	"FieldNChar"      NCHAR(1)                    NULL,
	"FieldFloat"      BINARY_FLOAT                NULL,
	"FieldDouble"     BINARY_DOUBLE               NULL,
	"FieldDateTime"   DATE                        NULL,
	"FieldDateTime2"  TIMESTAMP(7) WITH TIME ZONE NULL,
	"FieldBinary"     BLOB                        NULL,
	"FieldGuid"       RAW(16)                     NULL,
	"FieldDecimal"    DECIMAL(24, 10)             NULL,
	"FieldEnumString" VARCHAR(20)                 NULL,
	"FieldEnumNumber" NUMBER                      NULL
)

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE TABLE "TestMerge2"
(
	"Id"		NUMBER	NOT NULL PRIMARY KEY,
	"Field1"	NUMBER	NULL,
	"Field2"	NUMBER	NULL,
	"Field3"	NUMBER	NULL,
	"Field4"	NUMBER	NULL,
	"Field5"	NUMBER	NULL,

	"FieldInt64"      NUMBER(20, 0)               NULL,
	"FieldBoolean"    NUMBER(1, 0)                NULL,
	"FieldString"     VARCHAR(20)                 NULL,
	"FieldNString"    NVARCHAR2(20)               NULL,
	"FieldChar"       CHAR(1)                     NULL,
	"FieldNChar"      NCHAR(1)                    NULL,
	"FieldFloat"      BINARY_FLOAT                NULL,
	"FieldDouble"     BINARY_DOUBLE               NULL,
	"FieldDateTime"   DATE                        NULL,
	"FieldDateTime2"  TIMESTAMP(7) WITH TIME ZONE NULL,
	"FieldBinary"     BLOB                        NULL,
	"FieldGuid"       RAW(16)                     NULL,
	"FieldDecimal"    DECIMAL(24, 10)             NULL,
	"FieldEnumString" VARCHAR(20)                 NULL,
	"FieldEnumNumber" NUMBER                      NULL
)

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE OR REPLACE
PROCEDURE AddIssue792Record IS
BEGIN
	INSERT INTO "AllTypes"("char20DataType") VALUES('issue792');
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE OR REPLACE
PROCEDURE AllOutputParameters
(
	ID                         IN OUT int                          ,

	bigintDataType           IN OUT number                         ,
	numericDataType          IN OUT number                         ,
	bitDataType              IN OUT number                         ,
	smallintDataType         IN OUT number                         ,
	decimalDataType          IN OUT number                         ,
	smallmoneyDataType       IN OUT number                         ,
	intDataType              IN OUT number                         ,
	tinyintDataType          IN OUT number                         ,
	moneyDataType            IN OUT number                         ,
	floatDataType            IN OUT binary_double                  ,
	realDataType             IN OUT binary_float                   ,

	datetimeDataType         IN OUT date                           ,
	datetime2DataType        IN OUT timestamp                      ,
	datetimeoffsetDataType   IN OUT timestamp with time zone       ,
	localZoneDataType        IN OUT timestamp with local time zone ,

	charDataType             IN OUT char                           ,
	char20DataType           IN OUT char                           ,
	varcharDataType          IN OUT varchar2                       ,
	textDataType             IN OUT clob                           ,
	ncharDataType            IN OUT nchar                          ,
	nvarcharDataType         IN OUT nvarchar2                      ,
	ntextDataType            IN OUT nclob                          ,

	binaryDataType           IN OUT blob                           ,
	bfileDataType            IN OUT bfile                          ,
	guidDataType             IN OUT raw                            ,

	xmlDataType              IN OUT XmlType

) IS
BEGIN
	SELECT
		at.ID,

		at."bigintDataType",
		at."numericDataType",
		at."bitDataType",
		at."smallintDataType",
		at."decimalDataType",
		at."smallmoneyDataType",
		at."intDataType",
		at."tinyintDataType",
		at."moneyDataType",
		at."floatDataType",
		at."realDataType",

		at."datetimeDataType",
		at."datetime2DataType",
		at."datetimeoffsetDataType",
		at."localZoneDataType",

		at."charDataType",
		at."char20DataType",
		at."varcharDataType",
		at."textDataType",
		at."ncharDataType",
		at."nvarcharDataType",
		at."ntextDataType",

		at."binaryDataType",
		at."bfileDataType",
		at."guidDataType",

		at."xmlDataType"

		INTO

		ID,

		bigintDataType,
		numericDataType,
		bitDataType,
		smallintDataType,
		decimalDataType,
		smallmoneyDataType,
		intDataType,
		tinyintDataType,
		moneyDataType,
		floatDataType,
		realDataType,

		datetimeDataType,
		datetime2DataType,
		datetimeoffsetDataType,
		localZoneDataType,

		charDataType,
		char20DataType,
		varcharDataType,
		textDataType,
		ncharDataType,
		nvarcharDataType,
		ntextDataType,

		binaryDataType,
		bfileDataType,
		guidDataType,

		xmlDataType

	FROM "AllTypes" at
	WHERE at.ID = 2;
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE OR REPLACE PACKAGE ISSUE2132 AS
procedure test;
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE OR REPLACE PACKAGE BODY ISSUE2132 AS
procedure test is
	begin
		return 4;
	end test;
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE OR REPLACE PROCEDURE TEST2132
BEGIN
	return 6;
END;
-- schema test table, view and matview. doesn't have columns, as we test only object and it's atributes load

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP VIEW "SchemaTestView"

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP MATERIALIZED VIEW "SchemaTestMatView"

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP TABLE "SchemaTestTable"

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE TABLE "SchemaTestTable"
(
	"Id"  NUMBER NOT NULL PRIMARY KEY
)

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE VIEW "SchemaTestView" AS SELECT "Id" FROM "SchemaTestTable"

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE MATERIALIZED VIEW "SchemaTestMatView" AS SELECT "Id" FROM "SchemaTestTable"

-- Oracle.21.Managed Oracle.Managed Oracle12

COMMENT ON TABLE "SchemaTestTable" IS 'This is table'

-- Oracle.21.Managed Oracle.Managed Oracle12

COMMENT ON MATERIALIZED VIEW "SchemaTestMatView" IS 'This is matview'

-- Oracle.21.Managed Oracle.Managed Oracle12

COMMENT ON COLUMN "SchemaTestTable"."Id" IS 'This is column'

-- Oracle.21.Managed Oracle.Managed Oracle12

COMMENT ON COLUMN "SchemaTestView"."Id" IS 'This is view column'

-- Oracle.21.Managed Oracle.Managed Oracle12

COMMENT ON COLUMN "SchemaTestMatView"."Id" IS 'This is matview column'

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP TABLE "CollatedTable"

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE TABLE "CollatedTable"
(
	"Id"				INT NOT NULL,
	"CaseSensitive"		VARCHAR2(20) NOT NULL,
	"CaseInsensitive"	VARCHAR2(20) NOT NULL
)

-- Oracle.21.Managed Oracle.Managed Oracle12

DROP TYPE tf_table

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE OR REPLACE TYPE tf_type IS OBJECT (O INT)

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE OR REPLACE TYPE tf_table IS TABLE OF tf_type

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE OR REPLACE PACKAGE TEST_PACKAGE1 AS
	FUNCTION TEST_FUNCTION(i INT) RETURN INT;
	FUNCTION TEST_TABLE_FUNCTION(i INT) RETURN tf_table PIPELINED;
	PROCEDURE TEST_PROCEDURE(i INT, o OUT INT);
END TEST_PACKAGE1;

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE OR REPLACE PACKAGE BODY TEST_PACKAGE1 AS
	FUNCTION TEST_FUNCTION(i INT)
		RETURN INT IS
		BEGIN
			RETURN i + 1;
		END;
	FUNCTION TEST_TABLE_FUNCTION(i IN INT)
		RETURN tf_table PIPELINED IS
		BEGIN
			FOR r IN (SELECT * FROM "Person") LOOP
				PIPE ROW(tf_type(i + 1));
			END LOOP;
			RETURN;
		END;
	PROCEDURE TEST_PROCEDURE(i INT, o OUT INT) AS
		BEGIN
			o := i + 1;
		END;
END TEST_PACKAGE1;

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE OR REPLACE PACKAGE TEST_PACKAGE2 AS
	FUNCTION TEST_FUNCTION(i INT) RETURN INT;
	FUNCTION TEST_TABLE_FUNCTION(i INT) RETURN tf_table PIPELINED;
	PROCEDURE TEST_PROCEDURE(i INT, o OUT INT);
END TEST_PACKAGE2;

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE OR REPLACE PACKAGE BODY TEST_PACKAGE2 AS
	FUNCTION TEST_FUNCTION(i INT)
		RETURN INT IS
		BEGIN
			RETURN i + 2;
		END;
	FUNCTION TEST_TABLE_FUNCTION(i IN INT)
		RETURN tf_table PIPELINED IS
		BEGIN
			FOR r IN (SELECT * FROM "Person") LOOP
				PIPE ROW(tf_type(i + 2));
			END LOOP;
			RETURN;
		END;
	PROCEDURE TEST_PROCEDURE(i INT, o OUT INT) AS
		BEGIN
			o := i + 2;
		END;
END TEST_PACKAGE2;

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE OR REPLACE FUNCTION TEST_FUNCTION(i INT)
RETURN INT IS
BEGIN
	RETURN i + 3;
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE OR REPLACE FUNCTION TEST_TABLE_FUNCTION(i IN INT)
RETURN tf_table PIPELINED IS
BEGIN
  FOR r IN (SELECT * FROM "Person") LOOP
	PIPE ROW(tf_type(i + 3));
  END LOOP;
  RETURN;
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE OR REPLACE PROCEDURE TEST_PROCEDURE(i INT, o OUT int) AS
BEGIN
	o := i + 3;
END;

-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "DateTimeValue2", "BoolValue", "GuidValue", "SmallIntValue", "IntValue", "BigIntValue", "StringValue") VALUES (1,1.11,TIMESTAMP '2001-01-11 01:11:21.100000',NULL,1,HEXTORAW('659112EFFE6FF94DBB6BBB16E413C883'),1,NULL,1,NULL)
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "DateTimeValue2", "BoolValue", "GuidValue", "SmallIntValue", "IntValue", "BigIntValue", "StringValue") VALUES (2,2.49,TIMESTAMP '2005-05-15 05:15:25.500000',NULL,0,HEXTORAW('613A66BC407B8146AC38F9AAF55B706B'),2,NULL,2,'')
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "DateTimeValue2", "BoolValue", "GuidValue", "SmallIntValue", "IntValue", "BigIntValue", "StringValue") VALUES (3,3.99,TIMESTAMP '2009-09-19 09:19:29.090000',NULL,1,HEXTORAW('C070F9D2AC3587499CD55BADB1757436'),3,NULL,NULL,'1')
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "DateTimeValue2", "BoolValue", "GuidValue", "SmallIntValue", "IntValue", "BigIntValue", "StringValue") VALUES (4,4.50,TIMESTAMP '2009-09-20 09:19:29.090000',NULL,0,HEXTORAW('DB2F934043154A4EAC2CCA371604FB4B'),4,NULL,NULL,'2')
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "DateTimeValue2", "BoolValue", "GuidValue", "SmallIntValue", "IntValue", "BigIntValue", "StringValue") VALUES (5,5.50,TIMESTAMP '2009-09-20 09:19:29.090000',NULL,1,HEXTORAW('CA3EBEFE5FCBB240AD392979D312AFCA'),5,NULL,NULL,'3')
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "DateTimeValue2", "BoolValue", "GuidValue", "SmallIntValue", "IntValue", "BigIntValue", "StringValue") VALUES (6,6.55,TIMESTAMP '2009-09-22 09:19:29.090000',NULL,0,HEXTORAW('1D5D3C8DDB4730479FE7968F6228A4C0'),6,NULL,NULL,'4')
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "DateTimeValue2", "BoolValue", "GuidValue", "SmallIntValue", "IntValue", "BigIntValue", "StringValue") VALUES (7,7.00,TIMESTAMP '2009-09-23 09:19:29.090000',NULL,1,HEXTORAW('15410948AF83DD46A906BFF26EE21EE2'),7,NULL,NULL,'5')
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "DateTimeValue2", "BoolValue", "GuidValue", "SmallIntValue", "IntValue", "BigIntValue", "StringValue") VALUES (8,8.99,TIMESTAMP '2009-09-24 09:19:29.090000',NULL,0,HEXTORAW('1F9F13C13513D44C937E92602F732DD3'),8,NULL,NULL,'6')
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "DateTimeValue2", "BoolValue", "GuidValue", "SmallIntValue", "IntValue", "BigIntValue", "StringValue") VALUES (9,9.63,TIMESTAMP '2009-09-25 09:19:29.090000',NULL,1,HEXTORAW('12C5C5464B3DF74CB4E71DE080789E5D'),9,NULL,NULL,'7')
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "DateTimeValue2", "BoolValue", "GuidValue", "SmallIntValue", "IntValue", "BigIntValue", "StringValue") VALUES (10,10.77,TIMESTAMP '2009-09-26 09:19:29.090000',NULL,0,HEXTORAW('55BCB2617F14404B93EDA4AA83602FEE'),10,NULL,NULL,'8')
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "DateTimeValue2", "BoolValue", "GuidValue", "SmallIntValue", "IntValue", "BigIntValue", "StringValue") VALUES (11,11.45,TIMESTAMP '2009-09-27 00:00:00.000000',NULL,1,HEXTORAW('181D02D3F097C04D98D0F0C7DF4A1230'),11,NULL,NULL,'9')
	INTO "LinqDataTypes" (ID, "MoneyValue", "DateTimeValue", "DateTimeValue2", "BoolValue", "GuidValue", "SmallIntValue", "IntValue", "BigIntValue", "StringValue") VALUES (12,11.45,TIMESTAMP '2012-11-07 19:19:29.090000',NULL,1,HEXTORAW('181D0203F097C04D98D0F0C7DF4A1230'),12,NULL,NULL,'0')
SELECT * FROM dual

-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Parent" ("ParentID", "Value1") VALUES (1,1)
	INTO "Parent" ("ParentID", "Value1") VALUES (2,NULL)
	INTO "Parent" ("ParentID", "Value1") VALUES (3,3)
	INTO "Parent" ("ParentID", "Value1") VALUES (4,NULL)
	INTO "Parent" ("ParentID", "Value1") VALUES (5,5)
	INTO "Parent" ("ParentID", "Value1") VALUES (6,6)
	INTO "Parent" ("ParentID", "Value1") VALUES (7,1)
SELECT * FROM dual

-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Child" ("ParentID", "ChildID") VALUES (1,11)
	INTO "Child" ("ParentID", "ChildID") VALUES (2,21)
	INTO "Child" ("ParentID", "ChildID") VALUES (2,22)
	INTO "Child" ("ParentID", "ChildID") VALUES (3,31)
	INTO "Child" ("ParentID", "ChildID") VALUES (3,32)
	INTO "Child" ("ParentID", "ChildID") VALUES (3,33)
	INTO "Child" ("ParentID", "ChildID") VALUES (4,41)
	INTO "Child" ("ParentID", "ChildID") VALUES (4,42)
	INTO "Child" ("ParentID", "ChildID") VALUES (4,43)
	INTO "Child" ("ParentID", "ChildID") VALUES (4,44)
	INTO "Child" ("ParentID", "ChildID") VALUES (6,61)
	INTO "Child" ("ParentID", "ChildID") VALUES (6,62)
	INTO "Child" ("ParentID", "ChildID") VALUES (6,63)
	INTO "Child" ("ParentID", "ChildID") VALUES (6,64)
	INTO "Child" ("ParentID", "ChildID") VALUES (6,65)
	INTO "Child" ("ParentID", "ChildID") VALUES (6,66)
	INTO "Child" ("ParentID", "ChildID") VALUES (7,77)
SELECT * FROM dual

-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "GrandChild" ("ParentID", "ChildID", "GrandChildID") VALUES (1,11,111)
	INTO "GrandChild" ("ParentID", "ChildID", "GrandChildID") VALUES (2,21,211)
	INTO "GrandChild" ("ParentID", "ChildID", "GrandChildID") VALUES (2,21,212)
	INTO "GrandChild" ("ParentID", "ChildID", "GrandChildID") VALUES (2,22,221)
	INTO "GrandChild" ("ParentID", "ChildID", "GrandChildID") VALUES (2,22,222)
	INTO "GrandChild" ("ParentID", "ChildID", "GrandChildID") VALUES (3,31,311)
	INTO "GrandChild" ("ParentID", "ChildID", "GrandChildID") VALUES (3,31,312)
	INTO "GrandChild" ("ParentID", "ChildID", "GrandChildID") VALUES (3,31,313)
	INTO "GrandChild" ("ParentID", "ChildID", "GrandChildID") VALUES (3,32,321)
	INTO "GrandChild" ("ParentID", "ChildID", "GrandChildID") VALUES (3,32,322)
	INTO "GrandChild" ("ParentID", "ChildID", "GrandChildID") VALUES (3,32,323)
	INTO "GrandChild" ("ParentID", "ChildID", "GrandChildID") VALUES (3,33,331)
	INTO "GrandChild" ("ParentID", "ChildID", "GrandChildID") VALUES (3,33,332)
	INTO "GrandChild" ("ParentID", "ChildID", "GrandChildID") VALUES (3,33,333)
	INTO "GrandChild" ("ParentID", "ChildID", "GrandChildID") VALUES (4,41,411)
	INTO "GrandChild" ("ParentID", "ChildID", "GrandChildID") VALUES (4,41,412)
	INTO "GrandChild" ("ParentID", "ChildID", "GrandChildID") VALUES (4,41,413)
	INTO "GrandChild" ("ParentID", "ChildID", "GrandChildID") VALUES (4,41,414)
	INTO "GrandChild" ("ParentID", "ChildID", "GrandChildID") VALUES (4,42,421)
	INTO "GrandChild" ("ParentID", "ChildID", "GrandChildID") VALUES (4,42,422)
	INTO "GrandChild" ("ParentID", "ChildID", "GrandChildID") VALUES (4,42,423)
	INTO "GrandChild" ("ParentID", "ChildID", "GrandChildID") VALUES (4,42,424)
SELECT * FROM dual

-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "InheritanceParent" ("InheritanceParentId", "TypeDiscriminator", "Name") VALUES (1,NULL,NULL)
	INTO "InheritanceParent" ("InheritanceParentId", "TypeDiscriminator", "Name") VALUES (2,1,NULL)
	INTO "InheritanceParent" ("InheritanceParentId", "TypeDiscriminator", "Name") VALUES (3,2,'InheritanceParent2')
SELECT * FROM dual

-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "InheritanceChild" ("InheritanceChildId", "TypeDiscriminator", "InheritanceParentId", "Name") VALUES (1,NULL,1,NULL)
	INTO "InheritanceChild" ("InheritanceChildId", "TypeDiscriminator", "InheritanceParentId", "Name") VALUES (2,1,2,NULL)
	INTO "InheritanceChild" ("InheritanceChildId", "TypeDiscriminator", "InheritanceParentId", "Name") VALUES (3,2,3,'InheritanceParent2')
SELECT * FROM dual

-- Oracle.11.Managed Oracle11

select dbms_lob.fileexists(bfilename('DATA_DIR', 'bfile.txt')) from dual

-- Oracle.11.Managed Oracle11

CREATE OR REPLACE DIRECTORY DATA_DIR AS '/home/oracle'

-- Oracle.11.Managed Oracle11

UPDATE "AllTypes" SET "bfileDataType" = bfilename('DATA_DIR', 'bfile.txt') WHERE "ID" = 2

