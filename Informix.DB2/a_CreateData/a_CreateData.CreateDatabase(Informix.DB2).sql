-- Informix.DB2 Informix

DROP TABLE Doctor

-- Informix.DB2 Informix

DROP TABLE Patient

-- Informix.DB2 Informix

DROP TABLE Person

-- Informix.DB2 Informix

DROP TABLE InheritanceParent

-- Informix.DB2 Informix

CREATE TABLE InheritanceParent
(
	InheritanceParentId int          NOT NULL,
	TypeDiscriminator   int              NULL,
	Name                nvarchar(50)     NULL,

	PRIMARY KEY(InheritanceParentId)
)

-- Informix.DB2 Informix

DROP TABLE InheritanceChild

-- Informix.DB2 Informix

CREATE TABLE InheritanceChild
(
	InheritanceChildId  int          NOT NULL,
	InheritanceParentId int          NOT NULL,
	TypeDiscriminator   int              NULL,
	Name                nvarchar(50)     NULL,

	PRIMARY KEY(InheritanceChildId)
)

-- Informix.DB2 Informix

CREATE TABLE Person
(
	PersonID   SERIAL       NOT NULL,
	FirstName  NVARCHAR(50) NOT NULL,
	LastName   NVARCHAR(50) NOT NULL,
	MiddleName NVARCHAR(50),
	Gender     CHAR(1)      NOT NULL,

	PRIMARY KEY(PersonID)
)

-- Informix.DB2 Informix

INSERT INTO Person (FirstName, LastName, Gender) VALUES ('John',   'Pupkin',    'M')

-- Informix.DB2 Informix

INSERT INTO Person (FirstName, LastName, Gender) VALUES ('Tester', 'Testerson', 'M')

-- Informix.DB2 Informix

INSERT INTO Person (FirstName, LastName, Gender) VALUES ('Jane',   'Doe',       'F')

-- Informix.DB2 Informix

INSERT INTO Person (FirstName, LastName, MiddleName, Gender) VALUES ('Jürgen', 'König', 'Ko', 'M')

-- Informix.DB2 Informix

-- Doctor Table Extension

CREATE TABLE Doctor
(
	PersonID int          NOT NULL,
	Taxonomy nvarchar(50) NOT NULL,

	PRIMARY KEY (PersonID),
	FOREIGN KEY (PersonID) REFERENCES Person (PersonID)
)

-- Informix.DB2 Informix

INSERT INTO Doctor (PersonID, Taxonomy) VALUES (1, 'Psychiatry')

-- Informix.DB2 Informix

-- Patient Table Extension

CREATE TABLE Patient
(
	PersonID  int           NOT NULL,
	Diagnosis nvarchar(100) NOT NULL,

	PRIMARY KEY (PersonID),
	FOREIGN KEY (PersonID) REFERENCES Person (PersonID)
)

-- Informix.DB2 Informix

INSERT INTO Patient (PersonID, Diagnosis) VALUES (2, 'Hallucination with Paranoid Bugs'' Delirium of Persecution')

-- Informix.DB2 Informix

DROP TABLE Parent

-- Informix.DB2 Informix

DROP TABLE Child

-- Informix.DB2 Informix

DROP TABLE GrandChild

-- Informix.DB2 Informix

CREATE TABLE Parent      (ParentID int, Value1 int)

-- Informix.DB2 Informix

CREATE TABLE Child       (ParentID int, ChildID int)

-- Informix.DB2 Informix

CREATE TABLE GrandChild  (ParentID int, ChildID int, GrandChildID int)

-- Informix.DB2 Informix

DROP TABLE LinqDataTypes

-- Informix.DB2 Informix

CREATE TABLE LinqDataTypes
(
	ID             int,
	MoneyValue     decimal(10,4),
	DateTimeValue  datetime year to fraction(3),
	DateTimeValue2 datetime year to fraction(3),
	BoolValue      boolean,
	GuidValue      char(36),
	BinaryValue    byte,
	SmallIntValue  smallint,
	IntValue       int,
	BigIntValue    bigint,
	StringValue    NVARCHAR(50)
)

-- Informix.DB2 Informix

DROP TABLE TestIdentity

-- Informix.DB2 Informix

CREATE TABLE TestIdentity (
	ID SERIAL NOT NULL,
	PRIMARY KEY(ID)
)

-- Informix.DB2 Informix

DROP TABLE AllTypes

-- Informix.DB2 Informix

CREATE TABLE AllTypes
(
	ID   SERIAL                          NOT NULL,

	bigintDataType   bigint                  NULL,
	int8DataType     Int8                    NULL,
	intDataType      int                     NULL,
	smallintDataType smallint                NULL,
	decimalDataType  decimal                 NULL,
	moneyDataType    money                   NULL,
	realDataType     real                    NULL,
	floatDataType    float                   NULL,

	boolDataType     boolean                 NULL,

	charDataType     char(1)                 NULL,
	char20DataType   char(20)                NULL,
	varcharDataType  varchar(10)             NULL,
	ncharDataType    nchar(10)               NULL,
	nvarcharDataType nvarchar(10)            NULL,
	lvarcharDataType lvarchar(10)            NULL,
	textDataType     text                    NULL,

	dateDataType     date                    NULL,
	datetimeDataType datetime year to second NULL,
	intervalDataType interval hour to second NULL,

	byteDataType     byte                    NULL,

	PRIMARY KEY(ID)
)

