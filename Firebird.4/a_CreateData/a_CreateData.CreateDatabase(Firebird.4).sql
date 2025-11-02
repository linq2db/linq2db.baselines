-- Firebird.4 Firebird4

DROP PACKAGE TEST_PACKAGE1;

-- Firebird.4 Firebird4

DROP PACKAGE TEST_PACKAGE2;

-- Firebird.4 Firebird4

DROP PROCEDURE TEST_PROCEDURE;

-- Firebird.4 Firebird4

DROP PROCEDURE TEST_TABLE_FUNCTION;

-- Firebird.4 Firebird4

DROP FUNCTION TEST_FUNCTION;

-- Firebird.4 Firebird4

DROP PROCEDURE "AddIssue792Record";

-- Firebird.4 Firebird4

DROP PROCEDURE "Person_SelectByKey";

-- Firebird.4 Firebird4

DROP PROCEDURE "Person_SelectAll";

-- Firebird.4 Firebird4

DROP PROCEDURE "Person_SelectByName";

-- Firebird.4 Firebird4

DROP PROCEDURE "Person_Insert";

-- Firebird.4 Firebird4

DROP PROCEDURE "Person_Insert_OutputParameter";

-- Firebird.4 Firebird4

DROP PROCEDURE "Person_Update";

-- Firebird.4 Firebird4

DROP PROCEDURE "Person_Delete";

-- Firebird.4 Firebird4

DROP PROCEDURE "Patient_SelectAll";

-- Firebird.4 Firebird4

DROP PROCEDURE "Patient_SelectByName";

-- Firebird.4 Firebird4

DROP PROCEDURE "OutRefTest";

-- Firebird.4 Firebird4

DROP PROCEDURE "OutRefEnumTest";

-- Firebird.4 Firebird4

DROP PROCEDURE "Scalar_DataReader";

-- Firebird.4 Firebird4

DROP PROCEDURE "Scalar_OutputParameter";

-- Firebird.4 Firebird4

DROP PROCEDURE "Scalar_ReturnParameter";

-- Firebird.4 Firebird4

DROP PROCEDURE test_v4_types;

-- Firebird.4 Firebird4

DROP VIEW "PersonView";

-- Firebird.4 Firebird4

DROP TRIGGER "CREATE_PersonID";

-- Firebird.4 Firebird4

DROP TRIGGER "CREATE_DataTypeTest";

-- Firebird.4 Firebird4

DROP TABLE "Dual";

-- Firebird.4 Firebird4

DROP TABLE "DataTypeTest";

-- Firebird.4 Firebird4

DROP TABLE "Doctor";

-- Firebird.4 Firebird4

DROP TABLE "Patient";

-- Firebird.4 Firebird4

DROP TABLE "Person";

-- Firebird.4 Firebird4

DROP GENERATOR "DataTypeID";

-- Firebird.4 Firebird4

DROP GENERATOR "PersonID";

-- Firebird.4 Firebird4

DROP EXTERNAL FUNCTION RTRIM;

-- Firebird.4 Firebird4

DROP EXTERNAL FUNCTION LTRIM;

-- Firebird.4 Firebird4

DECLARE EXTERNAL FUNCTION LTRIM
	CSTRING(255) NULL
	RETURNS CSTRING(255) FREE_IT
	ENTRY_POINT 'IB_UDF_ltrim' MODULE_NAME 'ib_udf';

-- Firebird.4 Firebird4

DECLARE EXTERNAL FUNCTION RTRIM
	CSTRING(255) NULL
	RETURNS CSTRING(255) FREE_IT
	ENTRY_POINT 'IB_UDF_rtrim' MODULE_NAME 'ib_udf';

-- Firebird.4 Firebird4

/*
Dual table FOR supporting queryies LIKE:
SELECT 1 AS id => SELECT 1 AS "id" *FROM Dual*
*/
CREATE TABLE "Dual" ("Dummy"  VARCHAR(10));

-- Firebird.4 Firebird4

