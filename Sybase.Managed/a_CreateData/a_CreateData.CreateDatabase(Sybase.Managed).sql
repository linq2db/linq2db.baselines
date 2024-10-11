BeforeExecute
-- Sybase.Managed Sybase

USE master

BeforeExecute
-- Sybase.Managed Sybase

DROP DATABASE TestDataCore

BeforeExecute
-- Sybase.Managed Sybase

CREATE DATABASE TestDataCore ON default = '102400K'

BeforeExecute
-- Sybase.Managed Sybase

USE TestDataCore

BeforeExecute
-- Sybase.Managed Sybase

sp_configure 'enable unicode normalization', 0

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE InheritanceParent
(
	InheritanceParentId int          NOT NULL,
	TypeDiscriminator   int              NULL,
	Name                nvarchar(50)     NULL,

	CONSTRAINT PK_InheritanceParent PRIMARY KEY CLUSTERED (InheritanceParentId)
)

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE InheritanceChild
(
	InheritanceChildId  int          NOT NULL,
	InheritanceParentId int          NOT NULL,
	TypeDiscriminator   int              NULL,
	Name                nvarchar(50)     NULL,

	CONSTRAINT PK_InheritanceChild PRIMARY KEY CLUSTERED (InheritanceChildId)
)

BeforeExecute
-- Sybase.Managed Sybase

-- Person Table

CREATE TABLE Person
(
	PersonID   int          IDENTITY,
	FirstName  nvarchar(50) NOT NULL,
	LastName   nvarchar(50) NOT NULL,
	MiddleName nvarchar(50)     NULL,
	Gender     char(1)      NOT NULL,
	CONSTRAINT PK_Person PRIMARY KEY CLUSTERED (PersonID)
)

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO Person (FirstName, LastName, Gender) VALUES ('John',   'Pupkin',    'M')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO Person (FirstName, LastName, Gender) VALUES ('Tester', 'Testerson', 'M')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO Person (FirstName, LastName, Gender) VALUES ('Jane',   'Doe',       'F')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO Person (FirstName, LastName, MiddleName, Gender) VALUES ('Jürgen', 'König', 'Ko', 'M')

BeforeExecute
-- Sybase.Managed Sybase

-- Doctor Table Extension

CREATE TABLE Doctor
(
	PersonID int          NOT NULL,
	Taxonomy nvarchar(50) NOT NULL,
	CONSTRAINT PK_Doctor        PRIMARY KEY CLUSTERED (PersonID),
	CONSTRAINT FK_Doctor_Person FOREIGN KEY (PersonID)
		REFERENCES Person(PersonID)
)

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO Doctor (PersonID, Taxonomy) VALUES (1, 'Psychiatry')

BeforeExecute
-- Sybase.Managed Sybase

-- Patient Table Extension

CREATE TABLE Patient
(
	PersonID  int           NOT NULL,
	Diagnosis nvarchar(256) NOT NULL,
	CONSTRAINT PK_Patient        PRIMARY KEY CLUSTERED (PersonID),
	CONSTRAINT FK_Patient_Person FOREIGN KEY (PersonID)
		REFERENCES Person (PersonID)
)

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO Patient (PersonID, Diagnosis) VALUES (2, 'Hallucination with Paranoid Bugs'' Delirium of Persecution')

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE Parent      (ParentID INT NULL, Value1 int NULL)

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE Child       (ParentID int NULL, ChildID INT NULL)

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE GrandChild  (ParentID INT NULL, ChildID INT NULL, GrandChildID INT NULL)

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE LinqDataTypes
(
	ID             int,
	MoneyValue     decimal(10,4) NULL,
	DateTimeValue  datetime      NULL,
	DateTimeValue2 datetime      NULL,
	BoolValue      bit           default(0),
	GuidValue      char(36)      NULL,
	BinaryValue    binary(500)   NULL,
	SmallIntValue  smallint      NULL,
	IntValue       int           NULL,
	BigIntValue    bigint        NULL,
	StringValue    nvarchar(50)  NULL
)

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE TestIdentity
(
	ID int IDENTITY CONSTRAINT PK_TestIdentity PRIMARY KEY CLUSTERED
)

BeforeExecute
-- Sybase.Managed Sybase

-- AllTypes