-- Informix.DB2 Informix

INSERT INTO AllTypes (bigintDataType) VALUES (NULL)

-- Informix.DB2 Informix

INSERT INTO AllTypes
(
	bigintDataType,
	int8DataType,
	intDataType,
	smallintDataType,
	decimalDataType,
	moneyDataType,
	realDataType,
	floatDataType,

	boolDataType,

	charDataType,
	varcharDataType,
	ncharDataType,
	nvarcharDataType,
	lvarcharDataType,

	dateDataType,
	datetimeDataType,
	intervalDataType
)
VALUES
(
	1000000,
	1000001,
	7777777,
	100,
	9999999,
	8888888,
	20.31,
	16.2,

	't',

	'1',
	'234',
	'55645',
	'6687',
	'AAAAA',

	datetime(2012-12-12) year to day,
	datetime(2012-12-12 12:12:12) year to second,
	interval(12:12:12) hour to second
)

-- Informix.DB2 Informix

DROP VIEW PersonView

-- Informix.DB2 Informix

CREATE VIEW PersonView
AS
SELECT * FROM Person

-- Informix.DB2 Informix

DROP TABLE TestUnique

-- Informix.DB2 Informix

CREATE TABLE TestUnique (
	ID1 INT NOT NULL,
	ID2 INT NOT NULL,
	ID3 INT NOT NULL,
	ID4 INT NOT NULL,
	PRIMARY KEY(ID1,ID2),
	UNIQUE(ID3,ID4)
)

-- Informix.DB2 Informix

DROP TABLE TestFKUnique

-- Informix.DB2 Informix

CREATE TABLE TestFKUnique (
	ID1 INT NOT NULL,
	ID2 INT NOT NULL,
	ID3 INT NOT NULL,
	ID4 INT NOT NULL,
	FOREIGN KEY (ID1,ID2) REFERENCES TestUnique (ID1,ID2),
	FOREIGN KEY (ID3,ID4) REFERENCES TestUnique (ID3,ID4)
)

-- Informix.DB2 Informix

DROP TABLE TestMerge1

-- Informix.DB2 Informix

DROP TABLE TestMerge2

-- Informix.DB2 Informix

CREATE TABLE TestMerge1
(
	Id       int          NOT NULL,
	Field1   int              NULL,
	Field2   int              NULL,
	Field3   int              NULL,
	Field4   int              NULL,
	Field5   int              NULL,

	FieldInt64      BIGINT                       NULL,
	FieldBoolean    BOOLEAN                      NULL,
	FieldString     VARCHAR(20)                  NULL,
	FieldChar       CHAR(1)                      NULL,
	FieldFloat      REAL                         NULL,
	FieldDouble     FLOAT                        NULL,
	FieldDateTime   DATETIME YEAR TO fraction(3) NULL,
	FieldBinary     BYTE                         NULL,
	FieldDecimal    DECIMAL(24, 10)              NULL,
	FieldDate       DATE                         NULL,
	FieldTime       INTERVAL HOUR TO fraction(5) NULL,
	FieldEnumString VARCHAR(20)                  NULL,
	FieldEnumNumber INT                          NULL,

	PRIMARY KEY(Id)
)

-- Informix.DB2 Informix

CREATE TABLE TestMerge2
(
	Id       int          NOT NULL,
	Field1   int              NULL,
	Field2   int              NULL,
	Field3   int              NULL,
	Field4   int              NULL,
	Field5   int              NULL,

	FieldInt64      BIGINT                       NULL,
	FieldBoolean    BOOLEAN                      NULL,
	FieldString     VARCHAR(20)                  NULL,
	FieldChar       CHAR(1)                      NULL,
	FieldFloat      REAL                         NULL,
	FieldDouble     FLOAT                        NULL,
	FieldDateTime   DATETIME YEAR TO fraction(3) NULL,
	FieldBinary     BYTE                         NULL,
	FieldDecimal    DECIMAL(24, 10)              NULL,
	FieldDate       DATE                         NULL,
	FieldTime       INTERVAL HOUR TO fraction(5) NULL,
	FieldEnumString VARCHAR(20)                  NULL,
	FieldEnumNumber INT                          NULL,

	PRIMARY KEY(Id)
)

-- Informix.DB2 Informix

DROP PROCEDURE IF EXISTS AddIssue792Record

-- Informix.DB2 Informix

CREATE PROCEDURE AddIssue792Record()
	INSERT INTO AllTypes(char20DataType) VALUES('issue792');
END PROCEDURE

-- Informix.DB2 Informix

DROP TABLE CollatedTable

-- Informix.DB2 Informix

CREATE TABLE CollatedTable
(
	Id				INT NOT NULL,
	CaseSensitive	VARCHAR(20) NOT NULL,
	CaseInsensitive	NVARCHAR(20) NOT NULL
)

INSERT BULK LinqDataTypes

INSERT BULK Parent

INSERT BULK Child

INSERT BULK GrandChild

INSERT BULK InheritanceParent

INSERT BULK InheritanceChild

-- Informix.DB2 Informix
DECLARE @blob VarBinary(2) -- Binary
SET     @blob = {1,2}
DECLARE @text VarChar(255) -- String
SET     @text = 'BBBBB'


				UPDATE AllTypes
				SET
					byteDataType = ?,
					textDataType = ?
				WHERE ID = 2