INSERT INTO  "Dual" ("Dummy") VALUES ('X');

-- Firebird.4 Firebird4

DROP TABLE "InheritanceParent";

-- Firebird.4 Firebird4

CREATE TABLE "InheritanceParent"
(
	"InheritanceParentId" INTEGER     NOT NULL PRIMARY KEY,
	"TypeDiscriminator"   INTEGER,
	"Name"                VARCHAR(50)
);

-- Firebird.4 Firebird4

DROP TABLE "InheritanceChild";

-- Firebird.4 Firebird4

CREATE TABLE "InheritanceChild"
(
	"InheritanceChildId"  INTEGER     NOT NULL PRIMARY KEY,
	"InheritanceParentId" INTEGER     NOT NULL,
	"TypeDiscriminator"   INTEGER,
	"Name"                VARCHAR(50)
);

-- Firebird.4 Firebird4

-- Person Table

CREATE TABLE "Person"
(
	"PersonID"   INTEGER     NOT NULL  PRIMARY KEY,
	"FirstName"  VARCHAR(50) CHARACTER SET UNICODE_FSS NOT NULL,
	"LastName"   VARCHAR(50) CHARACTER SET UNICODE_FSS NOT NULL,
	"MiddleName" VARCHAR(50) CHARACTER SET UNICODE_FSS,
	"Gender"     CHAR(1)     NOT NULL CHECK ("Gender" in ('M', 'F', 'U', 'O'))
);

-- Firebird.4 Firebird4

CREATE GENERATOR "PersonID";

-- Firebird.4 Firebird4

CREATE TRIGGER "CREATE_PersonID" FOR "Person"
BEFORE INSERT POSITION 0
AS BEGIN
	NEW."PersonID" = GEN_ID("PersonID", 1);
END;

-- Firebird.4 Firebird4

INSERT INTO "Person" ("FirstName", "LastName", "Gender") VALUES ('John',   'Pupkin',    'M');

-- Firebird.4 Firebird4

INSERT INTO "Person" ("FirstName", "LastName", "Gender") VALUES ('Tester', 'Testerson', 'M');

-- Firebird.4 Firebird4

INSERT INTO "Person" ("FirstName", "LastName", "Gender") VALUES ('Jane',   'Doe',       'F');

-- Firebird.4 Firebird4

-- INSERT INTO "Person" ("FirstName", "LastName", "Gender") VALUES ('Jürgen', 'König',     'M');
INSERT INTO "Person" ("FirstName", "LastName", "MiddleName", "Gender") VALUES (_utf8 x'4AC3BC7267656E', _utf8 x'4BC3B66E6967', 'Ko', 'M');

-- Firebird.4 Firebird4

-- Doctor Table Extension

CREATE TABLE "Doctor"
(
	"PersonID" INTEGER     NOT NULL PRIMARY KEY,
	"Taxonomy" VARCHAR(50) NOT NULL,
		CONSTRAINT "FK_Doctor_Person" FOREIGN KEY ("PersonID") REFERENCES "Person" ("PersonID")
			ON DELETE CASCADE
);

-- Firebird.4 Firebird4

INSERT INTO "Doctor" ("PersonID", "Taxonomy") VALUES (1, 'Psychiatry');

-- Firebird.4 Firebird4

-- Patient Table Extension

CREATE TABLE "Patient"
(
	"PersonID"  int           NOT NULL PRIMARY KEY,
	"Diagnosis" VARCHAR(256)  NOT NULL,
	FOREIGN KEY ("PersonID") REFERENCES "Person" ("PersonID")
			ON DELETE CASCADE
);

-- Firebird.4 Firebird4

INSERT INTO "Patient" ("PersonID", "Diagnosis") VALUES (2, 'Hallucination with Paranoid Bugs'' Delirium of Persecution');

-- Firebird.4 Firebird4

-- Data Types test

