-- DuckDB

DROP SCHEMA IF EXISTS "TestSchema" CASCADE

-- DuckDB

CREATE SCHEMA "TestSchema"

-- DuckDB

DROP TABLE IF EXISTS "Doctor"

-- DuckDB

DROP TABLE IF EXISTS "Patient"

-- DuckDB

DROP TABLE IF EXISTS "Person"

-- DuckDB

DROP TABLE IF EXISTS "InheritanceParent"

-- DuckDB

CREATE TABLE "InheritanceParent"
(
	"InheritanceParentId" INTEGER       PRIMARY KEY,
	"TypeDiscriminator"   INTEGER                       NULL,
	"Name"                VARCHAR(50)                   NULL
)

-- DuckDB

DROP TABLE IF EXISTS "InheritanceChild"

-- DuckDB

CREATE TABLE "InheritanceChild"
(
	"InheritanceChildId"  INTEGER      PRIMARY KEY,
	"InheritanceParentId" INTEGER                  NOT NULL,
	"TypeDiscriminator"   INTEGER                      NULL,
	"Name"                VARCHAR(50)                  NULL
)

-- DuckDB

DROP SEQUENCE IF EXISTS "Person_PersonID_seq"

-- DuckDB

CREATE SEQUENCE "Person_PersonID_seq" START 1

-- DuckDB

CREATE TABLE "Person"
(
	"PersonID"   INTEGER PRIMARY KEY DEFAULT NEXTVAL('"Person_PersonID_seq"'),
	"FirstName"  VARCHAR(50) NOT NULL,
	"LastName"   VARCHAR(50) NOT NULL,
	"MiddleName" VARCHAR(50),
	"Gender"     CHAR(1)     NOT NULL
)

-- DuckDB

INSERT INTO "Person" ("FirstName", "LastName", "Gender") VALUES ('John',   'Pupkin',    'M')

-- DuckDB

INSERT INTO "Person" ("FirstName", "LastName", "Gender") VALUES ('Tester', 'Testerson', 'M')

-- DuckDB

INSERT INTO "Person" ("FirstName", "LastName", "Gender") VALUES ('Jane',   'Doe',       'F')

-- DuckDB

INSERT INTO "Person" ("FirstName", "LastName", "MiddleName", "Gender") VALUES ('Jürgen', 'König', 'Ko', 'M')

-- DuckDB

-- Doctor Table Extension

CREATE TABLE "Doctor"
(
	"PersonID" INTEGER     NOT NULL PRIMARY KEY,
	"Taxonomy" VARCHAR(50) NOT NULL
)

-- DuckDB

INSERT INTO "Doctor" ("PersonID", "Taxonomy") VALUES (1, 'Psychiatry')

-- DuckDB

-- Patient Table Extension

CREATE TABLE "Patient"
(
	"PersonID"  INTEGER      NOT NULL PRIMARY KEY,
	"Diagnosis" VARCHAR(256) NOT NULL
)

-- DuckDB

INSERT INTO "Patient" ("PersonID", "Diagnosis") VALUES (2, 'Hallucination with Paranoid Bugs'' Delirium of Persecution')

-- DuckDB

DROP TABLE IF EXISTS "Parent"

-- DuckDB

DROP TABLE IF EXISTS "Child"

-- DuckDB

DROP TABLE IF EXISTS "GrandChild"

-- DuckDB

CREATE TABLE "Parent"      ("ParentID" int, "Value1" int)

-- DuckDB

CREATE TABLE "Child"       ("ParentID" int, "ChildID" int)

-- DuckDB

CREATE TABLE "GrandChild"  ("ParentID" int, "ChildID" int, "GrandChildID" int)

-- DuckDB

DROP TABLE IF EXISTS "LinqDataTypes"

-- DuckDB