CREATE TABLE AllTypes
(
	ID                       int               IDENTITY,

	bigintDataType           bigint            NULL,
	uBigintDataType          unsigned  bigint  NULL,
	numericDataType          numeric(18, 1)    NULL,
	bitDataType              bit               default(0),
	smallintDataType         smallint          NULL,
	uSmallintDataType        unsigned smallint NULL,
	decimalDataType          decimal(18, 1)    NULL,
	smallmoneyDataType       smallmoney        NULL,
	intDataType              int               NULL,
	uIntDataType             unsigned int      NULL,
	tinyintDataType          tinyint           NULL,
	moneyDataType            money             NULL,
	floatDataType            float             NULL,
	realDataType             real              NULL,

	datetimeDataType         datetime          NULL,
	smalldatetimeDataType    smalldatetime     NULL,
	dateDataType             date              NULL,
	timeDataType             time              NULL,

	charDataType             char(1)           NULL,
	char20DataType           char(20)          NULL,
	varcharDataType          varchar(20)       NULL,
	textDataType             text              NULL,
	ncharDataType            nchar(20)         NULL,
	nvarcharDataType         nvarchar(20)      NULL,
	ntextDataType            unitext           NULL,

	binaryDataType           binary            NULL,
	varbinaryDataType        varbinary         NULL,
	imageDataType            image             NULL,

	timestampDataType        timestamp         NULL
)

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO AllTypes
(
	bigintDataType, numericDataType, bitDataType, smallintDataType, decimalDataType, smallmoneyDataType,
	intDataType, tinyintDataType, moneyDataType, floatDataType, realDataType,
	uBigintDataType, uSmallintDataType, uIntDataType,

	datetimeDataType, smalldatetimeDataType, dateDataType, timeDataType,

	charDataType, varcharDataType, textDataType, ncharDataType, nvarcharDataType, ntextDataType,

	binaryDataType, varbinaryDataType, imageDataType
)
SELECT
	     NULL,      NULL,       0,    NULL,    NULL,   NULL,    NULL, NULL,   NULL,  NULL, NULL,
	     NULL,      NULL,    NULL,
	     NULL,      NULL,    NULL,    NULL,
	     NULL,      NULL,    NULL,    NULL,    NULL,   NULL,
	     NULL,      NULL,    NULL
UNION ALL
SELECT
	 1000000,    9999999,       1,   25555, 2222222, 100000, 7777777,  100, 100000, 20.31, 16.2,
	 2233332,      33333, 3333333,
	Cast('2012-12-12 12:12:12' as datetime),
	           Cast('2012-12-12 12:12:12' as smalldatetime),
						  Cast('2012-12-12' as date),
	                               Cast('12:12:12.010' as time),
	      '1',     '234',   '567', '23233',  '3323',  '111',
	        1,         2, Cast(3 as varbinary)

BeforeExecute
-- Sybase.Managed Sybase