/*
Data definitions according to:
http://www.firebirdsql.org/manual/migration-mssql-data-types.html

BUT! BLOB is used for BINARY data! not CHAR
*/

CREATE TABLE "DataTypeTest"
(
	"DataTypeID"      INTEGER NOT NULL PRIMARY KEY,
	"Binary_"         BLOB,

	"Boolean_"        BOOLEAN,




	"Byte_"           SMALLINT,
	"Bytes_"          BLOB,
	CHAR_             CHAR(1),
	"DateTime_"       TIMESTAMP,
	"Decimal_"        DECIMAL(10, 2),
	"Double_"         DOUBLE PRECISION,
	"Guid_"           CHAR(16) CHARACTER SET OCTETS,
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

-- Firebird.4 Firebird4

CREATE GENERATOR "DataTypeID";

-- Firebird.4 Firebird4

CREATE TRIGGER "CREATE_DataTypeTest" FOR "DataTypeTest"
BEFORE INSERT POSITION 0
AS BEGIN
	NEW."DataTypeID" = GEN_ID("DataTypeID", 1);
END;

-- Firebird.4 Firebird4

INSERT INTO "DataTypeTest"
	("Binary_", "Boolean_",   "Byte_",  "Bytes_",  CHAR_,  "DateTime_", "Decimal_",
	 "Double_",    "Guid_",  "Int16_",  "Int32_",  "Int64_",    "Money_",   "SByte_",
	 "Single_",  "Stream_", "String_", "UInt16_", "UInt32_",   "UInt64_",     "Xml_")
VALUES
	(   NULL,     NULL,    NULL,    NULL,    NULL,      NULL,     NULL,
		NULL,     NULL,    NULL,    NULL,    NULL,      NULL,     NULL,
		NULL,     NULL,    NULL,    NULL,    NULL,      NULL,     NULL);

-- Firebird.4 Firebird4

INSERT INTO "DataTypeTest"
	("Binary_",	"Boolean_",	"Byte_",   "Bytes_",  CHAR_,		"DateTime_", "Decimal_",
	 "Double_",	"Guid_",	"Int16_",  "Int32_",  "Int64_",		"Money_",   "SByte_",
	 "Single_",	"Stream_",	"String_", "UInt16_", "UInt32_",	"UInt64_",
	 "Xml_")
VALUES
	('dddddddddddddddd',

	TRUE




	,255,'dddddddddddddddd', 'B', 'NOW', 12345.67,
	1234.567, X'dddddddddddddddddddddddddddddddd', 32767, 32768, 1000000, 12.3456, 127,
	1234.123, 'dddddddddddddddd', 'string', 32767, 32768, 200000000,
	'<root><element strattr="strvalue" intattr="12345"/></root>');

-- Firebird.4 Firebird4

DROP TABLE "Parent";

-- Firebird.4 Firebird4

DROP TABLE "Child";

-- Firebird.4 Firebird4

DROP TABLE "GrandChild";

-- Firebird.4 Firebird4

CREATE TABLE "Parent"      ("ParentID" int, "Value1" int);

-- Firebird.4 Firebird4

CREATE TABLE "Child"       ("ParentID" int, "ChildID" int);

-- Firebird.4 Firebird4

CREATE TABLE "GrandChild"  ("ParentID" int, "ChildID" int, "GrandChildID" int);

-- Firebird.4 Firebird4

DROP TABLE "LinqDataTypes";

-- Firebird.4 Firebird4

CREATE TABLE "LinqDataTypes"
(
	ID               int,
	"MoneyValue"     decimal(10,4),
	"DateTimeValue"  timestamp,
	"DateTimeValue2" timestamp,

	"BoolValue"      BOOLEAN,




	"GuidValue"      CHAR(16) CHARACTER SET OCTETS,
	"BinaryValue"    blob,
	"SmallIntValue"  smallint,
	"IntValue"       int,
	"BigIntValue"    bigint,
	"StringValue"    VARCHAR(50)
);

-- Firebird.4 Firebird4

DROP GENERATOR "SequenceTestSeq";

-- Firebird.4 Firebird4

CREATE GENERATOR "SequenceTestSeq";

-- Firebird.4 Firebird4

DROP TABLE "SequenceTest";

-- Firebird.4 Firebird4

CREATE TABLE "SequenceTest"
(
	ID       int         NOT NULL PRIMARY KEY,
	"Value_" VARCHAR(50) NOT NULL
);

-- Firebird.4 Firebird4

DROP TRIGGER CREATE_ID;

-- Firebird.4 Firebird4

DROP GENERATOR "TestIdentityID";

-- Firebird.4 Firebird4

DROP TABLE "TestIdentity";

-- Firebird.4 Firebird4

CREATE TABLE "TestIdentity" (
	ID INTEGER NOT NULL PRIMARY KEY
);

-- Firebird.4 Firebird4

CREATE GENERATOR "TestIdentityID";

-- Firebird.4 Firebird4

CREATE TRIGGER CREATE_ID FOR "TestIdentity"
BEFORE INSERT POSITION 0
AS BEGIN
	NEW.ID = GEN_ID("TestIdentityID", 1);
END;

-- Firebird.4 Firebird4

DROP TRIGGER "AllTypes_ID";

-- Firebird.4 Firebird4

DROP GENERATOR "AllTypesID";

-- Firebird.4 Firebird4

DROP TABLE "AllTypes";

-- Firebird.4 Firebird4

CREATE TABLE "AllTypes"
(
	ID                       integer      NOT NULL PRIMARY KEY,

	"bigintDataType"           bigint,
	"smallintDataType"         smallint,
	"decimalDataType"          decimal(18),
	"intDataType"              int,
	"floatDataType"            float,
	"realDataType"             real,
	"doubleDataType"           double precision,

	"timestampDataType"        timestamp,

	"charDataType"             char(1),
	"char20DataType"           char(20),
	"varcharDataType"          varchar(20),
	"textDataType"             blob sub_type TEXT,
	"ncharDataType"            char(20) character set UNICODE_FSS,
	"nvarcharDataType"         varchar(20) character set UNICODE_FSS,



	"timestampTZDataType"      timestamp with time zone,
	"timeTZDataType"           time with time zone,
	"decfloat16DataType"       decfloat(16),
	"decfloat34DataType"       decfloat,
	"int128DataType"           int128,



	"blobDataType"             blob
);

-- Firebird.4 Firebird4

CREATE GENERATOR "AllTypesID";

-- Firebird.4 Firebird4

CREATE TRIGGER "AllTypes_ID" FOR "AllTypes"
BEFORE INSERT POSITION 0
AS BEGIN
	NEW.ID = GEN_ID("AllTypesID", 1);
END;

-- Firebird.4 Firebird4

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
	NULL,



	NULL,
	NULL,
	NULL,
	NULL,
	NULL,



	NULL
);

