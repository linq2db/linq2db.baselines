BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Doctor"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Patient"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Person"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "InheritanceParent"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "InheritanceParent"
(
	"InheritanceParentId" INTEGER       PRIMARY KEY NOT NULL,
	"TypeDiscriminator"   INTEGER                       NULL,
	"Name"                VARCHAR(50)                   NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "InheritanceChild"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "InheritanceChild"
(
	"InheritanceChildId"  INTEGER      PRIMARY KEY NOT NULL,
	"InheritanceParentId" INTEGER                  NOT NULL,
	"TypeDiscriminator"   INTEGER                      NULL,
	"Name"                VARCHAR(50)                  NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Person"
( 
	"PersonID"   INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY NOT NULL,
	"FirstName"  VARCHAR(50) NOT NULL,
	"LastName"   VARCHAR(50) NOT NULL,
	"MiddleName" VARCHAR(50),
	"Gender"     CHAR(1)     NOT NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Person" ("FirstName", "LastName", "Gender") VALUES ('John',   'Pupkin',    'M')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Person" ("FirstName", "LastName", "Gender") VALUES ('Tester', 'Testerson', 'M')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Person" ("FirstName", "LastName", "Gender") VALUES ('Jane',   'Doe',       'F')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Person" ("FirstName", "LastName", "MiddleName", "Gender") VALUES ('Jürgen', 'König', 'Ko', 'M')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

-- Doctor Table Extension

CREATE TABLE "Doctor"
(
	"PersonID" INTEGER     PRIMARY KEY NOT NULL,
	"Taxonomy" VARCHAR(50) NOT NULL,

	FOREIGN KEY "FK_Doctor_Person" ("PersonID") REFERENCES "Person"
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Doctor" ("PersonID", "Taxonomy") VALUES (1, 'Psychiatry')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE MasterTable

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE SlaveTable

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE MasterTable
(
	ID1 INTEGER NOT NULL,
	ID2 INTEGER NOT NULL,
	PRIMARY KEY (ID1,ID2)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE SlaveTable
(
	ID1    INTEGER NOT NULL,
	"ID 2222222222222222222222  22" INTEGER NOT NULL,
	"ID 2222222222222222"           INTEGER NOT NULL,
	FOREIGN KEY FK_SlaveTable_MasterTable ("ID 2222222222222222222222  22", ID1)
	REFERENCES MasterTable
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

-- Patient Table Extension

CREATE TABLE "Patient"
(
	"PersonID"  INTEGER      PRIMARY KEY NOT NULL,
	"Diagnosis" VARCHAR(256) NOT NULL,

	FOREIGN KEY "FK_Patient_Person" ("PersonID") REFERENCES "Person"
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Patient" ("PersonID", "Diagnosis") VALUES (2, 'Hallucination with Paranoid Bugs'' Delirium of Persecution')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Parent"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Child"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "GrandChild"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Parent"      ("ParentID" int, "Value1" int)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Child"       ("ParentID" int, "ChildID" int)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "GrandChild"  ("ParentID" int, "ChildID" int, "GrandChildID" int)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "LinqDataTypes"

BeforeExecute
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

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "TestIdentity"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "TestIdentity" (
	"ID"   INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY NOT NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE AllTypes

BeforeExecute
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

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO AllTypes (xmlDataType) VALUES (NULL)

BeforeExecute
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

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE OR REPLACE VIEW PersonView
AS
SELECT * FROM "Person"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE OR REPLACE Procedure Person_SelectByKey(in ID integer)
RESULT SETS 1
LANGUAGE SQL
BEGIN
	DECLARE C1 CURSOR WITH RETURN TO CLIENT FOR
		SELECT * FROM "Person" WHERE "PersonID" = ID;

	OPEN C1;
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "TestMerge1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "TestMerge2"

BeforeExecute
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

BeforeExecute
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

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "KeepIdentityTest"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "KeepIdentityTest" (
	"ID"    INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY NOT NULL,
	"Value" INTEGER                                                  NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE OR REPLACE Procedure AddIssue792Record()
LANGUAGE SQL
BEGIN
	INSERT INTO AllTypes(char20DataType) VALUES('issue792');
END

BeforeExecute
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
(1,1.11,'2001-01-11-01.11.21.100000',NULL,1,Cast(x'659112effe6ff94dbb6bbb16e413c883' as char(16) for bit data),1,NULL,1,NULL),
(2,2.49,'2005-05-15-05.15.25.500000',NULL,0,Cast(x'613a66bc407b8146ac38f9aaf55b706b' as char(16) for bit data),2,NULL,2,''),
(3,3.99,'2009-09-19-09.19.29.090000',NULL,1,Cast(x'c070f9d2ac3587499cd55badb1757436' as char(16) for bit data),3,NULL,NULL,'1'),
(4,4.50,'2009-09-20-09.19.29.090000',NULL,0,Cast(x'db2f934043154a4eac2cca371604fb4b' as char(16) for bit data),4,NULL,NULL,'2'),
(5,5.50,'2009-09-20-09.19.29.090000',NULL,1,Cast(x'ca3ebefe5fcbb240ad392979d312afca' as char(16) for bit data),5,NULL,NULL,'3'),
(6,6.55,'2009-09-22-09.19.29.090000',NULL,0,Cast(x'1d5d3c8ddb4730479fe7968f6228a4c0' as char(16) for bit data),6,NULL,NULL,'4'),
(7,7.00,'2009-09-23-09.19.29.090000',NULL,1,Cast(x'15410948af83dd46a906bff26ee21ee2' as char(16) for bit data),7,NULL,NULL,'5'),
(8,8.99,'2009-09-24-09.19.29.090000',NULL,0,Cast(x'1f9f13c13513d44c937e92602f732dd3' as char(16) for bit data),8,NULL,NULL,'6'),
(9,9.63,'2009-09-25-09.19.29.090000',NULL,1,Cast(x'12c5c5464b3df74cb4e71de080789e5d' as char(16) for bit data),9,NULL,NULL,'7'),
(10,10.77,'2009-09-26-09.19.29.090000',NULL,0,Cast(x'55bcb2617f14404b93eda4aa83602fee' as char(16) for bit data),10,NULL,NULL,'8'),
(11,11.45,'2009-09-27-00.00.00.000000',NULL,1,Cast(x'181d02d3f097c04d98d0f0c7df4a1230' as char(16) for bit data),11,NULL,NULL,'9'),
(12,11.45,'2012-11-07-19.19.29.090000',NULL,1,Cast(x'181d0203f097c04d98d0f0c7df4a1230' as char(16) for bit data),12,NULL,NULL,'0')

BeforeExecute
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

BeforeExecute
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

BeforeExecute
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

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "InheritanceParent"
(
	"TypeDiscriminator",
	"InheritanceParentId",
	"Name"
)
VALUES
(NULL,1,NULL),
(1,2,NULL),
(2,3,'InheritanceParent2')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "InheritanceChild"
(
	"InheritanceParentId",
	"TypeDiscriminator",
	"InheritanceChildId",
	"Name"
)
VALUES
(1,NULL,1,NULL),
(2,1,2,NULL),
(3,2,3,'InheritanceParent2')