CREATE TABLE "LinqDataTypes"
(
	"ID"             int,
	"MoneyValue"     decimal(10,4),
	"DateTimeValue"  timestamp,
	"DateTimeValue2" timestamp,
	"BoolValue"      boolean,
	"GuidValue"      uuid,
	"BinaryValue"    blob         NULL,
	"SmallIntValue"  smallint,
	"IntValue"       int          NULL,
	"BigIntValue"    bigint       NULL,
	"StringValue"    varchar(50)  NULL
)

-- DuckDB

DROP SEQUENCE IF EXISTS SequenceTestSeq

-- DuckDB

CREATE SEQUENCE SequenceTestSeq INCREMENT BY 1 START 1

-- DuckDB

DROP TABLE IF EXISTS "SequenceTest1"

-- DuckDB

DROP TABLE IF EXISTS "SequenceTest2"

-- DuckDB

DROP TABLE IF EXISTS "SequenceTest3"

-- DuckDB

DROP SEQUENCE IF EXISTS "SequenceTest2_ID_seq"

-- DuckDB

CREATE SEQUENCE "SequenceTest2_ID_seq" INCREMENT BY 1 START 1

-- DuckDB

CREATE TABLE "SequenceTest1"
(
	"ID"    INTEGER PRIMARY KEY,
	"Value" VARCHAR(50)
)

-- DuckDB

CREATE TABLE "SequenceTest2"
(
	"ID"    INTEGER PRIMARY KEY DEFAULT NEXTVAL('"SequenceTest2_ID_seq"'),
	"Value" VARCHAR(50)
)

-- DuckDB

CREATE TABLE "SequenceTest3"
(
	"ID"    INTEGER PRIMARY KEY DEFAULT NEXTVAL('SequenceTestSeq'),
	"Value" VARCHAR(50)
)

-- DuckDB

DROP TABLE IF EXISTS "TestIdentity"

-- DuckDB

DROP SEQUENCE IF EXISTS "TestIdentity_ID_seq"

-- DuckDB

CREATE SEQUENCE "TestIdentity_ID_seq" START 1

-- DuckDB

CREATE TABLE "TestIdentity" (
	"ID" INTEGER PRIMARY KEY DEFAULT NEXTVAL('"TestIdentity_ID_seq"')
)

-- DuckDB

DROP TABLE IF EXISTS "AllTypes"

-- DuckDB

DROP SEQUENCE IF EXISTS "AllTypes_ID_seq"

-- DuckDB

CREATE SEQUENCE "AllTypes_ID_seq" START 1

-- DuckDB

CREATE TABLE "AllTypes"
(
	"ID"                  INTEGER      NOT NULL PRIMARY KEY DEFAULT NEXTVAL('"AllTypes_ID_seq"'),

	"bigintDataType"      BIGINT                   NULL,
	"numericDataType"     NUMERIC                  NULL,
	"smallintDataType"    SMALLINT                 NULL,
	"intDataType"         INTEGER                  NULL,
	"decimalDataType"     DECIMAL(6,3)             NULL,
	"moneyDataType"       DECIMAL(19,4)            NULL,
	"doubleDataType"      DOUBLE                   NULL,
	"realDataType"        FLOAT                    NULL,

	"timestampDataType"   TIMESTAMP                NULL,
	"timestampTZDataType" TIMESTAMPTZ              NULL,
	"dateDataType"        DATE                     NULL,
	"timeDataType"        TIME                     NULL,
	"intervalDataType"    INTERVAL                 NULL,
	"intervalDataType2"   INTERVAL                 NULL,

	"charDataType"        VARCHAR(1)               NULL,
	"ncharDataType"       VARCHAR(20)              NULL,
	"char20DataType"      VARCHAR(20)              NULL,
	"varcharDataType"     VARCHAR(20)              NULL,
	"textDataType"        VARCHAR                  NULL,
	"floatDataType"       FLOAT                    NULL,

	"binaryDataType"      BLOB                     NULL,
	"varBinaryDataType"   BLOB                     NULL,

	"uuidDataType"        UUID                     NULL,
	"booleanDataType"     BOOLEAN                  NULL,

	"jsonDataType"        JSON                     NULL
)