-- Firebird.4 Firebird4

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
	16.17,

	Cast('2012-12-12 12:12:12' as timestamp),

	'1',
	'1',
	'234',
	'567',
	'23233',
	'3323',



	'2020-12-12 12:24:35 Europe/Andorra',
	'12:13 Australia/Hobart',
	1234567890.123456,
	123456789012345678901234567890.1234,
	170141183460469231731687303715884105727,



	'12345'
);

-- Firebird.4 Firebird4

CREATE VIEW "PersonView"
AS
	SELECT * FROM "Person";

-- Firebird.4 Firebird4

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

-- Firebird.4 Firebird4

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

-- Firebird.4 Firebird4

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

-- Firebird.4 Firebird4

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

-- Firebird.4 Firebird4

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

-- Firebird.4 Firebird4

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

-- Firebird.4 Firebird4

-- Person_Delete

CREATE PROCEDURE "Person_Delete"(
	"PersonID" INTEGER
	)
AS
BEGIN
	DELETE FROM "Person" WHERE "PersonID" = :"PersonID";
END;

-- Firebird.4 Firebird4

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

-- Firebird.4 Firebird4

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

-- Firebird.4 Firebird4

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

-- Firebird.4 Firebird4

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

-- Firebird.4 Firebird4

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

-- Firebird.4 Firebird4

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

