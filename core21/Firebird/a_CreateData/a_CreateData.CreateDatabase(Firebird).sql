BeforeExecute
-- Firebird

DROP PROCEDURE "AddIssue792Record";

BeforeExecute
-- Firebird

DROP PROCEDURE "Person_SelectByKey";

BeforeExecute
-- Firebird

DROP PROCEDURE "Person_SelectAll";

BeforeExecute
-- Firebird

DROP PROCEDURE "Person_SelectByName";

BeforeExecute
-- Firebird

DROP PROCEDURE "Person_Insert";

BeforeExecute
-- Firebird

DROP PROCEDURE "Person_Insert_OutputParameter";

BeforeExecute
-- Firebird

DROP PROCEDURE "Person_Update";

BeforeExecute
-- Firebird

DROP PROCEDURE "Person_Delete";

BeforeExecute
-- Firebird

DROP PROCEDURE "Patient_SelectAll";

BeforeExecute
-- Firebird

DROP PROCEDURE "Patient_SelectByName";

BeforeExecute
-- Firebird

DROP PROCEDURE "OutRefTest";

BeforeExecute
-- Firebird

DROP PROCEDURE "OutRefEnumTest";

BeforeExecute
-- Firebird

DROP PROCEDURE "Scalar_DataReader";

BeforeExecute
-- Firebird

DROP PROCEDURE "Scalar_OutputParameter";

BeforeExecute
-- Firebird

DROP PROCEDURE "Scalar_ReturnParameter";

BeforeExecute
-- Firebird

DROP VIEW "PersonView";

BeforeExecute
-- Firebird

DROP TRIGGER "CREATE_PersonID";

BeforeExecute
-- Firebird

DROP TRIGGER "CREATE_DataTypeTest";

BeforeExecute
-- Firebird

DROP TRIGGER "CREATE_BinaryDataID";

BeforeExecute
-- Firebird

DROP TABLE "Dual";

BeforeExecute
-- Firebird

DROP TABLE "DataTypeTest";

BeforeExecute
-- Firebird

DROP TABLE "Doctor";

BeforeExecute
-- Firebird

DROP TABLE "Patient";

BeforeExecute
-- Firebird

DROP TABLE "Person";

BeforeExecute
-- Firebird

DROP GENERATOR "DataTypeID";

BeforeExecute
-- Firebird

DROP GENERATOR "PersonID";

BeforeExecute
-- Firebird

DROP EXTERNAL FUNCTION RTRIM;

BeforeExecute
-- Firebird

DROP EXTERNAL FUNCTION LTRIM;

BeforeExecute
-- Firebird

DECLARE EXTERNAL FUNCTION LTRIM
	CSTRING(255) NULL
	RETURNS CSTRING(255) FREE_IT
	ENTRY_POINT 'IB_UDF_ltrim' MODULE_NAME 'ib_udf';

BeforeExecute
-- Firebird

DECLARE EXTERNAL FUNCTION RTRIM
	CSTRING(255) NULL
	RETURNS CSTRING(255) FREE_IT
	ENTRY_POINT 'IB_UDF_rtrim' MODULE_NAME 'ib_udf';

BeforeExecute
-- Firebird

/*
Dual table FOR supporting queryies LIKE:
SELECT 1 AS id => SELECT 1 AS "id" *FROM Dual*
*/
CREATE TABLE "Dual" ("Dummy"  VARCHAR(10));

BeforeExecute
-- Firebird

INSERT INTO  "Dual" ("Dummy") VALUES ('X');

BeforeExecute
-- Firebird

DROP TABLE "InheritanceParent";

BeforeExecute
-- Firebird

CREATE TABLE "InheritanceParent"
(
	"InheritanceParentId" INTEGER     NOT NULL PRIMARY KEY,
	"TypeDiscriminator"   INTEGER,
	"Name"                VARCHAR(50)
);

BeforeExecute
-- Firebird

DROP TABLE "InheritanceChild";

BeforeExecute
-- Firebird

CREATE TABLE "InheritanceChild"
(
	"InheritanceChildId"  INTEGER     NOT NULL PRIMARY KEY,
	"InheritanceParentId" INTEGER     NOT NULL,
	"TypeDiscriminator"   INTEGER,
	"Name"                VARCHAR(50)
);

BeforeExecute
-- Firebird

-- Person Table