-- DuckDB

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"numericDataType",
	"smallintDataType",
	"intDataType",
	"moneyDataType",
	"doubleDataType",
	"realDataType",

	"timestampDataType",
	"timestampTZDataType",
	"dateDataType",
	"timeDataType",
	"intervalDataType",

	"charDataType",
	"varcharDataType",
	"textDataType",

	"uuidDataType",
	"booleanDataType"
)
SELECT
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
UNION ALL
SELECT
	1000000,
	9999999,
	25555,
	7777777,
	100000,
	20.31,
	16.2,

	CAST('2012-12-12 12:12:12' AS TIMESTAMP),
	CAST('2012-12-12 12:12:12-04' AS TIMESTAMPTZ),
	CAST('2012-12-12' AS DATE),
	CAST('12:12:12' AS TIME),
	CAST('1 day 3 hours 5 minutes 20 seconds' AS INTERVAL),

	'1',
	'234',
	'567',

	CAST('6F9619FF-8B86-D011-B42D-00C04FC964FF' AS UUID),
	true

-- DuckDB

DROP TABLE IF EXISTS "TestMerge1"

-- DuckDB

DROP TABLE IF EXISTS "TestMerge2"

-- DuckDB

CREATE TABLE "TestMerge1"
(
	"Id"		INTEGER	PRIMARY KEY,
	"Field1"	INTEGER	NULL,
	"Field2"	INTEGER	NULL,
	"Field3"	INTEGER	NULL,
	"Field4"	INTEGER	NULL,
	"Field5"	INTEGER	NULL,

	"FieldInt64"      BIGINT                   NULL,
	"FieldBoolean"    BOOLEAN                  NULL,
	"FieldString"     VARCHAR(20)              NULL,
	"FieldNString"    VARCHAR(20)              NULL,
	"FieldChar"       VARCHAR(1)               NULL,
	"FieldNChar"      VARCHAR(1)               NULL,
	"FieldFloat"      FLOAT                    NULL,
	"FieldDouble"     DOUBLE                   NULL,
	"FieldDateTime"   TIMESTAMP                NULL,
	"FieldDateTime2"  TIMESTAMPTZ              NULL,
	"FieldBinary"     BLOB                     NULL,
	"FieldGuid"       UUID                     NULL,
	"FieldDecimal"    DECIMAL(24, 10)          NULL,
	"FieldDate"       DATE                     NULL,
	"FieldTime"       TIME                     NULL,
	"FieldEnumString" VARCHAR(20)              NULL,
	"FieldEnumNumber" INT                      NULL
)

-- DuckDB

CREATE TABLE "TestMerge2"
(
	"Id"		INTEGER	PRIMARY KEY,
	"Field1"	INTEGER	NULL,
	"Field2"	INTEGER	NULL,
	"Field3"	INTEGER	NULL,
	"Field4"	INTEGER	NULL,
	"Field5"	INTEGER	NULL,

	"FieldInt64"      BIGINT                   NULL,
	"FieldBoolean"    BOOLEAN                  NULL,
	"FieldString"     VARCHAR(20)              NULL,
	"FieldNString"    VARCHAR(20)              NULL,
	"FieldChar"       VARCHAR(1)               NULL,
	"FieldNChar"      VARCHAR(1)               NULL,
	"FieldFloat"      FLOAT                    NULL,
	"FieldDouble"     DOUBLE                   NULL,
	"FieldDateTime"   TIMESTAMP                NULL,
	"FieldDateTime2"  TIMESTAMPTZ              NULL,
	"FieldBinary"     BLOB                     NULL,
	"FieldGuid"       UUID                     NULL,
	"FieldDecimal"    DECIMAL(24, 10)          NULL,
	"FieldDate"       DATE                     NULL,
	"FieldTime"       TIME                     NULL,
	"FieldEnumString" VARCHAR(20)              NULL,
	"FieldEnumNumber" INT                      NULL
)

-- DuckDB

DROP TABLE IF EXISTS "CollatedTable"

-- DuckDB