-- Firebird.4 Firebird4

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

-- Firebird.4 Firebird4

DROP TABLE "CamelCaseName";

-- Firebird.4 Firebird4

CREATE TABLE "CamelCaseName"
(
	"Id"     INTEGER NOT NULL PRIMARY KEY,
	Name1    VARCHAR(20),
	"Name2"  VARCHAR(20),
	"NAME3"  VARCHAR(20),
	"_NAME4" VARCHAR(20),
	"NAME 5" VARCHAR(20)
);

-- Firebird.4 Firebird4

DROP TABLE "TestMerge1";

-- Firebird.4 Firebird4

DROP TABLE "TestMerge2";

-- Firebird.4 Firebird4

CREATE TABLE "TestMerge1"
(
	"Id"     INTEGER     NOT NULL PRIMARY KEY,
	"Field1" INTEGER,
	"Field2" INTEGER,
	"Field3" INTEGER,
	"Field4" INTEGER,
	"Field5" INTEGER,

	"FieldInt64"      BIGINT,

	"FieldBoolean"    BOOLEAN,




	"FieldString"     VARCHAR(20),
	"FieldNString"    VARCHAR(20) CHARACTER SET UNICODE_FSS,
	"FieldChar"       CHAR(1),
	"FieldNChar"      CHAR(1) CHARACTER SET UNICODE_FSS,
	"FieldFloat"      FLOAT,
	"FieldDouble"     DOUBLE PRECISION,
	"FieldDateTime"   TIMESTAMP,
	"FieldBinary"     BLOB(20),
	"FieldGuid"       CHAR(16) CHARACTER SET OCTETS,
	"FieldDecimal"    DECIMAL(18, 10),
	"FieldDate"       DATE,
	"FieldTime"       TIMESTAMP,
	"FieldEnumString" VARCHAR(20),
	"FieldEnumNumber" INT
);

-- Firebird.4 Firebird4

CREATE TABLE "TestMerge2"
(
	"Id"     INTEGER     NOT NULL PRIMARY KEY,
	"Field1" INTEGER,
	"Field2" INTEGER,
	"Field3" INTEGER,
	"Field4" INTEGER,
	"Field5" INTEGER,

	"FieldInt64"      BIGINT,

	"FieldBoolean"    BOOLEAN,




	"FieldString"     VARCHAR(20),
	"FieldNString"    VARCHAR(20) CHARACTER SET UNICODE_FSS,
	"FieldChar"       CHAR(1),
	"FieldNChar"      CHAR(1) CHARACTER SET UNICODE_FSS,
	"FieldFloat"      FLOAT,
	"FieldDouble"     DOUBLE PRECISION,
	"FieldDateTime"   TIMESTAMP,
	"FieldBinary"     BLOB(20),
	"FieldGuid"       CHAR(16) CHARACTER SET OCTETS,
	"FieldDecimal"    DECIMAL(18, 10),
	"FieldDate"       DATE,
	"FieldTime"       TIMESTAMP,
	"FieldEnumString" VARCHAR(20),
	"FieldEnumNumber" INT
);

-- Firebird.4 Firebird4

CREATE PROCEDURE "AddIssue792Record"
AS
BEGIN
	INSERT INTO "AllTypes"("char20DataType") VALUES('issue792');
END;

-- Firebird.4 Firebird4

CREATE PROCEDURE test_v4_types
(
	tstz       timestamp with time zone,
	ttz        time with time zone,
	decfloat16 decfloat(16),
	decfloat34 decfloat,
	int_128    int128
)
RETURNS
(
	col_tstz       timestamp with time zone,
	col_ttz        time with time zone,
	col_decfloat16 decfloat(16),
	col_decfloat34 decfloat,
	col_int_128    int128
)
AS
BEGIN
	FOR SELECT FIRST 1 :tstz, :ttz, :decfloat16, :decfloat34, :int_128 FROM rdb$database
	INTO
		:col_tstz,
		:col_ttz,
		:col_decfloat16,
		:col_decfloat34,
		:col_int_128
	DO SUSPEND;