CREATE TABLE "Person"
(
	"PersonID"   INTEGER     NOT NULL  PRIMARY KEY,
	"FirstName"  VARCHAR(50) CHARACTER SET UNICODE_FSS NOT NULL,
	"LastName"   VARCHAR(50) CHARACTER SET UNICODE_FSS NOT NULL,
	"MiddleName" VARCHAR(50) CHARACTER SET UNICODE_FSS,
	"Gender"     CHAR(1)     NOT NULL CHECK ("Gender" in ('M', 'F', 'U', 'O'))
);

BeforeExecute
-- Firebird

CREATE GENERATOR "PersonID";

BeforeExecute
-- Firebird

CREATE TRIGGER "CREATE_PersonID" FOR "Person"
BEFORE INSERT POSITION 0
AS BEGIN
	NEW."PersonID" = GEN_ID("PersonID", 1);
END;

BeforeExecute
-- Firebird

INSERT INTO "Person" ("FirstName", "LastName", "Gender") VALUES ('John',   'Pupkin',    'M');

BeforeExecute
-- Firebird

INSERT INTO "Person" ("FirstName", "LastName", "Gender") VALUES ('Tester', 'Testerson', 'M');

BeforeExecute
-- Firebird

INSERT INTO "Person" ("FirstName", "LastName", "Gender") VALUES ('Jane',   'Doe',       'F');

BeforeExecute
-- Firebird

-- INSERT INTO "Person" ("FirstName", "LastName", "Gender") VALUES ('Jürgen', 'König',     'M');
INSERT INTO "Person" ("FirstName", "LastName", "MiddleName", "Gender") VALUES (_utf8 x'4AC3BC7267656E', _utf8 x'4BC3B66E6967', 'Ko', 'M');

BeforeExecute
-- Firebird

-- Doctor Table Extension

CREATE TABLE "Doctor"
(
	"PersonID" INTEGER     NOT NULL PRIMARY KEY,
	"Taxonomy" VARCHAR(50) NOT NULL,
		CONSTRAINT "FK_Doctor_Person" FOREIGN KEY ("PersonID") REFERENCES "Person" ("PersonID")
			ON DELETE CASCADE
);

BeforeExecute
-- Firebird

INSERT INTO "Doctor" ("PersonID", "Taxonomy") VALUES (1, 'Psychiatry');

BeforeExecute
-- Firebird

-- Patient Table Extension

CREATE TABLE "Patient"
(
	"PersonID"  int           NOT NULL PRIMARY KEY,
	"Diagnosis" VARCHAR(256)  NOT NULL,
	FOREIGN KEY ("PersonID") REFERENCES "Person" ("PersonID")
			ON DELETE CASCADE
);

BeforeExecute
-- Firebird

INSERT INTO "Patient" ("PersonID", "Diagnosis") VALUES (2, 'Hallucination with Paranoid Bugs'' Delirium of Persecution');

BeforeExecute
-- Firebird

-- Data Types test

/*
Data definitions according to:
http://www.firebirdsql.org/manual/migration-mssql-data-types.html

BUT! BLOB is ised for BINARY data! not CHAR
*/

CREATE TABLE "DataTypeTest"
(
	"DataTypeID"      INTEGER NOT NULL PRIMARY KEY,
	"Binary_"         BLOB,
	"Boolean_"        CHAR(1),
	"Byte_"           SMALLINT,
	"Bytes_"          BLOB,
	CHAR_             CHAR(1),
	"DateTime_"       TIMESTAMP,
	"Decimal_"        DECIMAL(10, 2),
	"Double_"         DOUBLE PRECISION,
	"Guid_"           CHAR(38),
	"Int16_"          SMALLINT,
	"Int32_"          INTEGER,
	"Int64_"          NUMERIC(11),
	"Money_"          DECIMAL(18, 4),
	"SByte_"          SMALLINT,
	"Single_"         FLOAT,
	"Stream_"         BLOB,
	"String_"         VARCHAR(50) CHARACTER SET UNICODE_FSS,
	"UInt16_"         SMALLINT,
	"UInt32_"         INTEGER,
	"UInt64_"         NUMERIC(11),
	"Xml_"            CHAR(1000)
);

BeforeExecute
-- Firebird

CREATE GENERATOR "DataTypeID";

BeforeExecute
-- Firebird

