BeforeExecute
-- SqlCe

DROP TABLE Issue695

BeforeExecute
-- SqlCe

DROP TABLE Issue695Parent

BeforeExecute
-- SqlCe

DROP TABLE Patient

BeforeExecute
-- SqlCe

DROP TABLE Doctor

BeforeExecute
-- SqlCe

DROP TABLE Person

BeforeExecute
-- SqlCe

DROP TABLE InheritanceParent

BeforeExecute
-- SqlCe

CREATE TABLE InheritanceParent
(
	InheritanceParentId int          NOT NULL CONSTRAINT PK_InheritanceParent PRIMARY KEY,
	TypeDiscriminator   int              NULL,
	Name                nvarchar(50)     NULL
)

BeforeExecute
-- SqlCe

DROP TABLE InheritanceChild

BeforeExecute
-- SqlCe

CREATE TABLE InheritanceChild
(
	InheritanceChildId  int          NOT NULL CONSTRAINT PK_InheritanceChild PRIMARY KEY,
	InheritanceParentId int          NOT NULL,
	TypeDiscriminator   int              NULL,
	Name                nvarchar(50)     NULL
)

BeforeExecute
-- SqlCe

-- Person Table

CREATE TABLE Person
(
	PersonID   int          NOT NULL IDENTITY(1,1) CONSTRAINT PK_Person PRIMARY KEY,
	FirstName  nvarchar(50) NOT NULL,
	LastName   nvarchar(50) NOT NULL,
	MiddleName nvarchar(50)     NULL,
	Gender     nchar(1)     NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO Person (FirstName, LastName, Gender) VALUES ('John',   'Pupkin',    'M')

BeforeExecute
-- SqlCe

INSERT INTO Person (FirstName, LastName, Gender) VALUES ('Tester', 'Testerson', 'M')

BeforeExecute
-- SqlCe

INSERT INTO Person (FirstName, LastName, Gender) VALUES ('Jane',   'Doe',       'F')

BeforeExecute
-- SqlCe

INSERT INTO Person (FirstName, LastName, MiddleName, Gender) VALUES ('Jürgen', 'König', 'Ko', 'M')

BeforeExecute
-- SqlCe

-- Doctor Table Extension

CREATE TABLE Doctor
(
	PersonID int          NOT NULL
		CONSTRAINT PK_Doctor        PRIMARY KEY
		CONSTRAINT FK_Doctor_Person --FOREIGN KEY
			REFERENCES Person ([PersonID])
			ON UPDATE CASCADE
			ON DELETE CASCADE,
	Taxonomy nvarchar(50) NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO Doctor (PersonID, Taxonomy) VALUES (1, 'Psychiatry')

BeforeExecute
-- SqlCe

-- Patient Table Extension

CREATE TABLE Patient
(
	PersonID  int           NOT NULL
		CONSTRAINT PK_Patient        PRIMARY KEY
		CONSTRAINT FK_Patient_Person --FOREIGN KEY
			REFERENCES Person ([PersonID])
			ON UPDATE CASCADE
			ON DELETE CASCADE,
	Diagnosis nvarchar(256) NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO Patient (PersonID, Diagnosis) VALUES (2, 'Hallucination with Paranoid Bugs'' Delirium of Persecution')

BeforeExecute
-- SqlCe

DROP TABLE Parent

BeforeExecute
-- SqlCe

DROP TABLE Child

BeforeExecute
-- SqlCe

DROP TABLE GrandChild

BeforeExecute
-- SqlCe

CREATE TABLE Parent      (ParentID int, Value1 int)

BeforeExecute
-- SqlCe

CREATE TABLE Child       (ParentID int, ChildID int)

BeforeExecute
-- SqlCe

CREATE TABLE GrandChild  (ParentID int, ChildID int, GrandChildID int)

BeforeExecute
-- SqlCe

DROP TABLE LinqDataTypes

BeforeExecute
-- SqlCe

CREATE TABLE LinqDataTypes
(
	ID             int,
	MoneyValue     decimal(10,4),
	DateTimeValue  datetime,
	DateTimeValue2 datetime,
	BoolValue      bit,
	GuidValue      uniqueidentifier,
	BinaryValue    varbinary(5000) NULL,
	SmallIntValue  smallint,
	IntValue       int             NULL,
	BigIntValue    bigint          NULL,
	StringValue    nvarchar(50)    NULL
)

BeforeExecute
-- SqlCe

DROP TABLE TestIdentity

BeforeExecute
-- SqlCe

CREATE TABLE TestIdentity (
	ID int NOT NULL IDENTITY(1,1) CONSTRAINT PK_TestIdentity PRIMARY KEY
)

BeforeExecute
-- SqlCe

DROP TABLE AllTypes

BeforeExecute
-- SqlCe

CREATE TABLE AllTypes
(
	ID                       int          NOT NULL IDENTITY(1,1) CONSTRAINT PK_AllTypes PRIMARY KEY,

	bigintDataType           bigint           NULL,
	numericDataType          numeric          NULL,
	bitDataType              bit              NULL,
	smallintDataType         smallint         NULL,
	decimalDataType          decimal          NULL,
	intDataType              int              NULL,
	tinyintDataType          tinyint          NULL,
	moneyDataType            money            NULL,
	floatDataType            float            NULL,
	realDataType             real             NULL,

	datetimeDataType         datetime         NULL,

	ncharDataType            nchar(20)        NULL,
	nvarcharDataType         nvarchar(20)     NULL,
	ntextDataType            ntext            NULL,

	binaryDataType           binary           NULL,
	varbinaryDataType        varbinary        NULL,
	imageDataType            image            NULL,

	timestampDataType        timestamp        NULL,
	uniqueidentifierDataType uniqueidentifier NULL
)

BeforeExecute
-- SqlCe

INSERT INTO AllTypes
(
	bigintDataType, numericDataType, bitDataType, smallintDataType, decimalDataType,
	intDataType, tinyintDataType, moneyDataType, floatDataType, realDataType,

	datetimeDataType,

	ncharDataType, nvarcharDataType, ntextDataType,

	binaryDataType, varbinaryDataType, imageDataType,

	uniqueidentifierDataType
)
SELECT
	     NULL,      NULL,  NULL,    NULL,    NULL,   NULL, NULL,   NULL,  NULL,  NULL,
	     NULL,
	     NULL,      NULL,  NULL,
	     NULL,      NULL,  NULL,
	     NULL
UNION ALL
SELECT
	  1000000,   9999999,     1,   25555, 2222222, 7777777,  100, 100000, 20.31, 16.2,
	Cast('2012-12-12 12:12:12' as datetime),
	  '23233',    '3323', '111',
	        1,         2, Cast(3 as varbinary),
	Cast('6F9619FF-8B86-D011-B42D-00C04FC964FF' as uniqueidentifier)

BeforeExecute
-- SqlCe

CREATE TABLE Issue695Parent
(
	ID          int NOT NULL
			CONSTRAINT PK_Issue695 PRIMARY KEY
)

BeforeExecute
-- SqlCe

CREATE TABLE Issue695
(
	ID          int NOT NULL
			CONSTRAINT PK_Issue695 PRIMARY KEY
			CONSTRAINT FK_Issue695_Parent --FOREIGN KEY
			REFERENCES Issue695Parent ([ID])
			ON UPDATE CASCADE
			ON DELETE CASCADE,

	UniqueValue int NOT NULL
)

BeforeExecute
-- SqlCe

CREATE UNIQUE INDEX IX_UniqueValue ON Issue695 (UniqueValue)

BeforeExecute
-- SqlCe

DROP TABLE TestMerge1

BeforeExecute
-- SqlCe

DROP TABLE TestMerge2

BeforeExecute
-- SqlCe

CREATE TABLE TestMerge1
(
	Id     int          NOT NULL CONSTRAINT PK_TestMerge1 PRIMARY KEY,
	Field1 int              NULL,
	Field2 int              NULL,
	Field3 int              NULL,
	Field4 int              NULL,
	Field5 int              NULL,

	FieldInt64      BIGINT            NULL,
	FieldBoolean    BIT               NULL,
	FieldString     NVARCHAR(20)      NULL,
	FieldNString    NVARCHAR(20)      NULL,
	FieldChar       NCHAR(1)          NULL,
	FieldNChar      NCHAR(1)          NULL,
	FieldFloat      REAL              NULL,
	FieldDouble     FLOAT             NULL,
	FieldDateTime   DATETIME          NULL,
	FieldBinary     VARBINARY(20)     NULL,
	FieldGuid       UNIQUEIDENTIFIER  NULL,
	FieldDecimal    DECIMAL(24, 10)   NULL,
	FieldEnumString NVARCHAR(20)      NULL,
	FieldEnumNumber INT               NULL
)

BeforeExecute
-- SqlCe

CREATE TABLE TestMerge2
(
	Id     int          NOT NULL CONSTRAINT PK_TestMerge2 PRIMARY KEY,
	Field1 int              NULL,
	Field2 int              NULL,
	Field3 int              NULL,
	Field4 int              NULL,
	Field5 int              NULL,

	FieldInt64      BIGINT            NULL,
	FieldBoolean    BIT               NULL,
	FieldString     NVARCHAR(20)      NULL,
	FieldNString    NVARCHAR(20)      NULL,
	FieldChar       NCHAR(1)          NULL,
	FieldNChar      NCHAR(1)          NULL,
	FieldFloat      REAL              NULL,
	FieldDouble     FLOAT             NULL,
	FieldDateTime   DATETIME          NULL,
	FieldBinary     VARBINARY(20)     NULL,
	FieldGuid       UNIQUEIDENTIFIER  NULL,
	FieldDecimal    DECIMAL(24, 10)   NULL,
	FieldEnumString NVARCHAR(20)      NULL,
	FieldEnumNumber INT               NULL
)

BeforeExecute
-- SqlCe

DROP TABLE CollatedTable

BeforeExecute
-- SqlCe

CREATE TABLE CollatedTable
(
	Id				INT NOT NULL,
	CaseSensitive	NVARCHAR(20) NOT NULL,
	CaseInsensitive	NVARCHAR(20) NOT NULL
)

BeforeExecute
-- SqlCe

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
-- SqlCe

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
-- SqlCe

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
-- SqlCe

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
-- SqlCe

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
-- SqlCe

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

BeforeExecute
-- SqlCe.Data SqlCe

DROP TABLE Issue695

BeforeExecute
-- SqlCe.Data SqlCe

DROP TABLE Issue695Parent

BeforeExecute
-- SqlCe.Data SqlCe

DROP TABLE Patient

BeforeExecute
-- SqlCe.Data SqlCe

DROP TABLE Doctor

BeforeExecute
-- SqlCe.Data SqlCe

DROP TABLE Person

BeforeExecute
-- SqlCe.Data SqlCe

DROP TABLE InheritanceParent

BeforeExecute
-- SqlCe.Data SqlCe

CREATE TABLE InheritanceParent
(
	InheritanceParentId int          NOT NULL CONSTRAINT PK_InheritanceParent PRIMARY KEY,
	TypeDiscriminator   int              NULL,
	Name                nvarchar(50)     NULL
)

BeforeExecute
-- SqlCe.Data SqlCe

DROP TABLE InheritanceChild

BeforeExecute
-- SqlCe.Data SqlCe

CREATE TABLE InheritanceChild
(
	InheritanceChildId  int          NOT NULL CONSTRAINT PK_InheritanceChild PRIMARY KEY,
	InheritanceParentId int          NOT NULL,
	TypeDiscriminator   int              NULL,
	Name                nvarchar(50)     NULL
)

BeforeExecute
-- SqlCe.Data SqlCe

-- Person Table

CREATE TABLE Person
(
	PersonID   int          NOT NULL IDENTITY(1,1) CONSTRAINT PK_Person PRIMARY KEY,
	FirstName  nvarchar(50) NOT NULL,
	LastName   nvarchar(50) NOT NULL,
	MiddleName nvarchar(50)     NULL,
	Gender     nchar(1)     NOT NULL
)

BeforeExecute
-- SqlCe.Data SqlCe

INSERT INTO Person (FirstName, LastName, Gender) VALUES ('John',   'Pupkin',    'M')

BeforeExecute
-- SqlCe.Data SqlCe

INSERT INTO Person (FirstName, LastName, Gender) VALUES ('Tester', 'Testerson', 'M')

BeforeExecute
-- SqlCe.Data SqlCe

INSERT INTO Person (FirstName, LastName, Gender) VALUES ('Jane',   'Doe',       'F')

BeforeExecute
-- SqlCe.Data SqlCe

INSERT INTO Person (FirstName, LastName, MiddleName, Gender) VALUES ('Jürgen', 'König', 'Ko', 'M')

BeforeExecute
-- SqlCe.Data SqlCe

-- Doctor Table Extension

CREATE TABLE Doctor
(
	PersonID int          NOT NULL
		CONSTRAINT PK_Doctor        PRIMARY KEY
		CONSTRAINT FK_Doctor_Person --FOREIGN KEY
			REFERENCES Person ([PersonID])
			ON UPDATE CASCADE
			ON DELETE CASCADE,
	Taxonomy nvarchar(50) NOT NULL
)

BeforeExecute
-- SqlCe.Data SqlCe

INSERT INTO Doctor (PersonID, Taxonomy) VALUES (1, 'Psychiatry')

BeforeExecute
-- SqlCe.Data SqlCe

-- Patient Table Extension

CREATE TABLE Patient
(
	PersonID  int           NOT NULL
		CONSTRAINT PK_Patient        PRIMARY KEY
		CONSTRAINT FK_Patient_Person --FOREIGN KEY
			REFERENCES Person ([PersonID])
			ON UPDATE CASCADE
			ON DELETE CASCADE,
	Diagnosis nvarchar(256) NOT NULL
)

BeforeExecute
-- SqlCe.Data SqlCe

INSERT INTO Patient (PersonID, Diagnosis) VALUES (2, 'Hallucination with Paranoid Bugs'' Delirium of Persecution')

BeforeExecute
-- SqlCe.Data SqlCe

DROP TABLE Parent

BeforeExecute
-- SqlCe.Data SqlCe

DROP TABLE Child

BeforeExecute
-- SqlCe.Data SqlCe

DROP TABLE GrandChild

BeforeExecute
-- SqlCe.Data SqlCe

CREATE TABLE Parent      (ParentID int, Value1 int)

BeforeExecute
-- SqlCe.Data SqlCe

CREATE TABLE Child       (ParentID int, ChildID int)

BeforeExecute
-- SqlCe.Data SqlCe

CREATE TABLE GrandChild  (ParentID int, ChildID int, GrandChildID int)

BeforeExecute
-- SqlCe.Data SqlCe

DROP TABLE LinqDataTypes

BeforeExecute
-- SqlCe.Data SqlCe

CREATE TABLE LinqDataTypes
(
	ID             int,
	MoneyValue     decimal(10,4),
	DateTimeValue  datetime,
	DateTimeValue2 datetime,
	BoolValue      bit,
	GuidValue      uniqueidentifier,
	BinaryValue    varbinary(5000) NULL,
	SmallIntValue  smallint,
	IntValue       int             NULL,
	BigIntValue    bigint          NULL,
	StringValue    nvarchar(50)    NULL
)

BeforeExecute
-- SqlCe.Data SqlCe

DROP TABLE TestIdentity

BeforeExecute
-- SqlCe.Data SqlCe

CREATE TABLE TestIdentity (
	ID int NOT NULL IDENTITY(1,1) CONSTRAINT PK_TestIdentity PRIMARY KEY
)

BeforeExecute
-- SqlCe.Data SqlCe

DROP TABLE AllTypes

BeforeExecute
-- SqlCe.Data SqlCe

CREATE TABLE AllTypes
(
	ID                       int          NOT NULL IDENTITY(1,1) CONSTRAINT PK_AllTypes PRIMARY KEY,

	bigintDataType           bigint           NULL,
	numericDataType          numeric          NULL,
	bitDataType              bit              NULL,
	smallintDataType         smallint         NULL,
	decimalDataType          decimal          NULL,
	intDataType              int              NULL,
	tinyintDataType          tinyint          NULL,
	moneyDataType            money            NULL,
	floatDataType            float            NULL,
	realDataType             real             NULL,

	datetimeDataType         datetime         NULL,

	ncharDataType            nchar(20)        NULL,
	nvarcharDataType         nvarchar(20)     NULL,
	ntextDataType            ntext            NULL,

	binaryDataType           binary           NULL,
	varbinaryDataType        varbinary        NULL,
	imageDataType            image            NULL,

	timestampDataType        timestamp        NULL,
	uniqueidentifierDataType uniqueidentifier NULL
)

BeforeExecute
-- SqlCe.Data SqlCe

INSERT INTO AllTypes
(
	bigintDataType, numericDataType, bitDataType, smallintDataType, decimalDataType,
	intDataType, tinyintDataType, moneyDataType, floatDataType, realDataType,

	datetimeDataType,

	ncharDataType, nvarcharDataType, ntextDataType,

	binaryDataType, varbinaryDataType, imageDataType,

	uniqueidentifierDataType
)
SELECT
	     NULL,      NULL,  NULL,    NULL,    NULL,   NULL, NULL,   NULL,  NULL,  NULL,
	     NULL,
	     NULL,      NULL,  NULL,
	     NULL,      NULL,  NULL,
	     NULL
UNION ALL
SELECT
	  1000000,   9999999,     1,   25555, 2222222, 7777777,  100, 100000, 20.31, 16.2,
	Cast('2012-12-12 12:12:12' as datetime),
	  '23233',    '3323', '111',
	        1,         2, Cast(3 as varbinary),
	Cast('6F9619FF-8B86-D011-B42D-00C04FC964FF' as uniqueidentifier)

BeforeExecute
-- SqlCe.Data SqlCe

CREATE TABLE Issue695Parent
(
	ID          int NOT NULL
			CONSTRAINT PK_Issue695 PRIMARY KEY
)

BeforeExecute
-- SqlCe.Data SqlCe

CREATE TABLE Issue695
(
	ID          int NOT NULL
			CONSTRAINT PK_Issue695 PRIMARY KEY
			CONSTRAINT FK_Issue695_Parent --FOREIGN KEY
			REFERENCES Issue695Parent ([ID])
			ON UPDATE CASCADE
			ON DELETE CASCADE,

	UniqueValue int NOT NULL
)

BeforeExecute
-- SqlCe.Data SqlCe

CREATE UNIQUE INDEX IX_UniqueValue ON Issue695 (UniqueValue)

BeforeExecute
-- SqlCe.Data SqlCe

DROP TABLE TestMerge1

BeforeExecute
-- SqlCe.Data SqlCe

DROP TABLE TestMerge2

BeforeExecute
-- SqlCe.Data SqlCe

CREATE TABLE TestMerge1
(
	Id     int          NOT NULL CONSTRAINT PK_TestMerge1 PRIMARY KEY,
	Field1 int              NULL,
	Field2 int              NULL,
	Field3 int              NULL,
	Field4 int              NULL,
	Field5 int              NULL,

	FieldInt64      BIGINT            NULL,
	FieldBoolean    BIT               NULL,
	FieldString     NVARCHAR(20)      NULL,
	FieldNString    NVARCHAR(20)      NULL,
	FieldChar       NCHAR(1)          NULL,
	FieldNChar      NCHAR(1)          NULL,
	FieldFloat      REAL              NULL,
	FieldDouble     FLOAT             NULL,
	FieldDateTime   DATETIME          NULL,
	FieldBinary     VARBINARY(20)     NULL,
	FieldGuid       UNIQUEIDENTIFIER  NULL,
	FieldDecimal    DECIMAL(24, 10)   NULL,
	FieldEnumString NVARCHAR(20)      NULL,
	FieldEnumNumber INT               NULL
)

BeforeExecute
-- SqlCe.Data SqlCe

CREATE TABLE TestMerge2
(
	Id     int          NOT NULL CONSTRAINT PK_TestMerge2 PRIMARY KEY,
	Field1 int              NULL,
	Field2 int              NULL,
	Field3 int              NULL,
	Field4 int              NULL,
	Field5 int              NULL,

	FieldInt64      BIGINT            NULL,
	FieldBoolean    BIT               NULL,
	FieldString     NVARCHAR(20)      NULL,
	FieldNString    NVARCHAR(20)      NULL,
	FieldChar       NCHAR(1)          NULL,
	FieldNChar      NCHAR(1)          NULL,
	FieldFloat      REAL              NULL,
	FieldDouble     FLOAT             NULL,
	FieldDateTime   DATETIME          NULL,
	FieldBinary     VARBINARY(20)     NULL,
	FieldGuid       UNIQUEIDENTIFIER  NULL,
	FieldDecimal    DECIMAL(24, 10)   NULL,
	FieldEnumString NVARCHAR(20)      NULL,
	FieldEnumNumber INT               NULL
)

BeforeExecute
-- SqlCe.Data SqlCe

DROP TABLE CollatedTable

BeforeExecute
-- SqlCe.Data SqlCe

CREATE TABLE CollatedTable
(
	Id				INT NOT NULL,
	CaseSensitive	NVARCHAR(20) NOT NULL,
	CaseInsensitive	NVARCHAR(20) NOT NULL
)

BeforeExecute
-- SqlCe.Data SqlCe

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
-- SqlCe.Data SqlCe

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
-- SqlCe.Data SqlCe

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
-- SqlCe.Data SqlCe

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
-- SqlCe.Data SqlCe

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
-- SqlCe.Data SqlCe

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