CREATE TABLE "CollatedTable"
(
	"Id"				INT NOT NULL,
	"CaseSensitive"		VARCHAR(20) NOT NULL,
	"CaseInsensitive"	VARCHAR(20) NOT NULL
)

-- DuckDB

DROP TABLE IF EXISTS "TestMergeIdentity"

-- DuckDB

DROP SEQUENCE IF EXISTS "TestMergeIdentity_Id_seq"

-- DuckDB

CREATE SEQUENCE "TestMergeIdentity_Id_seq" START 1

-- DuckDB

CREATE TABLE "TestMergeIdentity"
(
	"Id"     INTEGER NOT NULL PRIMARY KEY DEFAULT NEXTVAL('"TestMergeIdentity_Id_seq"'),
	"Field"  INT NULL
)

-- DuckDB

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	DateTimeValue,
	DateTimeValue2,
	BoolValue,
	GuidValue,
	SmallIntValue,
	IntValue,
	BigIntValue,
	StringValue
)
VALUES
(1,1.11,'2001-01-11 01:11:21.100000'::TIMESTAMP,NULL,True,'ef129165-6ffe-4df9-bb6b-bb16e413c883'::UUID,1,NULL,1,NULL),
(2,2.49,'2005-05-15 05:15:25.500000'::TIMESTAMP,NULL,False,'bc663a61-7b40-4681-ac38-f9aaf55b706b'::UUID,2,NULL,2,''),
(3,3.99,'2009-09-19 09:19:29.090000'::TIMESTAMP,NULL,True,'d2f970c0-35ac-4987-9cd5-5badb1757436'::UUID,3,NULL,NULL,'1'),
(4,4.50,'2009-09-20 09:19:29.090000'::TIMESTAMP,NULL,False,'40932fdb-1543-4e4a-ac2c-ca371604fb4b'::UUID,4,NULL,NULL,'2'),
(5,5.50,'2009-09-20 09:19:29.090000'::TIMESTAMP,NULL,True,'febe3eca-cb5f-40b2-ad39-2979d312afca'::UUID,5,NULL,NULL,'3'),
(6,6.55,'2009-09-22 09:19:29.090000'::TIMESTAMP,NULL,False,'8d3c5d1d-47db-4730-9fe7-968f6228a4c0'::UUID,6,NULL,NULL,'4'),
(7,7.00,'2009-09-23 09:19:29.090000'::TIMESTAMP,NULL,True,'48094115-83af-46dd-a906-bff26ee21ee2'::UUID,7,NULL,NULL,'5'),
(8,8.99,'2009-09-24 09:19:29.090000'::TIMESTAMP,NULL,False,'c1139f1f-1335-4cd4-937e-92602f732dd3'::UUID,8,NULL,NULL,'6'),
(9,9.63,'2009-09-25 09:19:29.090000'::TIMESTAMP,NULL,True,'46c5c512-3d4b-4cf7-b4e7-1de080789e5d'::UUID,9,NULL,NULL,'7'),
(10,10.77,'2009-09-26 09:19:29.090000'::TIMESTAMP,NULL,False,'61b2bc55-147f-4b40-93ed-a4aa83602fee'::UUID,10,NULL,NULL,'8'),
(11,11.45,'2009-09-27'::DATE,NULL,True,'d3021d18-97f0-4dc0-98d0-f0c7df4a1230'::UUID,11,NULL,NULL,'9'),
(12,11.45,'2012-11-07 19:19:29.090000'::TIMESTAMP,NULL,True,'03021d18-97f0-4dc0-98d0-f0c7df4a1230'::UUID,12,NULL,NULL,'0')

INSERT BULK Parent(ParentID, Value1)

INSERT BULK Child(ParentID, ChildID)

INSERT BULK GrandChild(ParentID, ChildID, GrandChildID)

INSERT BULK InheritanceParent(InheritanceParentId, TypeDiscriminator, Name)

INSERT BULK InheritanceChild(InheritanceChildId, TypeDiscriminator, InheritanceParentId, Name)