CREATE TRIGGER "CREATE_DataTypeTest" FOR "DataTypeTest"
BEFORE INSERT POSITION 0
AS BEGIN
	NEW."DataTypeID" = GEN_ID("DataTypeID", 1); 
END;

BeforeExecute
-- Firebird

INSERT INTO "DataTypeTest"
	("Binary_", "Boolean_",   "Byte_",  "Bytes_",  CHAR_,  "DateTime_", "Decimal_",
	 "Double_",    "Guid_",  "Int16_",  "Int32_",  "Int64_",    "Money_",   "SByte_",
	 "Single_",  "Stream_", "String_", "UInt16_", "UInt32_",   "UInt64_",     "Xml_")
VALUES
	(   NULL,     NULL,    NULL,    NULL,    NULL,      NULL,     NULL,
		NULL,     NULL,    NULL,    NULL,    NULL,      NULL,     NULL,
		NULL,     NULL,    NULL,    NULL,    NULL,      NULL,     NULL);

BeforeExecute
-- Firebird

INSERT INTO "DataTypeTest"
	("Binary_",	"Boolean_",	"Byte_",   "Bytes_",  CHAR_,		"DateTime_", "Decimal_",
	 "Double_",	"Guid_",	"Int16_",  "Int32_",  "Int64_",		"Money_",   "SByte_",
	 "Single_",	"Stream_",	"String_", "UInt16_", "UInt32_",	"UInt64_",
	 "Xml_")
VALUES
	('dddddddddddddddd', 1,  255,'dddddddddddddddd', 'B', 'NOW', 12345.67,
	1234.567, 'dddddddddddddddddddddddddddddddd', 32767, 32768, 1000000, 12.3456, 127,
	1234.123, 'dddddddddddddddd', 'string', 32767, 32768, 200000000,
	'<root><element strattr="strvalue" intattr="12345"/></root>');

BeforeExecute
-- Firebird

DROP TABLE "Parent";

BeforeExecute
-- Firebird

DROP TABLE "Child";

BeforeExecute
-- Firebird

DROP TABLE "GrandChild";

BeforeExecute
-- Firebird

CREATE TABLE "Parent"      ("ParentID" int, "Value1" int);

BeforeExecute
-- Firebird

CREATE TABLE "Child"       ("ParentID" int, "ChildID" int);

BeforeExecute
-- Firebird

CREATE TABLE "GrandChild"  ("ParentID" int, "ChildID" int, "GrandChildID" int);

BeforeExecute
-- Firebird

DROP TABLE "LinqDataTypes";

BeforeExecute
-- Firebird

CREATE TABLE "LinqDataTypes"
(
	ID               int,
	"MoneyValue"     decimal(10,4),
	"DateTimeValue"  timestamp,
	"DateTimeValue2" timestamp,
	"BoolValue"      char(1),
	"GuidValue"      char(38),
	"BinaryValue"    blob,
	"SmallIntValue"  smallint,
	"IntValue"       int,
	"BigIntValue"    bigint,
	"StringValue"    VARCHAR(50)
);

BeforeExecute
-- Firebird

DROP GENERATOR "SequenceTestSeq";

BeforeExecute
-- Firebird

CREATE GENERATOR "SequenceTestSeq";

BeforeExecute
-- Firebird

DROP TABLE "SequenceTest";

BeforeExecute
-- Firebird

CREATE TABLE "SequenceTest"
(
	ID       int         NOT NULL PRIMARY KEY,
	"Value_" VARCHAR(50) NOT NULL
);

BeforeExecute
-- Firebird

DROP TRIGGER CREATE_ID;

BeforeExecute
-- Firebird

DROP GENERATOR "TestIdentityID";

BeforeExecute
-- Firebird

DROP TABLE "TestIdentity";

BeforeExecute
-- Firebird

CREATE TABLE "TestIdentity" (
	ID INTEGER NOT NULL PRIMARY KEY
);

BeforeExecute
-- Firebird

CREATE GENERATOR "TestIdentityID";

BeforeExecute
-- Firebird

CREATE TRIGGER CREATE_ID FOR "TestIdentity"
BEFORE INSERT POSITION 0
AS BEGIN
	NEW.ID = GEN_ID("TestIdentityID", 1);
END;

BeforeExecute
-- Firebird

DROP TRIGGER "AllTypes_ID";

BeforeExecute
-- Firebird

DROP GENERATOR "AllTypesID";

BeforeExecute
-- Firebird