END;

-- Firebird.4 Firebird4

DROP TABLE "CollatedTable"

-- Firebird.4 Firebird4

CREATE TABLE "CollatedTable"
(
	"Id"				INT NOT NULL,
	"CaseSensitive"		VARCHAR(20) CHARACTER SET UTF8 COLLATE UNICODE,
	"CaseInsensitive"	VARCHAR(20) CHARACTER SET UTF8 COLLATE UNICODE_CI
)

-- Firebird.4 Firebird4

CREATE OR ALTER PACKAGE TEST_PACKAGE1
AS
BEGIN
	PROCEDURE	TEST_PROCEDURE(I INT)	RETURNS (O INT);
	PROCEDURE	TEST_TABLE_FUNCTION(I INT)	RETURNS (O INT);
	FUNCTION	TEST_FUNCTION(I INT)	RETURNS INT;
END

-- Firebird.4 Firebird4

RECREATE PACKAGE BODY TEST_PACKAGE1
AS
BEGIN
	PROCEDURE TEST_PROCEDURE(I INT) RETURNS (O INT)
	AS
	BEGIN
		O = I + 1;
	END
	PROCEDURE TEST_TABLE_FUNCTION(I INT) RETURNS (O INT)
	AS
	BEGIN
		FOR SELECT :I + 1 FROM "Person"
		INTO :O
		DO SUSPEND;
	END
	FUNCTION TEST_FUNCTION(I INT) RETURNS INT
	AS
	BEGIN
		RETURN I + 1;
	END
END

-- Firebird.4 Firebird4

CREATE OR ALTER PACKAGE TEST_PACKAGE2
AS
BEGIN
	PROCEDURE TEST_PROCEDURE(I INT) RETURNS (O INT);
	PROCEDURE TEST_TABLE_FUNCTION(I INT) RETURNS (O INT);
	FUNCTION TEST_FUNCTION(I INT) RETURNS INT;
END

-- Firebird.4 Firebird4

RECREATE PACKAGE BODY TEST_PACKAGE2
AS
BEGIN
	PROCEDURE TEST_PROCEDURE(I INT) RETURNS (O INT)
	AS
	BEGIN
		O = I + 2;
	END
	PROCEDURE TEST_TABLE_FUNCTION(I INT) RETURNS (O INT)
	AS
	BEGIN
		FOR SELECT :I + 2 FROM "Person"
		INTO :O
		DO SUSPEND;
	END
	FUNCTION TEST_FUNCTION(I INT) RETURNS INT
	AS
	BEGIN
		RETURN I + 2;
	END
END

-- Firebird.4 Firebird4

CREATE  PROCEDURE TEST_PROCEDURE(I INT) RETURNS (O INT)
AS
	BEGIN
		O = I + 3;
	END

-- Firebird.4 Firebird4

CREATE PROCEDURE TEST_TABLE_FUNCTION(I INT)
RETURNS (O INT)
AS
BEGIN
	FOR SELECT :I + 3 FROM "Person"
	INTO :O
	DO SUSPEND;
END

-- Firebird.4 Firebird4

CREATE  FUNCTION TEST_FUNCTION(I INT) RETURNS INT
AS
	BEGIN
		RETURN I + 3;
	END