-- merge test tables
CREATE TABLE TestMerge1
(
	Id     int NOT NULL,
	Field1 int NULL,
	Field2 int NULL,
	Field3 int NULL,
	Field4 int NULL,
	Field5 int NULL,

	FieldInt64      BIGINT            NULL,
	FieldString     VARCHAR(20)       NULL,
	FieldNString    NVARCHAR(20)      NULL,
	FieldChar       CHAR(1)           NULL,
	FieldNChar      NCHAR(1)          NULL,
	FieldFloat      REAL              NULL,
	FieldDouble     FLOAT             NULL,
	FieldDateTime   DATETIME          NULL,
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
-- Sybase.Managed Sybase

CREATE TABLE TestMerge2
(
	Id     int NOT NULL,
	Field1 int NULL,
	Field2 int NULL,
	Field3 int NULL,
	Field4 int NULL,
	Field5 int NULL,

	FieldInt64      BIGINT            NULL,
	FieldString     VARCHAR(20)       NULL,
	FieldNString    NVARCHAR(20)      NULL,
	FieldChar       CHAR(1)           NULL,
	FieldNChar      NCHAR(1)          NULL,
	FieldFloat      REAL              NULL,
	FieldDouble     FLOAT             NULL,
	FieldDateTime   DATETIME          NULL,
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
-- Sybase.Managed Sybase

CREATE TABLE TestMergeIdentity
(
	Id     int IDENTITY,
	Field  int NULL,

	CONSTRAINT PK_TestMergeIdentity PRIMARY KEY CLUSTERED (Id)
)

BeforeExecute
-- Sybase.Managed Sybase

CREATE OR REPLACE PROCEDURE AddIssue792Record AS
	INSERT INTO dbo.AllTypes(char20DataType) VALUES('issue792')
RETURN

BeforeExecute
-- Sybase.Managed Sybase

CREATE Procedure Person_SelectAll
AS

SELECT * FROM Person

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE KeepIdentityTest (
	ID    INT IDENTITY,
	Value INT NULL
)

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE CollatedTable
(
	Id				INT NOT NULL,
	CaseSensitive	NVARCHAR(20) NOT NULL,
	CaseInsensitive	NVARCHAR(20) NOT NULL
)

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [LinqDataTypes]
(
	[ID],
	[MoneyValue],
	[DateTimeValue],
	[DateTimeValue2],
	[BoolValue],
	[GuidValue],
	[SmallIntValue],
	[IntValue],
	[BigIntValue],
	[StringValue]
)
SELECT 1,1.11,'2001-01-11 01:11:21.100',NULL,1,'ef129165-6ffe-4df9-bb6b-bb16e413c883',1,NULL,1,NULL UNION ALL
SELECT 2,2.49,'2005-05-15 05:15:25.500',NULL,0,'bc663a61-7b40-4681-ac38-f9aaf55b706b',2,NULL,2,'' UNION ALL
SELECT 3,3.99,'2009-09-19 09:19:29.090',NULL,1,'d2f970c0-35ac-4987-9cd5-5badb1757436',3,NULL,NULL,'1' UNION ALL
SELECT 4,4.50,'2009-09-20 09:19:29.090',NULL,0,'40932fdb-1543-4e4a-ac2c-ca371604fb4b',4,NULL,NULL,'2' UNION ALL
SELECT 5,5.50,'2009-09-20 09:19:29.090',NULL,1,'febe3eca-cb5f-40b2-ad39-2979d312afca',5,NULL,NULL,'3' UNION ALL
SELECT 6,6.55,'2009-09-22 09:19:29.090',NULL,0,'8d3c5d1d-47db-4730-9fe7-968f6228a4c0',6,NULL,NULL,'4' UNION ALL
SELECT 7,7.00,'2009-09-23 09:19:29.090',NULL,1,'48094115-83af-46dd-a906-bff26ee21ee2',7,NULL,NULL,'5' UNION ALL
SELECT 8,8.99,'2009-09-24 09:19:29.090',NULL,0,'c1139f1f-1335-4cd4-937e-92602f732dd3',8,NULL,NULL,'6' UNION ALL
SELECT 9,9.63,'2009-09-25 09:19:29.090',NULL,1,'46c5c512-3d4b-4cf7-b4e7-1de080789e5d',9,NULL,NULL,'7' UNION ALL
SELECT 10,10.77,'2009-09-26 09:19:29.090',NULL,0,'61b2bc55-147f-4b40-93ed-a4aa83602fee',10,NULL,NULL,'8' UNION ALL
SELECT 11,11.45,'2009-09-27',NULL,1,'d3021d18-97f0-4dc0-98d0-f0c7df4a1230',11,NULL,NULL,'9' UNION ALL
SELECT 12,11.45,'2012-11-07 19:19:29.090',NULL,1,'03021d18-97f0-4dc0-98d0-f0c7df4a1230',12,NULL,NULL,'0'

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
SELECT 1,1 UNION ALL
SELECT 2,NULL UNION ALL
SELECT 3,3 UNION ALL
SELECT 4,NULL UNION ALL
SELECT 5,5 UNION ALL
SELECT 6,6 UNION ALL
SELECT 7,1

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
SELECT 1,11 UNION ALL
SELECT 2,21 UNION ALL
SELECT 2,22 UNION ALL
SELECT 3,31 UNION ALL
SELECT 3,32 UNION ALL
SELECT 3,33 UNION ALL
SELECT 4,41 UNION ALL
SELECT 4,42 UNION ALL
SELECT 4,43 UNION ALL
SELECT 4,44 UNION ALL
SELECT 6,61 UNION ALL
SELECT 6,62 UNION ALL
SELECT 6,63 UNION ALL
SELECT 6,64 UNION ALL
SELECT 6,65 UNION ALL
SELECT 6,66 UNION ALL
SELECT 7,77

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
SELECT 1,11,111 UNION ALL
SELECT 2,21,211 UNION ALL
SELECT 2,21,212 UNION ALL
SELECT 2,22,221 UNION ALL
SELECT 2,22,222 UNION ALL
SELECT 3,31,311 UNION ALL
SELECT 3,31,312 UNION ALL
SELECT 3,31,313 UNION ALL
SELECT 3,32,321 UNION ALL
SELECT 3,32,322 UNION ALL
SELECT 3,32,323 UNION ALL
SELECT 3,33,331 UNION ALL
SELECT 3,33,332 UNION ALL
SELECT 3,33,333 UNION ALL
SELECT 4,41,411 UNION ALL
SELECT 4,41,412 UNION ALL
SELECT 4,41,413 UNION ALL
SELECT 4,41,414 UNION ALL
SELECT 4,42,421 UNION ALL
SELECT 4,42,422 UNION ALL
SELECT 4,42,423 UNION ALL
SELECT 4,42,424

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [InheritanceParent]
(
	[InheritanceParentId],
	[TypeDiscriminator],
	[Name]
)
SELECT 1,NULL,NULL UNION ALL
SELECT 2,1,NULL UNION ALL
SELECT 3,2,'InheritanceParent2'

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [InheritanceChild]
(
	[InheritanceChildId],
	[TypeDiscriminator],
	[InheritanceParentId],
	[Name]
)
SELECT 1,NULL,1,NULL UNION ALL
SELECT 2,1,2,NULL UNION ALL
SELECT 3,2,3,'InheritanceParent2'