DROP TABLE "AllTypes";

BeforeExecute
-- Firebird

CREATE TABLE "AllTypes"
(
	ID                       integer      NOT NULL PRIMARY KEY,

	"bigintDataType"           bigint,
	"smallintDataType"         smallint,
	"decimalDataType"          decimal(18),
	"intDataType"              int,
	"floatDataType"            float,
	"realDataType"             real,

	"timestampDataType"        timestamp,

	"charDataType"             char(1),
	"char20DataType"           char(20),
	"varcharDataType"          varchar(20),
	"textDataType"             blob sub_type TEXT,
	"ncharDataType"            char(20) character set UNICODE_FSS,
	"nvarcharDataType"         varchar(20) character set UNICODE_FSS,

	"blobDataType"             blob
);

BeforeExecute
-- Firebird

CREATE GENERATOR "AllTypesID";

BeforeExecute
-- Firebird

CREATE TRIGGER "AllTypes_ID" FOR "AllTypes"
BEFORE INSERT POSITION 0
AS BEGIN
	NEW.ID = GEN_ID("AllTypesID", 1);
END;

BeforeExecute
-- Firebird

INSERT INTO "AllTypes"
VALUES
(
	1,

	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,

	NULL,

	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,

	NULL
);

BeforeExecute
-- Firebird

INSERT INTO "AllTypes"
VALUES
(
	2,

	1000000,
	25555,
	2222222,
	7777777,
	20.31,
	16,

	Cast('2012-12-12 12:12:12' as timestamp),

	'1',
	'1',
	'234',
	'567',
	'23233',
	'3323',

	'12345'
);

BeforeExecute
-- Firebird

CREATE VIEW "PersonView"
AS
	SELECT * FROM "Person";

BeforeExecute
-- Firebird

-- Person_SelectByKey

CREATE PROCEDURE "Person_SelectByKey"(id INTEGER)
RETURNS (
	PersonID   INTEGER,
	FirstName  VARCHAR(50) CHARACTER SET UNICODE_FSS,
	LastName   VARCHAR(50) CHARACTER SET UNICODE_FSS,
	MiddleName VARCHAR(50) CHARACTER SET UNICODE_FSS,
	Gender     CHAR(1)
	)
AS
BEGIN
	SELECT "PersonID", "FirstName", "LastName", "MiddleName", "Gender" FROM "Person"
	WHERE "PersonID" = :id
	INTO
		:PersonID,
		:FirstName,
		:LastName,
		:MiddleName,
		:Gender;
	SUSPEND;
END;

BeforeExecute
-- Firebird

-- Person_SelectAll

CREATE PROCEDURE "Person_SelectAll"
RETURNS (
	PersonID   INTEGER,
	FirstName  VARCHAR(50) CHARACTER SET UNICODE_FSS,
	LastName   VARCHAR(50) CHARACTER SET UNICODE_FSS,
	MiddleName VARCHAR(50) CHARACTER SET UNICODE_FSS,
	Gender     CHAR(1)
	)
AS
BEGIN
	FOR 
		SELECT "PersonID", "FirstName", "LastName", "MiddleName", "Gender" FROM "Person"
		INTO
			:PersonID,
			:FirstName,
			:LastName,
			:MiddleName,
			:Gender
	DO SUSPEND;
END;

BeforeExecute
-- Firebird

-- Person_SelectByName

CREATE PROCEDURE "Person_SelectByName"
(
	in_FirstName VARCHAR(50) CHARACTER SET UNICODE_FSS,
	in_LastName  VARCHAR(50) CHARACTER SET UNICODE_FSS
)
RETURNS
(
	PersonID   int,
	FirstName  VARCHAR(50) CHARACTER SET UNICODE_FSS,
	LastName   VARCHAR(50) CHARACTER SET UNICODE_FSS,
	MiddleName VARCHAR(50) CHARACTER SET UNICODE_FSS,
	Gender     CHAR(1)
)
AS
BEGIN

	FOR SELECT "PersonID", "FirstName", "LastName", "MiddleName", "Gender" FROM "Person"
		WHERE "FirstName" LIKE :in_FirstName and "LastName" LIKE :in_LastName
	INTO
		:PersonID,
		:FirstName,
		:LastName,
		:MiddleName,
		:Gender
	DO SUSPEND;
END;

BeforeExecute
-- Firebird

-- Person_Insert

