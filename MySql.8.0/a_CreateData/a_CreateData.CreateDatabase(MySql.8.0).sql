BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP SCHEMA IF EXISTS `testdata`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE SCHEMA `testdata`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

ALTER DATABASE `testdata` CHARACTER SET utf8 COLLATE utf8_general_ci

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

USE `testdata`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SET GLOBAL local_infile=ON;

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SET @@global.sql_mode=(SELECT REPLACE(@@global.sql_mode, 'ONLY_FULL_GROUP_BY', ''))

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE InheritanceParent
(
	InheritanceParentId int          NOT NULL,
	TypeDiscriminator   int              NULL,
	Name                varchar(50)      NULL,

	 CONSTRAINT PK_InheritanceParent PRIMARY KEY CLUSTERED (InheritanceParentId)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE InheritanceChild
(
	InheritanceChildId  int          NOT NULL,
	InheritanceParentId int          NOT NULL,
	TypeDiscriminator   int              NULL,
	Name                varchar(50)      NULL,

	 CONSTRAINT PK_InheritanceChild PRIMARY KEY CLUSTERED (InheritanceChildId)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

-- Person Table

CREATE TABLE Person
(
	PersonID   int         AUTO_INCREMENT NOT NULL,
	FirstName  varchar(50) NOT NULL,
	LastName   varchar(50) NOT NULL,
	MiddleName varchar(50)     NULL,
	Gender     char(1)     NOT NULL,
	CONSTRAINT PK_Person PRIMARY KEY CLUSTERED (PersonID)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO Person (FirstName, LastName, Gender) VALUES ('John',   'Pupkin',    'M')

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO Person (FirstName, LastName, Gender) VALUES ('Tester', 'Testerson', 'M')

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO Person (FirstName, LastName, Gender) VALUES ('Jane',   'Doe',       'F')

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO Person (FirstName, LastName, MiddleName, Gender) VALUES ('Jürgen', 'König', 'Ko', 'M')

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE OR REPLACE VIEW PersonView AS SELECT * FROM Person

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

-- Doctor Table Extension

CREATE TABLE Doctor
(
	PersonID int         NOT NULL,
	Taxonomy varchar(50) NOT NULL,
	CONSTRAINT PK_Doctor        PRIMARY KEY CLUSTERED (PersonID),
	CONSTRAINT FK_Doctor_Person FOREIGN KEY (PersonID)
		REFERENCES Person(PersonID)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO Doctor (PersonID, Taxonomy) VALUES (1, 'Psychiatry')

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

-- Patient Table Extension

CREATE TABLE Patient
(
	PersonID  int          NOT NULL,
	Diagnosis varchar(256) NOT NULL,
	CONSTRAINT PK_Patient        PRIMARY KEY CLUSTERED (PersonID),
	CONSTRAINT FK_Patient_Person FOREIGN KEY (PersonID)
		REFERENCES Person (PersonID)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO Patient (PersonID, Diagnosis) VALUES (2, 'Hallucination with Paranoid Bugs'' Delirium of Persecution')

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

-- Data Types test

CREATE TABLE DataTypeTest
(
	DataTypeID      int              AUTO_INCREMENT NOT NULL,
	Binary_         binary(50)       NULL,
	Boolean_        bit              NOT NULL,
	Byte_           tinyint          NULL,
	Bytes_          varbinary(50)    NULL,
	Char_           char(1)          NULL,
	DateTime_       datetime         NULL,
	Decimal_        decimal(20,2)    NULL,
	Double_         float            NULL,
	Guid_           varbinary(50)    NULL,
	Int16_          smallint         NULL,
	Int32_          int              NULL,
	Int64_          bigint           NULL,
	Money_          decimal(20,4)    NULL,
	SByte_          tinyint          NULL,
	Single_         real             NULL,
	Stream_         varbinary(50)    NULL,
	String_         varchar(50)      NULL,
	UInt16_         smallint         NULL,
	UInt32_         int              NULL,
	UInt64_         bigint           NULL,
	Xml_            varchar(1000)    NULL,
	CONSTRAINT PK_DataType PRIMARY KEY CLUSTERED (DataTypeID)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE Parent     (ParentID int, Value1 int)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE Child      (ParentID int, ChildID int)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE INDEX IX_ChildIndex ON Child (ParentID)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE INDEX IX_ChildIndex2 ON Child (ParentID DESC)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE GrandChild (ParentID int, ChildID int, GrandChildID int)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE LinqDataTypes
(
	ID             int,
	MoneyValue     decimal(10,4),
	DateTimeValue  datetime(3),
	DateTimeValue2 datetime NULL,
	BoolValue      boolean,
	GuidValue      char(36),
	BinaryValue    varbinary(5000) NULL,
	SmallIntValue  smallint,
	IntValue       int             NULL,
	BigIntValue    bigint          NULL,
	StringValue    varchar(50)     NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE TestIdentity (
	ID int AUTO_INCREMENT NOT NULL,
	CONSTRAINT PK_TestIdentity PRIMARY KEY CLUSTERED (ID)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE `AllTypes`
(
	ID                  int AUTO_INCREMENT       NOT NULL,

	bigintDataType      bigint                       NULL,
	smallintDataType    smallint                     NULL,
	tinyintDataType     tinyint                      NULL,
	mediumintDataType   mediumint                    NULL,
	intDataType         int                          NULL,
	numericDataType     numeric                      NULL,
	decimalDataType     decimal                      NULL,
	doubleDataType      double                       NULL,
	floatDataType       float                        NULL,

	dateDataType        date                         NULL,
	datetimeDataType    datetime                     NULL,
	timestampDataType   timestamp                    NULL,
	timeDataType        time                         NULL,
	yearDataType        year                         NULL,

	charDataType        char(1)                      NULL,
	char20DataType      char(20)                     NULL,
	varcharDataType     varchar(20)                  NULL,
	textDataType        text                         NULL,

	binaryDataType      binary(3)                    NULL,
	varbinaryDataType   varbinary(5)                 NULL,
	blobDataType        blob                         NULL,

	bitDataType         bit(3)                       NULL,
	enumDataType        enum('Green', 'Red', 'Blue') NULL,
	setDataType         set('one', 'two')            NULL,
	intUnsignedDataType int unsigned                 NULL,
	boolDataType        bool                         NULL,

	CONSTRAINT PK_AllTypes PRIMARY KEY CLUSTERED (ID)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `AllTypes`
(
	bigintDataType,
	smallintDataType,
	tinyintDataType,
	mediumintDataType,
	intDataType,
	numericDataType,
	decimalDataType,
	doubleDataType,
	floatDataType,

	dateDataType,
	datetimeDataType,
	timestampDataType,
	timeDataType,
	yearDataType,

	charDataType,
	varcharDataType,
	textDataType,

	binaryDataType,
	varbinaryDataType,
	blobDataType,

	bitDataType,
	enumDataType,
	setDataType,
	boolDataType
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
	25555,
	111,
	5555,
	7777777,
	9999999,
	8888888,
	20.31,
	16.0,

	'2012-12-12',
	'2012-12-12 12:12:12',
	'2012-12-12 12:12:12',
	'12:12:12',
	1998,

	'1',
	'234',
	'567',

	'abc',
	'cde',
	'def',

	B'101',
	'Green',
	'one',
	1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE `AllTypesNoYear`
(
	ID                  int AUTO_INCREMENT       NOT NULL,

	bigintDataType      bigint                       NULL,
	smallintDataType    smallint                     NULL,
	tinyintDataType     tinyint                      NULL,
	mediumintDataType   mediumint                    NULL,
	intDataType         int                          NULL,
	numericDataType     numeric                      NULL,
	decimalDataType     decimal                      NULL,
	doubleDataType      double                       NULL,
	floatDataType       float                        NULL,

	dateDataType        date                         NULL,
	datetimeDataType    datetime                     NULL,
	timestampDataType   timestamp                    NULL,
	timeDataType        time                         NULL,

	charDataType        char(1)                      NULL,
	char20DataType      char(20)                     NULL,
	varcharDataType     varchar(20)                  NULL,
	textDataType        text                         NULL,

	binaryDataType      binary(3)                    NULL,
	varbinaryDataType   varbinary(5)                 NULL,
	blobDataType        blob                         NULL,

	bitDataType         bit(3)                       NULL,
	enumDataType        enum('Green', 'Red', 'Blue') NULL,
	setDataType         set('one', 'two')            NULL,
	intUnsignedDataType int unsigned                 NULL,
	boolDataType        bool                         NULL,

	CONSTRAINT PK_AllTypes PRIMARY KEY CLUSTERED (ID)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP SCHEMA IF EXISTS test_schema

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE SCHEMA test_schema

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE test_schema.TestSameName
(
	ID int NOT NULL PRIMARY KEY
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE TestSameName
(
	ID int NOT NULL PRIMARY KEY
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE OR REPLACE
VIEW PersonView
AS
	SELECT `Person`.`PersonID` AS `ID`
	FROM `Person`
	WHERE (`Person`.`Gender` = 'M')

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

-- merge test tables
CREATE TABLE TestMerge1
(
	Id       int          NOT NULL,
	Field1   int              NULL,
	Field2   int              NULL,
	Field3   int              NULL,
	Field4   int              NULL,
	Field5   int              NULL,

	FieldInt64      BIGINT            NULL,
	FieldBoolean    BIT               NULL,
	FieldString     VARCHAR(20)       NULL,
	FieldNString    NVARCHAR(20)      NULL,
	FieldChar       CHAR(1)           NULL,
	FieldNChar      NCHAR(1)          NULL,
	FieldFloat      FLOAT             NULL,
	FieldDouble     DOUBLE            NULL,
	FieldDateTime   DATETIME(6)       NULL,
	FieldBinary     VARBINARY(20)     NULL,
	FieldGuid       CHAR(36)          NULL,
	FieldDecimal    DECIMAL(24, 10)   NULL,
	FieldDate       DATE              NULL,





	FieldTime       TIME              NULL,

	FieldEnumString VARCHAR(20)       NULL,
	FieldEnumNumber INT               NULL,

	CONSTRAINT PK_TestMerge1 PRIMARY KEY CLUSTERED (Id)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE TestMerge2
(
	Id       int          NOT NULL,
	Field1   int              NULL,
	Field2   int              NULL,
	Field3   int              NULL,
	Field4   int              NULL,
	Field5   int              NULL,

	FieldInt64      BIGINT            NULL,
	FieldBoolean    BIT               NULL,
	FieldString     VARCHAR(20)       NULL,
	FieldNString    NVARCHAR(20)      NULL,
	FieldChar       CHAR(1)           NULL,
	FieldNChar      NCHAR(1)          NULL,
	FieldFloat      FLOAT             NULL,
	FieldDouble     DOUBLE            NULL,
	FieldDateTime   DATETIME(6)       NULL,
	FieldBinary     VARBINARY(20)     NULL,
	FieldGuid       CHAR(36)          NULL,
	FieldDecimal    DECIMAL(24, 10)   NULL,
	FieldDate       DATE              NULL,





	FieldTime       TIME              NULL,

	FieldEnumString VARCHAR(20)       NULL,
	FieldEnumNumber INT               NULL,

	CONSTRAINT PK_TestMerge2 PRIMARY KEY CLUSTERED (Id)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE PROCEDURE TestProcedure(IN param3 INT, INOUT param2 INT, OUT param1 INT)
BEGIN
	SELECT param2 + param2 INTO param2;
	SELECT param3 + param2 INTO param1;
	SELECT * FROM Person;
END

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SET GLOBAL log_bin_trust_function_creators = 1;

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE FUNCTION TestFunction(param INT)
RETURNS VARCHAR(10)
BEGIN
	RETURN 'done';
END

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE PROCEDURE AddIssue792Record()
BEGIN
	INSERT INTO `AllTypes`(char20DataType) VALUES('issue792');
END

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE PROCEDURE `TestOutputParametersWithoutTableProcedure`(
	IN `aInParam` VARCHAR(256),
	OUT `aOutParam` TINYINT(1)
)
BEGIN
	SELECT 123 INTO aOutParam;
END

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE FullTextIndexTest (
	id int UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
	TestField1 TEXT(100),
	TestField2 TEXT(200),
	FULLTEXT idx_all (TestField1, TestField2),
	FULLTEXT idx_field1 (TestField1),
	FULLTEXT idx_field2 (TestField2)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO FullTextIndexTest(TestField1, TestField2) VALUES('this is text1', 'this is text2');
INSERT INTO FullTextIndexTest(TestField1, TestField2) VALUES('looking for something?', 'found it!');
INSERT INTO FullTextIndexTest(TestField1, TestField2) VALUES('record not found', 'empty');

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE Issue1993 (
	id			INTEGER UNSIGNED	NOT NULL   AUTO_INCREMENT,
	description	VARCHAR(100)		NULL,
PRIMARY KEY(id));

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE PROCEDURE `Issue2313Parameters`(
	IN `VarCharDefault` VARCHAR(255),
	IN `VarChar1` VARCHAR(1),
	IN `Char255` CHAR(255),
	IN `Char1` CHAR(1),
	IN `VarBinary255` VARBINARY(255),
	IN `Binary255` BINARY(255),
	IN `TinyBlob` TINYBLOB,
	IN `Blob` BLOB,
	IN `MediumBlob` MEDIUMBLOB,
	IN `LongBlob` LONGBLOB,
	IN `TinyText` TINYTEXT,
	IN `Text` TEXT,
	IN `MediumText` MEDIUMTEXT,
	IN `LongText` LONGTEXT,
	IN `Date` DATE,
	IN `DateTime` DATETIME,
	IN `TimeStamp` TIMESTAMP,
	IN `Time` TIME,
	IN `Json` JSON,
	IN `TinyInt` TINYINT,
	IN `TinyIntUnsigned` TINYINT UNSIGNED,
	IN `SmallInt` SMALLINT,
	IN `SmallIntUnsigned` SMALLINT UNSIGNED,
	IN `MediumInt` MEDIUMINT,
	IN `MediumIntUnsigned` MEDIUMINT UNSIGNED,
	IN `Int` INT,
	IN `IntUnsigned` INT UNSIGNED,
	IN `BigInt` BIGINT,
	IN `BigIntUnsigned` BIGINT UNSIGNED,
	IN `Decimal` DECIMAL,
	IN `Float` FLOAT,
	IN `Double` DOUBLE,
	IN `Boolean` BOOLEAN,
	IN `Bit1` BIT,
	IN `Bit8` BIT(8),
	IN `Bit10` BIT(10),
	IN `Bit16` BIT(16),
	IN `Bit32` BIT(32),
	IN `Bit64` BIT(64),
	IN `Enum` ENUM('one', 'two'),
	IN `Set` ENUM('one', 'two'),
	IN `Year` YEAR,
	IN `Geometry` GEOMETRY,
	IN `Point` POINT,
	IN `LineString` LINESTRING,
	IN `Polygon` POLYGON,
	IN `MultiPoint` MULTIPOINT,
	IN `MultiLineString` MULTILINESTRING,
	IN `MultiPolygon` MULTIPOLYGON,
	IN `GeometryCollection` GEOMETRYCOLLECTION
)
BEGIN
	SELECT
	`VarCharDefault`,
	`VarChar1`,
	`Char255`,
	`Char1`,
	`VarBinary255`,
	`Binary255`,
	`TinyBlob`,
	`Blob`,
	`MediumBlob`,
	`LongBlob`,
	`TinyText`,
	`Text`,
	`MediumText`,
	`LongText`,
	`Date`,
	`DateTime`,
	`TimeStamp`,
	`Time`,
	`Json`,
	`TinyInt`,
	`TinyIntUnsigned`,
	`SmallInt`,
	`SmallIntUnsigned`,
	`MediumInt`,
	`MediumIntUnsigned`,
	`Int`,
	`IntUnsigned`,
	`BigInt`,
	`BigIntUnsigned`,
	`Decimal`,
	`Float`,
	`Double`,
	`Boolean`,
	`Bit1`,
	`Bit8`,
	`Bit10`,
	`Bit16`,
	`Bit32`,
	`Bit64`,
	`Enum`,
	`Set`,
	`Year`,
	`Geometry`,
	`Point`,
	`LineString`,
	`Polygon`,
	`MultiPoint`,
	`MultiLineString`,
	`MultiPolygon`,
	`GeometryCollection`
	FROM Person;
END

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE PROCEDURE `Issue2313Results`(
	IN `VarCharDefault` VARCHAR(4000),
	IN `VarChar1` VARCHAR(1),
	IN `Char255` CHAR(255),
	IN `Char1` CHAR(1),
	IN `VarBinary255` VARBINARY(255),
	IN `Binary255` BINARY(255),
	IN `TinyBlob` TINYBLOB,
	IN `Blob` BLOB,
	IN `MediumBlob` MEDIUMBLOB,
	IN `LongBlob` LONGBLOB,
	IN `TinyText` TINYTEXT,
	IN `Text` TEXT,
	IN `MediumText` MEDIUMTEXT,
	IN `LongText` LONGTEXT,
	IN `Date` DATE,
	IN `DateTime` DATETIME,
	IN `TimeStamp` TIMESTAMP,
	IN `Time` TIME,
	IN `TinyInt` TINYINT,
	IN `TinyIntUnsigned` TINYINT UNSIGNED,
	IN `SmallInt` SMALLINT,
	IN `SmallIntUnsigned` SMALLINT UNSIGNED,
	IN `MediumInt` MEDIUMINT,
	IN `MediumIntUnsigned` MEDIUMINT UNSIGNED,
	IN `Int` INT,
	IN `IntUnsigned` INT UNSIGNED,
	IN `BigInt` BIGINT,
	IN `BigIntUnsigned` BIGINT UNSIGNED,
	IN `Decimal` DECIMAL,
	IN `Float` FLOAT,
	IN `Double` DOUBLE,
	IN `Boolean` BOOLEAN,
	IN `Bit1` BIT,
	IN `Bit8` BIT(8),
	IN `Bit10` BIT(10),
	IN `Bit16` BIT(16),
	IN `Bit32` BIT(32),
	IN `Bit64` BIT(64),
	IN `Enum` ENUM('one', 'two'),
	IN `Set` ENUM('one', 'two'),





	IN `Year` YEAR
)
BEGIN
	SELECT
	`VarCharDefault`,
	`VarChar1`,
	`Char255`,
	`Char1`,
	`VarBinary255`,
	`Binary255`,
	`TinyBlob`,
	`Blob`,
	`MediumBlob`,
	`LongBlob`,
	`TinyText`,
	`Text`,
	`MediumText`,
	`LongText`,
	`Date`,
	`DateTime`,
	`TimeStamp`,
	`Time`,
	`TinyInt`,
	`TinyIntUnsigned`,
	`SmallInt`,
	`SmallIntUnsigned`,
	`MediumInt`,
	`MediumIntUnsigned`,
	`Int`,
	`IntUnsigned`,
	`BigInt`,
	`BigIntUnsigned`,
	`Decimal`,
	`Float`,
	`Double`,
	`Boolean`,
	`Bit1`,
	`Bit8`,
	`Bit10`,
	`Bit16`,
	`Bit32`,
	`Bit64`,
	`Enum`,
	`Set`,
	`Year`





	FROM Person;
END

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE `CollatedTable`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE `CollatedTable`
(
	`Id`				INT NOT NULL,
	`CaseSensitive`		VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
	`CaseInsensitive`	VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE KeepIdentityTest (
	ID    INT AUTO_INCREMENT NOT NULL,
	Value INT NULL,
	CONSTRAINT PK_KeepIdentityTest PRIMARY KEY CLUSTERED (ID)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`MoneyValue`,
	`DateTimeValue`,
	`DateTimeValue2`,
	`BoolValue`,
	`GuidValue`,
	`SmallIntValue`,
	`IntValue`,
	`BigIntValue`,
	`StringValue`
)
VALUES
(1,1.11,'2001-01-11 01:11:21.100',NULL,1,'ef129165-6ffe-4df9-bb6b-bb16e413c883',1,NULL,1,NULL),
(2,2.49,'2005-05-15 05:15:25.500',NULL,0,'bc663a61-7b40-4681-ac38-f9aaf55b706b',2,NULL,2,''),
(3,3.99,'2009-09-19 09:19:29.090',NULL,1,'d2f970c0-35ac-4987-9cd5-5badb1757436',3,NULL,NULL,'1'),
(4,4.50,'2009-09-20 09:19:29.090',NULL,0,'40932fdb-1543-4e4a-ac2c-ca371604fb4b',4,NULL,NULL,'2'),
(5,5.50,'2009-09-20 09:19:29.090',NULL,1,'febe3eca-cb5f-40b2-ad39-2979d312afca',5,NULL,NULL,'3'),
(6,6.55,'2009-09-22 09:19:29.090',NULL,0,'8d3c5d1d-47db-4730-9fe7-968f6228a4c0',6,NULL,NULL,'4'),
(7,7.00,'2009-09-23 09:19:29.090',NULL,1,'48094115-83af-46dd-a906-bff26ee21ee2',7,NULL,NULL,'5'),
(8,8.99,'2009-09-24 09:19:29.090',NULL,0,'c1139f1f-1335-4cd4-937e-92602f732dd3',8,NULL,NULL,'6'),
(9,9.63,'2009-09-25 09:19:29.090',NULL,1,'46c5c512-3d4b-4cf7-b4e7-1de080789e5d',9,NULL,NULL,'7'),
(10,10.77,'2009-09-26 09:19:29.090',NULL,0,'61b2bc55-147f-4b40-93ed-a4aa83602fee',10,NULL,NULL,'8'),
(11,11.45,'2009-09-27',NULL,1,'d3021d18-97f0-4dc0-98d0-f0c7df4a1230',11,NULL,NULL,'9'),
(12,11.45,'2012-11-07 19:19:29.090',NULL,1,'03021d18-97f0-4dc0-98d0-f0c7df4a1230',12,NULL,NULL,'0')

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `Child`
(
	`ParentID`,
	`ChildID`
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `GrandChild`
(
	`ParentID`,
	`ChildID`,
	`GrandChildID`
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `InheritanceParent`
(
	`InheritanceParentId`,
	`TypeDiscriminator`,
	`Name`
)
VALUES
(1,NULL,NULL),
(2,1,NULL),
(3,2,'InheritanceParent2')

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `InheritanceChild`
(
	`InheritanceChildId`,
	`TypeDiscriminator`,
	`InheritanceParentId`,
	`Name`
)
VALUES
(1,NULL,1,NULL),
(2,1,2,NULL),
(3,2,3,'InheritanceParent2')