-- Firebird.4 Firebird4

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
SELECT 1,1.11,CAST('2001-01-11 01:11:21.100' AS timestamp),NULL,TRUE,X'EF1291656FFE4DF9BB6BBB16E413C883',1,NULL,1,CAST(NULL AS VarChar(50) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,2.49,CAST('2005-05-15 05:15:25.500' AS timestamp),NULL,FALSE,X'BC663A617B404681AC38F9AAF55B706B',2,NULL,2,'' FROM rdb$database UNION ALL
SELECT 3,3.99,CAST('2009-09-19 09:19:29.090' AS timestamp),NULL,TRUE,X'D2F970C035AC49879CD55BADB1757436',3,NULL,NULL,'1' FROM rdb$database UNION ALL
SELECT 4,4.50,CAST('2009-09-20 09:19:29.090' AS timestamp),NULL,FALSE,X'40932FDB15434E4AAC2CCA371604FB4B',4,NULL,NULL,'2' FROM rdb$database UNION ALL
SELECT 5,5.50,CAST('2009-09-20 09:19:29.090' AS timestamp),NULL,TRUE,X'FEBE3ECACB5F40B2AD392979D312AFCA',5,NULL,NULL,'3' FROM rdb$database UNION ALL
SELECT 6,6.55,CAST('2009-09-22 09:19:29.090' AS timestamp),NULL,FALSE,X'8D3C5D1D47DB47309FE7968F6228A4C0',6,NULL,NULL,'4' FROM rdb$database UNION ALL
SELECT 7,7.00,CAST('2009-09-23 09:19:29.090' AS timestamp),NULL,TRUE,X'4809411583AF46DDA906BFF26EE21EE2',7,NULL,NULL,'5' FROM rdb$database UNION ALL
SELECT 8,8.99,CAST('2009-09-24 09:19:29.090' AS timestamp),NULL,FALSE,X'C1139F1F13354CD4937E92602F732DD3',8,NULL,NULL,'6' FROM rdb$database UNION ALL
SELECT 9,9.63,CAST('2009-09-25 09:19:29.090' AS timestamp),NULL,TRUE,X'46C5C5123D4B4CF7B4E71DE080789E5D',9,NULL,NULL,'7' FROM rdb$database UNION ALL
SELECT 10,10.77,CAST('2009-09-26 09:19:29.090' AS timestamp),NULL,FALSE,X'61B2BC55147F4B4093EDA4AA83602FEE',10,NULL,NULL,'8' FROM rdb$database UNION ALL
SELECT 11,11.45,CAST('2009-09-27' AS timestamp),NULL,TRUE,X'D3021D1897F04DC098D0F0C7DF4A1230',11,NULL,NULL,'9' FROM rdb$database UNION ALL
SELECT 12,11.45,CAST('2012-11-07 19:19:29.090' AS timestamp),NULL,TRUE,X'03021D1897F04DC098D0F0C7DF4A1230',12,NULL,NULL,'0' FROM rdb$database

-- Firebird.4 Firebird4

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

-- Firebird.4 Firebird4

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

-- Firebird.4 Firebird4

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

-- Firebird.4 Firebird4

INSERT INTO "InheritanceParent"
(
	"InheritanceParentId",
	"TypeDiscriminator",
	"Name"
)
SELECT 1,NULL,CAST(NULL AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,1,NULL FROM rdb$database UNION ALL
SELECT 3,2,'InheritanceParent2' FROM rdb$database

-- Firebird.4 Firebird4

INSERT INTO "InheritanceChild"
(
	"InheritanceChildId",
	"TypeDiscriminator",
	"InheritanceParentId",
	"Name"
)
SELECT 1,NULL,1,CAST(NULL AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,1,2,NULL FROM rdb$database UNION ALL
SELECT 3,2,3,'InheritanceParent2' FROM rdb$database

-- Firebird.4 Firebird4
DECLARE @FIRSTNAME VarChar(255) -- String
SET     @FIRSTNAME = _utf8 x'4AC3BC7267656E'
DECLARE @LASTNAME VarChar(255) -- String
SET     @LASTNAME = _utf8 x'4BC3B66E6967'


				UPDATE "Person"
				SET
					"FirstName" = @FIRSTNAME,
					"LastName"  = @LASTNAME
				WHERE "PersonID" = 4