CREATE PROCEDURE "Person_Insert"
(
	FirstName  VARCHAR(50) CHARACTER SET UNICODE_FSS,
	LastName   VARCHAR(50) CHARACTER SET UNICODE_FSS,
	MiddleName VARCHAR(50) CHARACTER SET UNICODE_FSS,
	Gender     CHAR(1)
)
RETURNS (PersonID INTEGER)
AS
BEGIN
	INSERT INTO "Person"
		( "LastName",  "FirstName",  "MiddleName",  "Gender")
	VALUES
		(:LastName, :FirstName, :MiddleName, :Gender);

	SELECT MAX("PersonID") FROM "Person"
		INTO :PersonID;
	SUSPEND;
END;

BeforeExecute
-- Firebird

-- Person_Insert_OutputParameter

CREATE PROCEDURE "Person_Insert_OutputParameter"
(
	FirstName  VARCHAR(50) CHARACTER SET UNICODE_FSS,
	LastName   VARCHAR(50) CHARACTER SET UNICODE_FSS,
	MiddleName VARCHAR(50) CHARACTER SET UNICODE_FSS,
	Gender     CHAR(1)
)
RETURNS (PersonID INTEGER)
AS
BEGIN
	INSERT INTO "Person"
		( "LastName",  "FirstName",  "MiddleName",  "Gender")
	VALUES
		(:LastName, :FirstName, :MiddleName, :Gender);

	SELECT max("PersonID") FROM "Person"
	INTO :PersonID;
	SUSPEND;
END;

BeforeExecute
-- Firebird

-- Person_Update

CREATE PROCEDURE "Person_Update"(
	PersonID   INTEGER,
	FirstName  VARCHAR(50) CHARACTER SET UNICODE_FSS,
	LastName   VARCHAR(50) CHARACTER SET UNICODE_FSS,
	MiddleName VARCHAR(50) CHARACTER SET UNICODE_FSS,
	Gender     CHAR(1)
	)
AS
BEGIN
	UPDATE
		"Person"
	SET
		"LastName"   = :LastName,
		"FirstName"  = :FirstName,
		"MiddleName" = :MiddleName,
		"Gender"     = :Gender
	WHERE
		"PersonID" = :PersonID;
END;

BeforeExecute
-- Firebird

-- Person_Delete

CREATE PROCEDURE "Person_Delete"(
	PersonID INTEGER
	)
AS
BEGIN
	DELETE FROM "Person" WHERE "PersonID" = :PersonID;
END;

BeforeExecute
-- Firebird

-- Patient_SelectAll

CREATE PROCEDURE "Patient_SelectAll"
RETURNS (
	PersonID   int,
	FirstName  VARCHAR(50) CHARACTER SET UNICODE_FSS,
	LastName   VARCHAR(50) CHARACTER SET UNICODE_FSS,
	MiddleName VARCHAR(50) CHARACTER SET UNICODE_FSS,
	Gender     CHAR(1),
	Diagnosis  VARCHAR(256)
	)
AS
BEGIN
	FOR 
		SELECT
			"Person"."PersonID",
			"FirstName",
			"LastName",
			"MiddleName",
			"Gender",
			"Patient"."Diagnosis"
		FROM
			"Patient", "Person"
		WHERE
			"Patient"."PersonID" = "Person"."PersonID"
		INTO
			:PersonID,
			:FirstName,
			:LastName,
			:MiddleName,
			:Gender,
			:Diagnosis
	DO SUSPEND;
END;

BeforeExecute
-- Firebird

-- Patient_SelectByName

CREATE PROCEDURE "Patient_SelectByName"(
	FirstName VARCHAR(50) CHARACTER SET UNICODE_FSS,
	LastName  VARCHAR(50) CHARACTER SET UNICODE_FSS
	)
RETURNS (
	PersonID   int,
	MiddleName VARCHAR(50) CHARACTER SET UNICODE_FSS,
	Gender     CHAR(1),
	Diagnosis  VARCHAR(256)
	)
AS
BEGIN
	FOR 
		SELECT
			"Person"."PersonID",
			"MiddleName",
			"Gender",
			"Patient"."Diagnosis"
		FROM
			"Patient", "Person"
		WHERE
			"Patient"."PersonID" = "Person"."PersonID"
			and "FirstName" = :FirstName and "LastName" = :LastName
		INTO
			:PersonID,
			:MiddleName,
			:Gender,
			:Diagnosis
	DO SUSPEND;
END;

BeforeExecute
-- Firebird

-- OutRefTest

/*
Fake input parameters are used to "emulate" input/output parameters.
Each inout parameter should be defined in RETURNS(...) section
and allso have a "mirror" in input section, mirror name shoul be:
FdpDataProvider.InOutInputParameterPrefix + [parameter name]
ex:
in_inputOutputID is input mirror FOR inout parameter inputOutputID
*/
CREATE PROCEDURE "OutRefTest"(
	ID					INTEGER,
	in_inputOutputID	INTEGER,
	str					VARCHAR(50),
	in_inputOutputStr	VARCHAR(50)
	)
RETURNS(
	inputOutputID  INTEGER,
	inputOutputStr VARCHAR(50),
	outputID       INTEGER,
	outputStr      VARCHAR(50)
	)
AS
BEGIN
	outputID       = ID;
	inputOutputID  = ID + in_inputOutputID;
	outputStr      = str;
	inputOutputStr = str || in_inputOutputStr;
	SUSPEND;
END;

BeforeExecute
-- Firebird

-- OutRefEnumTest

CREATE PROCEDURE "OutRefEnumTest"(
		str					VARCHAR(50),
		in_inputOutputStr	VARCHAR(50)
		)
RETURNS (
	inputOutputStr VARCHAR(50),
	outputStr      VARCHAR(50)
	)
AS
BEGIN
	outputStr      = str;
	inputOutputStr = str || in_inputOutputStr;
	SUSPEND;
END;

BeforeExecute
-- Firebird

-- ExecuteScalarTest

CREATE PROCEDURE "Scalar_DataReader"
RETURNS(
	intField	INTEGER,
	stringField	VARCHAR(50)
	)
AS
BEGIN
	intField = 12345;
	stringField = '54321';
	SUSPEND;
END;

BeforeExecute
-- Firebird

CREATE PROCEDURE "Scalar_OutputParameter"
RETURNS (
	outputInt      INTEGER,
	outputString   VARCHAR(50)
	)
AS
BEGIN
	outputInt = 12345;
	outputString = '54321';
	SUSPEND;
END;

BeforeExecute
-- Firebird

/*
"Return_Value" is the name for ReturnValue "emulating"
may be changed: FdpDataProvider.ReturnParameterName
*/
CREATE PROCEDURE "Scalar_ReturnParameter"
RETURNS (Return_Value INTEGER)
AS
BEGIN
	Return_Value = 12345;
	SUSPEND;
END;

BeforeExecute
-- Firebird

DROP TABLE "CamelCaseName";

BeforeExecute
-- Firebird

CREATE TABLE "CamelCaseName"
(
	"Id"     INTEGER NOT NULL PRIMARY KEY,
	Name1    VARCHAR(20),
	"Name2"  VARCHAR(20),
	"NAME3"  VARCHAR(20),
	"_NAME4" VARCHAR(20),
	"NAME 5" VARCHAR(20)
);

BeforeExecute
-- Firebird

DROP TABLE "TestMerge1";

BeforeExecute
-- Firebird

DROP TABLE "TestMerge2";

BeforeExecute
-- Firebird

CREATE TABLE "TestMerge1"
(
	"Id"     INTEGER     NOT NULL PRIMARY KEY,
	"Field1" INTEGER,
	"Field2" INTEGER,
	"Field3" INTEGER,
	"Field4" INTEGER,
	"Field5" INTEGER,

	"FieldInt64"      BIGINT,
	"FieldBoolean"    CHAR(1),
	"FieldString"     VARCHAR(20),
	"FieldNString"    VARCHAR(20) CHARACTER SET UNICODE_FSS,
	"FieldChar"       CHAR(1),
	"FieldNChar"      CHAR(1) CHARACTER SET UNICODE_FSS,
	"FieldFloat"      FLOAT,
	"FieldDouble"     DOUBLE PRECISION,
	"FieldDateTime"   TIMESTAMP,
	"FieldBinary"     BLOB(20),
	"FieldGuid"       CHAR(38),
	"FieldDecimal"    DECIMAL(18, 10),
	"FieldDate"       DATE,
	"FieldTime"       TIMESTAMP,
	"FieldEnumString" VARCHAR(20),
	"FieldEnumNumber" INT
);

BeforeExecute
-- Firebird

CREATE TABLE "TestMerge2"
(
	"Id"     INTEGER     NOT NULL PRIMARY KEY,
	"Field1" INTEGER,
	"Field2" INTEGER,
	"Field3" INTEGER,
	"Field4" INTEGER,
	"Field5" INTEGER,

	"FieldInt64"      BIGINT,
	"FieldBoolean"    CHAR(1),
	"FieldString"     VARCHAR(20),
	"FieldNString"    VARCHAR(20) CHARACTER SET UNICODE_FSS,
	"FieldChar"       CHAR(1),
	"FieldNChar"      CHAR(1) CHARACTER SET UNICODE_FSS,
	"FieldFloat"      FLOAT,
	"FieldDouble"     DOUBLE PRECISION,
	"FieldDateTime"   TIMESTAMP,
	"FieldBinary"     BLOB(20),
	"FieldGuid"       CHAR(38),
	"FieldDecimal"    DECIMAL(18, 10),
	"FieldDate"       DATE,
	"FieldTime"       TIMESTAMP,
	"FieldEnumString" VARCHAR(20),
	"FieldEnumNumber" INT
);

BeforeExecute
-- Firebird

CREATE PROCEDURE "AddIssue792Record"
AS
BEGIN
	INSERT INTO "AllTypes"("char20DataType") VALUES('issue792');
	SUSPEND;
END;

BeforeExecute
-- Firebird

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
SELECT 1,1.11,CAST('2001-01-11 01:11:21.100' AS timestamp),NULL,1,'ef129165-6ffe-4df9-bb6b-bb16e413c883',1,NULL,1,NULL FROM rdb$database UNION ALL
SELECT 2,2.49,CAST('2005-05-15 05:15:25.500' AS timestamp),NULL,0,'bc663a61-7b40-4681-ac38-f9aaf55b706b',2,NULL,2,'' FROM rdb$database UNION ALL
SELECT 3,3.99,CAST('2009-09-19 09:19:29.090' AS timestamp),NULL,1,'d2f970c0-35ac-4987-9cd5-5badb1757436',3,NULL,NULL,'1' FROM rdb$database UNION ALL
SELECT 4,4.50,CAST('2009-09-20 09:19:29.090' AS timestamp),NULL,0,'40932fdb-1543-4e4a-ac2c-ca371604fb4b',4,NULL,NULL,'2' FROM rdb$database UNION ALL
SELECT 5,5.50,CAST('2009-09-20 09:19:29.090' AS timestamp),NULL,1,'febe3eca-cb5f-40b2-ad39-2979d312afca',5,NULL,NULL,'3' FROM rdb$database UNION ALL
SELECT 6,6.55,CAST('2009-09-22 09:19:29.090' AS timestamp),NULL,0,'8d3c5d1d-47db-4730-9fe7-968f6228a4c0',6,NULL,NULL,'4' FROM rdb$database UNION ALL
SELECT 7,7.00,CAST('2009-09-23 09:19:29.090' AS timestamp),NULL,1,'48094115-83af-46dd-a906-bff26ee21ee2',7,NULL,NULL,'5' FROM rdb$database UNION ALL
SELECT 8,8.99,CAST('2009-09-24 09:19:29.090' AS timestamp),NULL,0,'c1139f1f-1335-4cd4-937e-92602f732dd3',8,NULL,NULL,'6' FROM rdb$database UNION ALL
SELECT 9,9.63,CAST('2009-09-25 09:19:29.090' AS timestamp),NULL,1,'46c5c512-3d4b-4cf7-b4e7-1de080789e5d',9,NULL,NULL,'7' FROM rdb$database UNION ALL
SELECT 10,10.77,CAST('2009-09-26 09:19:29.090' AS timestamp),NULL,0,'61b2bc55-147f-4b40-93ed-a4aa83602fee',10,NULL,NULL,'8' FROM rdb$database UNION ALL
SELECT 11,11.45,CAST('2009-09-27' AS timestamp),NULL,1,'d3021d18-97f0-4dc0-98d0-f0c7df4a1230',11,NULL,NULL,'9' FROM rdb$database UNION ALL
SELECT 12,11.45,CAST('2012-11-07 19:19:29.090' AS timestamp),NULL,1,'03021d18-97f0-4dc0-98d0-f0c7df4a1230',12,NULL,NULL,'0' FROM rdb$database

BeforeExecute
-- Firebird

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
SELECT 1,1 FROM rdb$database UNION ALL
SELECT 2,NULL FROM rdb$database UNION ALL
SELECT 3,3 FROM rdb$database UNION ALL
SELECT 4,NULL FROM rdb$database UNION ALL
SELECT 5,5 FROM rdb$database UNION ALL
SELECT 6,6 FROM rdb$database UNION ALL
SELECT 7,1 FROM rdb$database

BeforeExecute
-- Firebird

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
SELECT 1,11 FROM rdb$database UNION ALL
SELECT 2,21 FROM rdb$database UNION ALL
SELECT 2,22 FROM rdb$database UNION ALL
SELECT 3,31 FROM rdb$database UNION ALL
SELECT 3,32 FROM rdb$database UNION ALL
SELECT 3,33 FROM rdb$database UNION ALL
SELECT 4,41 FROM rdb$database UNION ALL
SELECT 4,42 FROM rdb$database UNION ALL
SELECT 4,43 FROM rdb$database UNION ALL
SELECT 4,44 FROM rdb$database UNION ALL
SELECT 6,61 FROM rdb$database UNION ALL
SELECT 6,62 FROM rdb$database UNION ALL
SELECT 6,63 FROM rdb$database UNION ALL
SELECT 6,64 FROM rdb$database UNION ALL
SELECT 6,65 FROM rdb$database UNION ALL
SELECT 6,66 FROM rdb$database UNION ALL
SELECT 7,77 FROM rdb$database

BeforeExecute
-- Firebird

INSERT INTO "GrandChild"
(
	"ParentID",
	"ChildID",
	"GrandChildID"
)
SELECT 1,11,111 FROM rdb$database UNION ALL
SELECT 2,21,211 FROM rdb$database UNION ALL
SELECT 2,21,212 FROM rdb$database UNION ALL
SELECT 2,22,221 FROM rdb$database UNION ALL
SELECT 2,22,222 FROM rdb$database UNION ALL
SELECT 3,31,311 FROM rdb$database UNION ALL
SELECT 3,31,312 FROM rdb$database UNION ALL
SELECT 3,31,313 FROM rdb$database UNION ALL
SELECT 3,32,321 FROM rdb$database UNION ALL
SELECT 3,32,322 FROM rdb$database UNION ALL
SELECT 3,32,323 FROM rdb$database UNION ALL
SELECT 3,33,331 FROM rdb$database UNION ALL
SELECT 3,33,332 FROM rdb$database UNION ALL
SELECT 3,33,333 FROM rdb$database UNION ALL
SELECT 4,41,411 FROM rdb$database UNION ALL
SELECT 4,41,412 FROM rdb$database UNION ALL
SELECT 4,41,413 FROM rdb$database UNION ALL
SELECT 4,41,414 FROM rdb$database UNION ALL
SELECT 4,42,421 FROM rdb$database UNION ALL
SELECT 4,42,422 FROM rdb$database UNION ALL
SELECT 4,42,423 FROM rdb$database UNION ALL
SELECT 4,42,424 FROM rdb$database

BeforeExecute
-- Firebird

INSERT INTO "InheritanceParent"
(
	"TypeDiscriminator",
	"InheritanceParentId",
	"Name"
)
SELECT NULL,1,NULL FROM rdb$database UNION ALL
SELECT 1,2,NULL FROM rdb$database UNION ALL
SELECT 2,3,'InheritanceParent2' FROM rdb$database

BeforeExecute
-- Firebird

INSERT INTO "InheritanceChild"
(
	"InheritanceParentId",
	"TypeDiscriminator",
	"InheritanceChildId",
	"Name"
)
SELECT 1,NULL,1,NULL FROM rdb$database UNION ALL
SELECT 2,1,2,NULL FROM rdb$database UNION ALL
SELECT 3,2,3,'InheritanceParent2' FROM rdb$database

BeforeExecute
--  Firebird
DECLARE @FIRSTNAME VarChar(255) -- String
SET     @FIRSTNAME = _utf8 x'4AC3BC7267656E'
DECLARE @LASTNAME VarChar(255) -- String
SET     @LASTNAME = _utf8 x'4BC3B66E6967'


				UPDATE "Person"
				SET
					"FirstName" = @FIRSTNAME,
					"LastName"  = @LASTNAME
				WHERE "PersonID" = 4

