﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP Procedure AddIssue792Record

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP Procedure ThisProcedureNotVisibleFromODBC

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP Procedure Person_SelectByKey

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP Procedure Person_SelectAll

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP Procedure Person_SelectByName

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP Procedure Person_SelectListByName

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP Procedure Person_Insert

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP Procedure Person_Update

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP Procedure Person_Delete

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP Procedure Patient_SelectAll

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP Procedure Patient_SelectByName

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP Procedure Scalar_DataReader

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE Doctor

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE Patient

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE Person

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE RelationsTable

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE InheritanceParent

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE InheritanceParent
(
	InheritanceParentId Int      NOT NULL CONSTRAINT PK_InheritanceParent PRIMARY KEY,
	TypeDiscriminator   Int          NULL,
	Name                Text(50)     NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE InheritanceChild

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE InheritanceChild
(
	InheritanceChildId  Int      NOT NULL CONSTRAINT PK_InheritanceChild PRIMARY KEY,
	InheritanceParentId Int      NOT NULL,
	TypeDiscriminator   Int          NULL,
	Name                Text(50)     NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE Person
(
	PersonID   Int IDENTITY,
	FirstName  Text(50) NOT NULL,
	LastName   Text(50) NOT NULL,
	MiddleName Text(50),
	Gender     Text(1) NOT NULL,

	CONSTRAINT PK_Peson PRIMARY KEY (PersonID)
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE Doctor
(
	PersonID Int NOT NULL,
	Taxonomy Text(50) NOT NULL,

	CONSTRAINT PK_Doctor PRIMARY KEY (PersonID)
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE Patient
(
	PersonID  Int NOT NULL,
	Diagnosis Text(255) NOT NULL,

	CONSTRAINT PK_Patient PRIMARY KEY (PersonID)
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

ALTER TABLE Doctor
	ADD CONSTRAINT PersonDoctor FOREIGN KEY (PersonID) REFERENCES Person ON UPDATE CASCADE ON DELETE CASCADE;

BeforeExecute
-- Access.Jet.Odbc AccessODBC

ALTER TABLE Patient
	ADD CONSTRAINT PersonPatient FOREIGN KEY (PersonID) REFERENCES Person ON UPDATE CASCADE ON DELETE CASCADE;

BeforeExecute
-- Access.Jet.Odbc AccessODBC

INSERT INTO Person (FirstName, LastName, Gender) VALUES ('John',   'Pupkin',    'M')

BeforeExecute
-- Access.Jet.Odbc AccessODBC

INSERT INTO Person (FirstName, LastName, Gender) VALUES ('Tester', 'Testerson', 'M')

BeforeExecute
-- Access.Jet.Odbc AccessODBC

INSERT INTO Person (FirstName, LastName, Gender) VALUES ('Jane',   'Doe',       'F')

BeforeExecute
-- Access.Jet.Odbc AccessODBC

INSERT INTO Person (FirstName, LastName, MiddleName, Gender) VALUES ('Jürgen', 'König', 'Ko', 'M')

BeforeExecute
-- Access.Jet.Odbc AccessODBC

INSERT INTO Doctor (PersonID, Taxonomy)   VALUES (1, 'Psychiatry')

BeforeExecute
-- Access.Jet.Odbc AccessODBC

INSERT INTO Patient (PersonID, Diagnosis) VALUES (2, 'Hallucination with Paranoid Bugs'' Delirium of Persecution')

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE Parent

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE Child

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE GrandChild

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE Parent     (ParentID int, Value1 int NULL)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE Child      (ParentID int, ChildID int)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE GrandChild (ParentID int, ChildID int, GrandChildID int)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE Procedure Person_SelectByKey(
	[@id] Long)
AS
	SELECT * FROM Person WHERE PersonID = [@id];

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE Procedure Person_SelectAll
AS
	SELECT * FROM Person;

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE Procedure Person_SelectByName(
	[@firstName] Text(50),
	[@lastName]  Text(50))
AS
SELECT
	*
FROM
	Person
WHERE
	FirstName = [@firstName] AND LastName = [@lastName];

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE Procedure Person_SelectListByName(
	[@firstName] Text(50),
	[@lastName]  Text(50))
AS
SELECT
	*
FROM
	Person
WHERE
	FirstName like [@firstName] AND LastName like [@lastName];

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE Procedure Person_Insert(
	[@FirstName]  Text(50),
	[@MiddleName] Text(50),
	[@LastName]   Text(50),
	[@Gender]     Text(1))
AS
INSERT INTO Person
	(FirstName, MiddleName, LastName, Gender)
VALUES
	([@FirstName], [@MiddleName], [@LastName], [@Gender]);

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE Procedure Person_Update(
	[@id]         Long,
	[@FirstName]  Text(50),
	[@MiddleName] Text(50),
	[@LastName]   Text(50),
	[@Gender]     Text(1))
AS
UPDATE
	Person
SET
	LastName   = [@LastName],
	FirstName  = [@FirstName],
	MiddleName = [@MiddleName],
	Gender     = [@Gender]
WHERE
	PersonID = [@id];

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE Procedure Person_Delete(
	[@PersonID] Long)
AS
DELETE FROM Person WHERE PersonID = [@PersonID];

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE Procedure Patient_SelectAll
AS
SELECT
	Person.*, Patient.Diagnosis
FROM
	Patient, Person
WHERE
	Patient.PersonID = Person.PersonID;

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE Procedure Patient_SelectByName(
	[@firstName] Text(50),
	[@lastName]  Text(50))
AS
SELECT
	Person.*, Patient.Diagnosis
FROM
	Patient, Person
WHERE
	Patient.PersonID = Person.PersonID
	AND FirstName = [@firstName] AND LastName = [@lastName];

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE Procedure Scalar_DataReader
AS
	SELECT 12345 AS intField, '54321' AS stringField;

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE LinqDataTypes

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE LinqDataTypes
(
	ID             int,
	MoneyValue     decimal(10,4),
	DateTimeValue  datetime,
	DateTimeValue2 datetime,
	BoolValue      bit,
	GuidValue      uniqueidentifier,
	BinaryValue    OleObject NULL,
	SmallIntValue  smallint,
	IntValue       int       NULL,
	BigIntValue    long      NULL,
	StringValue    Text(50)  NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE TestIdentity

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE TestIdentity
(
	ID Int IDENTITY,
	CONSTRAINT PK_TestIdentity PRIMARY KEY (ID)
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE AllTypes

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE AllTypes
(
	ID                       counter      NOT NULL,

	bitDataType              bit              NULL,
	smallintDataType         smallint         NULL,
	decimalDataType          decimal          NULL,
	intDataType              int              NULL,
	tinyintDataType          tinyint          NULL,
	moneyDataType            money            NULL,
	floatDataType            float            NULL,
	realDataType             real             NULL,

	datetimeDataType         datetime         NULL,

	charDataType             char(1)          NULL,
	char20DataType           char(20)         NULL,
	varcharDataType          varchar(20)      NULL,
	textDataType             text             NULL,
	ncharDataType            nchar(20)        NULL,
	nvarcharDataType         nvarchar(20)     NULL,
	ntextDataType            ntext            NULL,

	binaryDataType           binary(10)       NULL,
	varbinaryDataType        varbinary        NULL,
	imageDataType            image            NULL,
	oleObjectDataType        oleobject        NULL,

	uniqueidentifierDataType uniqueidentifier NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

INSERT INTO AllTypes (binaryDataType)
VALUES (NULL)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE TestMerge1

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE TestMerge2

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE TestMerge1
(
	Id       Int      NOT NULL CONSTRAINT PK_TestMerge1 PRIMARY KEY,
	Field1   Int          NULL,
	Field2   Int          NULL,
	Field3   Int          NULL,
	Field4   Int          NULL,
	Field5   Int          NULL,

	FieldBoolean    BIT               NULL,
	FieldString     VARCHAR(20)       NULL,
	FieldNString    NVARCHAR(20)      NULL,
	FieldChar       CHAR(1)           NULL,
	FieldNChar      NCHAR(1)          NULL,
	FieldFloat      REAL              NULL,
	FieldDouble     FLOAT             NULL,
	FieldDateTime   DATETIME          NULL,
	FieldBinary     VARBINARY(20)     NULL,
	FieldGuid       UNIQUEIDENTIFIER  NULL,
	FieldDecimal    DECIMAL(24, 10)   NULL,
	FieldDate       DATE              NULL,
	FieldTime       TIME              NULL,
	FieldEnumString VARCHAR(20)       NULL,
	FieldEnumNumber INT               NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE TestMerge2
(
	Id       Int      NOT NULL CONSTRAINT PK_TestMerge2 PRIMARY KEY,
	Field1   Int          NULL,
	Field2   Int          NULL,
	Field3   Int          NULL,
	Field4   Int          NULL,
	Field5   Int          NULL,

	FieldBoolean    BIT               NULL,
	FieldString     VARCHAR(20)       NULL,
	FieldNString    NVARCHAR(20)      NULL,
	FieldChar       CHAR(1)           NULL,
	FieldNChar      NCHAR(1)          NULL,
	FieldFloat      REAL              NULL,
	FieldDouble     FLOAT             NULL,
	FieldDateTime   DATETIME          NULL,
	FieldBinary     VARBINARY(20)     NULL,
	FieldGuid       UNIQUEIDENTIFIER  NULL,
	FieldDecimal    DECIMAL(24, 10)   NULL,
	FieldDate       DATE              NULL,
	FieldTime       TIME              NULL,
	FieldEnumString VARCHAR(20)       NULL,
	FieldEnumNumber INT               NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE Procedure AddIssue792Record(@id INT)
AS
	INSERT INTO AllTypes(char20DataType) VALUES('issue792');

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE Procedure ThisProcedureNotVisibleFromODBC
AS
	INSERT INTO AllTypes(char20DataType) VALUES('issue792');

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE RelationsTable
(
	ID1		INT NOT NULL,
	ID2		INT NOT NULL,
	Int1	INT NOT NULL,
	Int2	INT NOT NULL,
	IntN1	INT NULL,
	IntN2	INT NULL,
	FK		INT NOT NULL,
	FKN		INT NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE INDEX PK_RelationsTable ON RelationsTable(ID1, ID2) WITH PRIMARY;

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE INDEX IX_Index ON RelationsTable(Int1, IntN1);

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE UNIQUE INDEX UX_Index1 ON RelationsTable(Int1);

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE UNIQUE INDEX UX_Index2 ON RelationsTable(IntN1);

BeforeExecute
-- Access.Jet.Odbc AccessODBC

ALTER TABLE RelationsTable ADD CONSTRAINT FK_Nullable FOREIGN KEY (IntN1, IntN2) REFERENCES RelationsTable(ID1, ID2);

BeforeExecute
-- Access.Jet.Odbc AccessODBC

ALTER TABLE RelationsTable ADD CONSTRAINT FK_NotNullable FOREIGN KEY (Int1, Int2) REFERENCES RelationsTable(ID1, ID2);

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE CollatedTable

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE CollatedTable
(
	Id				INT NOT NULL,
	CaseSensitive	NVARCHAR(20) NOT NULL,
	CaseInsensitive	NVARCHAR(20) NOT NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @MoneyValue VarChar(3, 2) -- AnsiString
SET     @MoneyValue = 1.11
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = #2001-01-11 01:11:21#
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = True
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = 'ef129165-6ffe-4df9-bb6b-bb16e413c883'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 1
DECLARE @IntValue Int -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Int -- Int32
SET     @BigIntValue = 1
DECLARE @StringValue NVarChar -- String
SET     @StringValue = NULL

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
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 2
DECLARE @MoneyValue VarChar(3, 2) -- AnsiString
SET     @MoneyValue = 2.49
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = #2005-05-15 05:15:25#
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = False
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = 'bc663a61-7b40-4681-ac38-f9aaf55b706b'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 2
DECLARE @IntValue Int -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Int -- Int32
SET     @BigIntValue = 2
DECLARE @StringValue NVarChar -- String
SET     @StringValue = ''

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
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 3
DECLARE @MoneyValue VarChar(3, 2) -- AnsiString
SET     @MoneyValue = 3.99
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = #2009-09-19 09:19:29#
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = True
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = 'd2f970c0-35ac-4987-9cd5-5badb1757436'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 3
DECLARE @IntValue Int -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Int -- Int32
SET     @BigIntValue = NULL
DECLARE @StringValue NVarChar(1) -- String
SET     @StringValue = '1'

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
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 4
DECLARE @MoneyValue VarChar(3, 2) -- AnsiString
SET     @MoneyValue = 4.50
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = #2009-09-20 09:19:29#
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = False
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = '40932fdb-1543-4e4a-ac2c-ca371604fb4b'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 4
DECLARE @IntValue Int -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Int -- Int32
SET     @BigIntValue = NULL
DECLARE @StringValue NVarChar(1) -- String
SET     @StringValue = '2'

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
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 5
DECLARE @MoneyValue VarChar(3, 2) -- AnsiString
SET     @MoneyValue = 5.50
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = #2009-09-20 09:19:29#
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = True
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = 'febe3eca-cb5f-40b2-ad39-2979d312afca'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 5
DECLARE @IntValue Int -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Int -- Int32
SET     @BigIntValue = NULL
DECLARE @StringValue NVarChar(1) -- String
SET     @StringValue = '3'

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
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 6
DECLARE @MoneyValue VarChar(3, 2) -- AnsiString
SET     @MoneyValue = 6.55
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = #2009-09-22 09:19:29#
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = False
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = '8d3c5d1d-47db-4730-9fe7-968f6228a4c0'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 6
DECLARE @IntValue Int -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Int -- Int32
SET     @BigIntValue = NULL
DECLARE @StringValue NVarChar(1) -- String
SET     @StringValue = '4'

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
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 7
DECLARE @MoneyValue VarChar(3, 2) -- AnsiString
SET     @MoneyValue = 7.00
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = #2009-09-23 09:19:29#
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = True
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = '48094115-83af-46dd-a906-bff26ee21ee2'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 7
DECLARE @IntValue Int -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Int -- Int32
SET     @BigIntValue = NULL
DECLARE @StringValue NVarChar(1) -- String
SET     @StringValue = '5'

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
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 8
DECLARE @MoneyValue VarChar(3, 2) -- AnsiString
SET     @MoneyValue = 8.99
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = #2009-09-24 09:19:29#
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = False
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = 'c1139f1f-1335-4cd4-937e-92602f732dd3'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 8
DECLARE @IntValue Int -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Int -- Int32
SET     @BigIntValue = NULL
DECLARE @StringValue NVarChar(1) -- String
SET     @StringValue = '6'

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
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 9
DECLARE @MoneyValue VarChar(3, 2) -- AnsiString
SET     @MoneyValue = 9.63
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = #2009-09-25 09:19:29#
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = True
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = '46c5c512-3d4b-4cf7-b4e7-1de080789e5d'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 9
DECLARE @IntValue Int -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Int -- Int32
SET     @BigIntValue = NULL
DECLARE @StringValue NVarChar(1) -- String
SET     @StringValue = '7'

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
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 10
DECLARE @MoneyValue VarChar(4, 2) -- AnsiString
SET     @MoneyValue = 10.77
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = #2009-09-26 09:19:29#
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = False
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = '61b2bc55-147f-4b40-93ed-a4aa83602fee'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 10
DECLARE @IntValue Int -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Int -- Int32
SET     @BigIntValue = NULL
DECLARE @StringValue NVarChar(1) -- String
SET     @StringValue = '8'

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
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 11
DECLARE @MoneyValue VarChar(4, 2) -- AnsiString
SET     @MoneyValue = 11.45
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = #2009-09-27#
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = True
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = 'd3021d18-97f0-4dc0-98d0-f0c7df4a1230'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 11
DECLARE @IntValue Int -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Int -- Int32
SET     @BigIntValue = NULL
DECLARE @StringValue NVarChar(1) -- String
SET     @StringValue = '9'

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
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 12
DECLARE @MoneyValue VarChar(4, 2) -- AnsiString
SET     @MoneyValue = 11.45
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = #2012-11-07 19:19:29#
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = True
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = '03021d18-97f0-4dc0-98d0-f0c7df4a1230'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 12
DECLARE @IntValue Int -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Int -- Int32
SET     @BigIntValue = NULL
DECLARE @StringValue NVarChar(1) -- String
SET     @StringValue = '0'

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
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1
DECLARE @Value1 Int -- Int32
SET     @Value1 = 1

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2
DECLARE @Value1 Int -- Int32
SET     @Value1 = NULL

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 3
DECLARE @Value1 Int -- Int32
SET     @Value1 = 3

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 4
DECLARE @Value1 Int -- Int32
SET     @Value1 = NULL

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 5
DECLARE @Value1 Int -- Int32
SET     @Value1 = 5

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 6
DECLARE @Value1 Int -- Int32
SET     @Value1 = 6

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 7
DECLARE @Value1 Int -- Int32
SET     @Value1 = 1

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1
DECLARE @ChildID Int -- Int32
SET     @ChildID = 11

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2
DECLARE @ChildID Int -- Int32
SET     @ChildID = 21

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2
DECLARE @ChildID Int -- Int32
SET     @ChildID = 22

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 3
DECLARE @ChildID Int -- Int32
SET     @ChildID = 31

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 3
DECLARE @ChildID Int -- Int32
SET     @ChildID = 32

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 3
DECLARE @ChildID Int -- Int32
SET     @ChildID = 33

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 4
DECLARE @ChildID Int -- Int32
SET     @ChildID = 41

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 4
DECLARE @ChildID Int -- Int32
SET     @ChildID = 42

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 4
DECLARE @ChildID Int -- Int32
SET     @ChildID = 43

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 4
DECLARE @ChildID Int -- Int32
SET     @ChildID = 44

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 6
DECLARE @ChildID Int -- Int32
SET     @ChildID = 61

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 6
DECLARE @ChildID Int -- Int32
SET     @ChildID = 62

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 6
DECLARE @ChildID Int -- Int32
SET     @ChildID = 63

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 6
DECLARE @ChildID Int -- Int32
SET     @ChildID = 64

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 6
DECLARE @ChildID Int -- Int32
SET     @ChildID = 65

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 6
DECLARE @ChildID Int -- Int32
SET     @ChildID = 66

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 7
DECLARE @ChildID Int -- Int32
SET     @ChildID = 77

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1
DECLARE @ChildID Int -- Int32
SET     @ChildID = 11
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 111

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2
DECLARE @ChildID Int -- Int32
SET     @ChildID = 21
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 211

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2
DECLARE @ChildID Int -- Int32
SET     @ChildID = 21
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 212

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2
DECLARE @ChildID Int -- Int32
SET     @ChildID = 22
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 221

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2
DECLARE @ChildID Int -- Int32
SET     @ChildID = 22
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 222

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 3
DECLARE @ChildID Int -- Int32
SET     @ChildID = 31
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 311

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 3
DECLARE @ChildID Int -- Int32
SET     @ChildID = 31
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 312

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 3
DECLARE @ChildID Int -- Int32
SET     @ChildID = 31
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 313

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 3
DECLARE @ChildID Int -- Int32
SET     @ChildID = 32
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 321

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 3
DECLARE @ChildID Int -- Int32
SET     @ChildID = 32
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 322

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 3
DECLARE @ChildID Int -- Int32
SET     @ChildID = 32
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 323

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 3
DECLARE @ChildID Int -- Int32
SET     @ChildID = 33
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 331

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 3
DECLARE @ChildID Int -- Int32
SET     @ChildID = 33
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 332

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 3
DECLARE @ChildID Int -- Int32
SET     @ChildID = 33
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 333

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 4
DECLARE @ChildID Int -- Int32
SET     @ChildID = 41
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 411

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 4
DECLARE @ChildID Int -- Int32
SET     @ChildID = 41
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 412

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 4
DECLARE @ChildID Int -- Int32
SET     @ChildID = 41
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 413

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 4
DECLARE @ChildID Int -- Int32
SET     @ChildID = 41
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 414

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 4
DECLARE @ChildID Int -- Int32
SET     @ChildID = 42
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 421

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 4
DECLARE @ChildID Int -- Int32
SET     @ChildID = 42
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 422

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 4
DECLARE @ChildID Int -- Int32
SET     @ChildID = 42
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 423

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 4
DECLARE @ChildID Int -- Int32
SET     @ChildID = 42
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 424

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @InheritanceParentId Int -- Int32
SET     @InheritanceParentId = 1
DECLARE @TypeDiscriminator Int -- Int32
SET     @TypeDiscriminator = NULL
DECLARE @Name NVarChar -- String
SET     @Name = NULL

INSERT INTO [InheritanceParent]
(
	[InheritanceParentId],
	[TypeDiscriminator],
	[Name]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @InheritanceParentId Int -- Int32
SET     @InheritanceParentId = 2
DECLARE @TypeDiscriminator Int -- Int32
SET     @TypeDiscriminator = 1
DECLARE @Name NVarChar -- String
SET     @Name = NULL

INSERT INTO [InheritanceParent]
(
	[InheritanceParentId],
	[TypeDiscriminator],
	[Name]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @InheritanceParentId Int -- Int32
SET     @InheritanceParentId = 3
DECLARE @TypeDiscriminator Int -- Int32
SET     @TypeDiscriminator = 2
DECLARE @Name NVarChar(18) -- String
SET     @Name = 'InheritanceParent2'

INSERT INTO [InheritanceParent]
(
	[InheritanceParentId],
	[TypeDiscriminator],
	[Name]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @InheritanceChildId Int -- Int32
SET     @InheritanceChildId = 1
DECLARE @TypeDiscriminator Int -- Int32
SET     @TypeDiscriminator = NULL
DECLARE @InheritanceParentId Int -- Int32
SET     @InheritanceParentId = 1
DECLARE @Name NVarChar -- String
SET     @Name = NULL

INSERT INTO [InheritanceChild]
(
	[InheritanceChildId],
	[TypeDiscriminator],
	[InheritanceParentId],
	[Name]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @InheritanceChildId Int -- Int32
SET     @InheritanceChildId = 2
DECLARE @TypeDiscriminator Int -- Int32
SET     @TypeDiscriminator = 1
DECLARE @InheritanceParentId Int -- Int32
SET     @InheritanceParentId = 2
DECLARE @Name NVarChar -- String
SET     @Name = NULL

INSERT INTO [InheritanceChild]
(
	[InheritanceChildId],
	[TypeDiscriminator],
	[InheritanceParentId],
	[Name]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @InheritanceChildId Int -- Int32
SET     @InheritanceChildId = 3
DECLARE @TypeDiscriminator Int -- Int32
SET     @TypeDiscriminator = 2
DECLARE @InheritanceParentId Int -- Int32
SET     @InheritanceParentId = 3
DECLARE @Name NVarChar(18) -- String
SET     @Name = 'InheritanceParent2'

INSERT INTO [InheritanceChild]
(
	[InheritanceChildId],
	[TypeDiscriminator],
	[InheritanceParentId],
	[Name]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
--  Access.Jet.Odbc AccessODBC
DECLARE @datetimeDataType DateTime
SET     @datetimeDataType = #2012-12-12 12:12:12#
DECLARE @binaryDataType VarBinary(4) -- Binary
SET     @binaryDataType = 0x01020304
DECLARE @varbinaryDataType VarBinary(4) -- Binary
SET     @varbinaryDataType = 0x01020305
DECLARE @imageDataType VarBinary(4) -- Binary
SET     @imageDataType = 0x03040506
DECLARE @oleobjectDataType VarBinary(4) -- Binary
SET     @oleobjectDataType = 0x05060708
DECLARE @uniqueidentifierDataType UniqueIdentifier -- Guid
SET     @uniqueidentifierDataType = '6f9619ff-8b86-d011-b42d-00c04fc964ff'


				INSERT INTO AllTypes
				(
					bitDataType, decimalDataType, smallintDataType, intDataType,tinyintDataType, moneyDataType, floatDataType, realDataType,
					datetimeDataType,
					charDataType, varcharDataType, textDataType, ncharDataType, nvarcharDataType, ntextDataType,
					binaryDataType, varbinaryDataType, imageDataType, oleobjectDataType,
					uniqueidentifierDataType
				)
				VALUES
				(
					1, 2222222, 25555, 7777777, 100, 100000, 20.31, 16.2,
					?,
					'1', '234', '567', '23233', '3323', '111',
					?, ?, ?, ?,
					?
				)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

DROP Procedure AddIssue792Record

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

DROP Procedure ThisProcedureNotVisibleFromODBC

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

DROP Procedure Person_SelectByKey

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

DROP Procedure Person_SelectAll

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

DROP Procedure Person_SelectByName

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

DROP Procedure Person_SelectListByName

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

DROP Procedure Person_Insert

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

DROP Procedure Person_Update

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

DROP Procedure Person_Delete

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

DROP Procedure Patient_SelectAll

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

DROP Procedure Patient_SelectByName

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

DROP Procedure Scalar_DataReader

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

DROP TABLE Doctor

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

DROP TABLE Patient

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

DROP TABLE Person

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

DROP TABLE RelationsTable

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

DROP TABLE InheritanceParent

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

CREATE TABLE InheritanceParent
(
	InheritanceParentId Int      NOT NULL CONSTRAINT PK_InheritanceParent PRIMARY KEY,
	TypeDiscriminator   Int          NULL,
	Name                Text(50)     NULL
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

DROP TABLE InheritanceChild

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

CREATE TABLE InheritanceChild
(
	InheritanceChildId  Int      NOT NULL CONSTRAINT PK_InheritanceChild PRIMARY KEY,
	InheritanceParentId Int      NOT NULL,
	TypeDiscriminator   Int          NULL,
	Name                Text(50)     NULL
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

CREATE TABLE Person
(
	PersonID   Int IDENTITY,
	FirstName  Text(50) NOT NULL,
	LastName   Text(50) NOT NULL,
	MiddleName Text(50),
	Gender     Text(1) NOT NULL,

	CONSTRAINT PK_Peson PRIMARY KEY (PersonID)
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

CREATE TABLE Doctor
(
	PersonID Int NOT NULL,
	Taxonomy Text(50) NOT NULL,

	CONSTRAINT PK_Doctor PRIMARY KEY (PersonID)
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

CREATE TABLE Patient
(
	PersonID  Int NOT NULL,
	Diagnosis Text(255) NOT NULL,

	CONSTRAINT PK_Patient PRIMARY KEY (PersonID)
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

ALTER TABLE Doctor
	ADD CONSTRAINT PersonDoctor FOREIGN KEY (PersonID) REFERENCES Person ON UPDATE CASCADE ON DELETE CASCADE;

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

ALTER TABLE Patient
	ADD CONSTRAINT PersonPatient FOREIGN KEY (PersonID) REFERENCES Person ON UPDATE CASCADE ON DELETE CASCADE;

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

INSERT INTO Person (FirstName, LastName, Gender) VALUES ('John',   'Pupkin',    'M')

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

INSERT INTO Person (FirstName, LastName, Gender) VALUES ('Tester', 'Testerson', 'M')

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

INSERT INTO Person (FirstName, LastName, Gender) VALUES ('Jane',   'Doe',       'F')

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

INSERT INTO Person (FirstName, LastName, MiddleName, Gender) VALUES ('Jürgen', 'König', 'Ko', 'M')

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

INSERT INTO Doctor (PersonID, Taxonomy)   VALUES (1, 'Psychiatry')

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

INSERT INTO Patient (PersonID, Diagnosis) VALUES (2, 'Hallucination with Paranoid Bugs'' Delirium of Persecution')

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

DROP TABLE Parent

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

DROP TABLE Child

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

DROP TABLE GrandChild

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

CREATE TABLE Parent     (ParentID int, Value1 int NULL)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

CREATE TABLE Child      (ParentID int, ChildID int)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

CREATE TABLE GrandChild (ParentID int, ChildID int, GrandChildID int)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

CREATE Procedure Person_SelectByKey(
	[@id] Long)
AS
	SELECT * FROM Person WHERE PersonID = [@id];

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

CREATE Procedure Person_SelectAll
AS
	SELECT * FROM Person;

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

CREATE Procedure Person_SelectByName(
	[@firstName] Text(50),
	[@lastName]  Text(50))
AS
SELECT
	*
FROM
	Person
WHERE
	FirstName = [@firstName] AND LastName = [@lastName];

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

CREATE Procedure Person_SelectListByName(
	[@firstName] Text(50),
	[@lastName]  Text(50))
AS
SELECT
	*
FROM
	Person
WHERE
	FirstName like [@firstName] AND LastName like [@lastName];

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

CREATE Procedure Person_Insert(
	[@FirstName]  Text(50),
	[@MiddleName] Text(50),
	[@LastName]   Text(50),
	[@Gender]     Text(1))
AS
INSERT INTO Person
	(FirstName, MiddleName, LastName, Gender)
VALUES
	([@FirstName], [@MiddleName], [@LastName], [@Gender]);

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

CREATE Procedure Person_Update(
	[@id]         Long,
	[@FirstName]  Text(50),
	[@MiddleName] Text(50),
	[@LastName]   Text(50),
	[@Gender]     Text(1))
AS
UPDATE
	Person
SET
	LastName   = [@LastName],
	FirstName  = [@FirstName],
	MiddleName = [@MiddleName],
	Gender     = [@Gender]
WHERE
	PersonID = [@id];

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

CREATE Procedure Person_Delete(
	[@PersonID] Long)
AS
DELETE FROM Person WHERE PersonID = [@PersonID];

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

CREATE Procedure Patient_SelectAll
AS
SELECT
	Person.*, Patient.Diagnosis
FROM
	Patient, Person
WHERE
	Patient.PersonID = Person.PersonID;

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

CREATE Procedure Patient_SelectByName(
	[@firstName] Text(50),
	[@lastName]  Text(50))
AS
SELECT
	Person.*, Patient.Diagnosis
FROM
	Patient, Person
WHERE
	Patient.PersonID = Person.PersonID
	AND FirstName = [@firstName] AND LastName = [@lastName];

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

CREATE Procedure Scalar_DataReader
AS
	SELECT 12345 AS intField, '54321' AS stringField;

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

DROP TABLE LinqDataTypes

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

CREATE TABLE LinqDataTypes
(
	ID             int,
	MoneyValue     decimal(10,4),
	DateTimeValue  datetime,
	DateTimeValue2 datetime,
	BoolValue      bit,
	GuidValue      uniqueidentifier,
	BinaryValue    OleObject NULL,
	SmallIntValue  smallint,
	IntValue       int       NULL,
	BigIntValue    long      NULL,
	StringValue    Text(50)  NULL
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

DROP TABLE TestIdentity

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

CREATE TABLE TestIdentity
(
	ID Int IDENTITY,
	CONSTRAINT PK_TestIdentity PRIMARY KEY (ID)
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

DROP TABLE AllTypes

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

CREATE TABLE AllTypes
(
	ID                       counter      NOT NULL,

	bitDataType              bit              NULL,
	smallintDataType         smallint         NULL,
	decimalDataType          decimal          NULL,
	intDataType              int              NULL,
	tinyintDataType          tinyint          NULL,
	moneyDataType            money            NULL,
	floatDataType            float            NULL,
	realDataType             real             NULL,

	datetimeDataType         datetime         NULL,

	charDataType             char(1)          NULL,
	char20DataType           char(20)         NULL,
	varcharDataType          varchar(20)      NULL,
	textDataType             text             NULL,
	ncharDataType            nchar(20)        NULL,
	nvarcharDataType         nvarchar(20)     NULL,
	ntextDataType            ntext            NULL,

	binaryDataType           binary(10)       NULL,
	varbinaryDataType        varbinary        NULL,
	imageDataType            image            NULL,
	oleObjectDataType        oleobject        NULL,

	uniqueidentifierDataType uniqueidentifier NULL
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

INSERT INTO AllTypes (binaryDataType)
VALUES (NULL)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

DROP TABLE TestMerge1

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

DROP TABLE TestMerge2

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

CREATE TABLE TestMerge1
(
	Id       Int      NOT NULL CONSTRAINT PK_TestMerge1 PRIMARY KEY,
	Field1   Int          NULL,
	Field2   Int          NULL,
	Field3   Int          NULL,
	Field4   Int          NULL,
	Field5   Int          NULL,

	FieldBoolean    BIT               NULL,
	FieldString     VARCHAR(20)       NULL,
	FieldNString    NVARCHAR(20)      NULL,
	FieldChar       CHAR(1)           NULL,
	FieldNChar      NCHAR(1)          NULL,
	FieldFloat      REAL              NULL,
	FieldDouble     FLOAT             NULL,
	FieldDateTime   DATETIME          NULL,
	FieldBinary     VARBINARY(20)     NULL,
	FieldGuid       UNIQUEIDENTIFIER  NULL,
	FieldDecimal    DECIMAL(24, 10)   NULL,
	FieldDate       DATE              NULL,
	FieldTime       TIME              NULL,
	FieldEnumString VARCHAR(20)       NULL,
	FieldEnumNumber INT               NULL
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

CREATE TABLE TestMerge2
(
	Id       Int      NOT NULL CONSTRAINT PK_TestMerge2 PRIMARY KEY,
	Field1   Int          NULL,
	Field2   Int          NULL,
	Field3   Int          NULL,
	Field4   Int          NULL,
	Field5   Int          NULL,

	FieldBoolean    BIT               NULL,
	FieldString     VARCHAR(20)       NULL,
	FieldNString    NVARCHAR(20)      NULL,
	FieldChar       CHAR(1)           NULL,
	FieldNChar      NCHAR(1)          NULL,
	FieldFloat      REAL              NULL,
	FieldDouble     FLOAT             NULL,
	FieldDateTime   DATETIME          NULL,
	FieldBinary     VARBINARY(20)     NULL,
	FieldGuid       UNIQUEIDENTIFIER  NULL,
	FieldDecimal    DECIMAL(24, 10)   NULL,
	FieldDate       DATE              NULL,
	FieldTime       TIME              NULL,
	FieldEnumString VARCHAR(20)       NULL,
	FieldEnumNumber INT               NULL
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

CREATE Procedure AddIssue792Record(@id INT)
AS
	INSERT INTO AllTypes(char20DataType) VALUES('issue792');

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

CREATE Procedure ThisProcedureNotVisibleFromODBC
AS
	INSERT INTO AllTypes(char20DataType) VALUES('issue792');

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

CREATE TABLE RelationsTable
(
	ID1		INT NOT NULL,
	ID2		INT NOT NULL,
	Int1	INT NOT NULL,
	Int2	INT NOT NULL,
	IntN1	INT NULL,
	IntN2	INT NULL,
	FK		INT NOT NULL,
	FKN		INT NULL
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

CREATE INDEX PK_RelationsTable ON RelationsTable(ID1, ID2) WITH PRIMARY;

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

CREATE INDEX IX_Index ON RelationsTable(Int1, IntN1);

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

CREATE UNIQUE INDEX UX_Index1 ON RelationsTable(Int1);

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

CREATE UNIQUE INDEX UX_Index2 ON RelationsTable(IntN1);

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

ALTER TABLE RelationsTable ADD CONSTRAINT FK_Nullable FOREIGN KEY (IntN1, IntN2) REFERENCES RelationsTable(ID1, ID2);

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

ALTER TABLE RelationsTable ADD CONSTRAINT FK_NotNullable FOREIGN KEY (Int1, Int2) REFERENCES RelationsTable(ID1, ID2);

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

DROP TABLE CollatedTable

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC

CREATE TABLE CollatedTable
(
	Id				INT NOT NULL,
	CaseSensitive	NVARCHAR(20) NOT NULL,
	CaseInsensitive	NVARCHAR(20) NOT NULL
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @MoneyValue VarChar(3, 2) -- AnsiString
SET     @MoneyValue = 1.11
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = #2001-01-11 01:11:21#
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = True
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = 'ef129165-6ffe-4df9-bb6b-bb16e413c883'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 1
DECLARE @IntValue Int -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Int -- Int32
SET     @BigIntValue = 1
DECLARE @StringValue NVarChar -- String
SET     @StringValue = NULL

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
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 2
DECLARE @MoneyValue VarChar(3, 2) -- AnsiString
SET     @MoneyValue = 2.49
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = #2005-05-15 05:15:25#
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = False
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = 'bc663a61-7b40-4681-ac38-f9aaf55b706b'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 2
DECLARE @IntValue Int -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Int -- Int32
SET     @BigIntValue = 2
DECLARE @StringValue NVarChar -- String
SET     @StringValue = ''

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
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 3
DECLARE @MoneyValue VarChar(3, 2) -- AnsiString
SET     @MoneyValue = 3.99
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = #2009-09-19 09:19:29#
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = True
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = 'd2f970c0-35ac-4987-9cd5-5badb1757436'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 3
DECLARE @IntValue Int -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Int -- Int32
SET     @BigIntValue = NULL
DECLARE @StringValue NVarChar(1) -- String
SET     @StringValue = '1'

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
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 4
DECLARE @MoneyValue VarChar(3, 2) -- AnsiString
SET     @MoneyValue = 4.50
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = #2009-09-20 09:19:29#
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = False
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = '40932fdb-1543-4e4a-ac2c-ca371604fb4b'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 4
DECLARE @IntValue Int -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Int -- Int32
SET     @BigIntValue = NULL
DECLARE @StringValue NVarChar(1) -- String
SET     @StringValue = '2'

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
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 5
DECLARE @MoneyValue VarChar(3, 2) -- AnsiString
SET     @MoneyValue = 5.50
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = #2009-09-20 09:19:29#
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = True
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = 'febe3eca-cb5f-40b2-ad39-2979d312afca'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 5
DECLARE @IntValue Int -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Int -- Int32
SET     @BigIntValue = NULL
DECLARE @StringValue NVarChar(1) -- String
SET     @StringValue = '3'

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
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 6
DECLARE @MoneyValue VarChar(3, 2) -- AnsiString
SET     @MoneyValue = 6.55
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = #2009-09-22 09:19:29#
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = False
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = '8d3c5d1d-47db-4730-9fe7-968f6228a4c0'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 6
DECLARE @IntValue Int -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Int -- Int32
SET     @BigIntValue = NULL
DECLARE @StringValue NVarChar(1) -- String
SET     @StringValue = '4'

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
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 7
DECLARE @MoneyValue VarChar(3, 2) -- AnsiString
SET     @MoneyValue = 7.00
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = #2009-09-23 09:19:29#
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = True
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = '48094115-83af-46dd-a906-bff26ee21ee2'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 7
DECLARE @IntValue Int -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Int -- Int32
SET     @BigIntValue = NULL
DECLARE @StringValue NVarChar(1) -- String
SET     @StringValue = '5'

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
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 8
DECLARE @MoneyValue VarChar(3, 2) -- AnsiString
SET     @MoneyValue = 8.99
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = #2009-09-24 09:19:29#
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = False
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = 'c1139f1f-1335-4cd4-937e-92602f732dd3'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 8
DECLARE @IntValue Int -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Int -- Int32
SET     @BigIntValue = NULL
DECLARE @StringValue NVarChar(1) -- String
SET     @StringValue = '6'

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
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 9
DECLARE @MoneyValue VarChar(3, 2) -- AnsiString
SET     @MoneyValue = 9.63
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = #2009-09-25 09:19:29#
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = True
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = '46c5c512-3d4b-4cf7-b4e7-1de080789e5d'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 9
DECLARE @IntValue Int -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Int -- Int32
SET     @BigIntValue = NULL
DECLARE @StringValue NVarChar(1) -- String
SET     @StringValue = '7'

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
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 10
DECLARE @MoneyValue VarChar(4, 2) -- AnsiString
SET     @MoneyValue = 10.77
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = #2009-09-26 09:19:29#
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = False
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = '61b2bc55-147f-4b40-93ed-a4aa83602fee'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 10
DECLARE @IntValue Int -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Int -- Int32
SET     @BigIntValue = NULL
DECLARE @StringValue NVarChar(1) -- String
SET     @StringValue = '8'

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
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 11
DECLARE @MoneyValue VarChar(4, 2) -- AnsiString
SET     @MoneyValue = 11.45
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = #2009-09-27#
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = True
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = 'd3021d18-97f0-4dc0-98d0-f0c7df4a1230'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 11
DECLARE @IntValue Int -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Int -- Int32
SET     @BigIntValue = NULL
DECLARE @StringValue NVarChar(1) -- String
SET     @StringValue = '9'

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
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 12
DECLARE @MoneyValue VarChar(4, 2) -- AnsiString
SET     @MoneyValue = 11.45
DECLARE @DateTimeValue DateTime
SET     @DateTimeValue = #2012-11-07 19:19:29#
DECLARE @DateTimeValue2 DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = True
DECLARE @GuidValue UniqueIdentifier -- Guid
SET     @GuidValue = '03021d18-97f0-4dc0-98d0-f0c7df4a1230'
DECLARE @SmallIntValue SmallInt -- Int16
SET     @SmallIntValue = 12
DECLARE @IntValue Int -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue Int -- Int32
SET     @BigIntValue = NULL
DECLARE @StringValue NVarChar(1) -- String
SET     @StringValue = '0'

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
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1
DECLARE @Value1 Int -- Int32
SET     @Value1 = 1

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2
DECLARE @Value1 Int -- Int32
SET     @Value1 = NULL

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 3
DECLARE @Value1 Int -- Int32
SET     @Value1 = 3

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 4
DECLARE @Value1 Int -- Int32
SET     @Value1 = NULL

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 5
DECLARE @Value1 Int -- Int32
SET     @Value1 = 5

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 6
DECLARE @Value1 Int -- Int32
SET     @Value1 = 6

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 7
DECLARE @Value1 Int -- Int32
SET     @Value1 = 1

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1
DECLARE @ChildID Int -- Int32
SET     @ChildID = 11

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2
DECLARE @ChildID Int -- Int32
SET     @ChildID = 21

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2
DECLARE @ChildID Int -- Int32
SET     @ChildID = 22

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 3
DECLARE @ChildID Int -- Int32
SET     @ChildID = 31

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 3
DECLARE @ChildID Int -- Int32
SET     @ChildID = 32

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 3
DECLARE @ChildID Int -- Int32
SET     @ChildID = 33

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 4
DECLARE @ChildID Int -- Int32
SET     @ChildID = 41

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 4
DECLARE @ChildID Int -- Int32
SET     @ChildID = 42

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 4
DECLARE @ChildID Int -- Int32
SET     @ChildID = 43

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 4
DECLARE @ChildID Int -- Int32
SET     @ChildID = 44

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 6
DECLARE @ChildID Int -- Int32
SET     @ChildID = 61

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 6
DECLARE @ChildID Int -- Int32
SET     @ChildID = 62

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 6
DECLARE @ChildID Int -- Int32
SET     @ChildID = 63

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 6
DECLARE @ChildID Int -- Int32
SET     @ChildID = 64

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 6
DECLARE @ChildID Int -- Int32
SET     @ChildID = 65

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 6
DECLARE @ChildID Int -- Int32
SET     @ChildID = 66

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 7
DECLARE @ChildID Int -- Int32
SET     @ChildID = 77

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1
DECLARE @ChildID Int -- Int32
SET     @ChildID = 11
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 111

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2
DECLARE @ChildID Int -- Int32
SET     @ChildID = 21
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 211

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2
DECLARE @ChildID Int -- Int32
SET     @ChildID = 21
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 212

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2
DECLARE @ChildID Int -- Int32
SET     @ChildID = 22
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 221

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2
DECLARE @ChildID Int -- Int32
SET     @ChildID = 22
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 222

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 3
DECLARE @ChildID Int -- Int32
SET     @ChildID = 31
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 311

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 3
DECLARE @ChildID Int -- Int32
SET     @ChildID = 31
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 312

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 3
DECLARE @ChildID Int -- Int32
SET     @ChildID = 31
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 313

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 3
DECLARE @ChildID Int -- Int32
SET     @ChildID = 32
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 321

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 3
DECLARE @ChildID Int -- Int32
SET     @ChildID = 32
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 322

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 3
DECLARE @ChildID Int -- Int32
SET     @ChildID = 32
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 323

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 3
DECLARE @ChildID Int -- Int32
SET     @ChildID = 33
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 331

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 3
DECLARE @ChildID Int -- Int32
SET     @ChildID = 33
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 332

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 3
DECLARE @ChildID Int -- Int32
SET     @ChildID = 33
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 333

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 4
DECLARE @ChildID Int -- Int32
SET     @ChildID = 41
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 411

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 4
DECLARE @ChildID Int -- Int32
SET     @ChildID = 41
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 412

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 4
DECLARE @ChildID Int -- Int32
SET     @ChildID = 41
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 413

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 4
DECLARE @ChildID Int -- Int32
SET     @ChildID = 41
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 414

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 4
DECLARE @ChildID Int -- Int32
SET     @ChildID = 42
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 421

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 4
DECLARE @ChildID Int -- Int32
SET     @ChildID = 42
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 422

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 4
DECLARE @ChildID Int -- Int32
SET     @ChildID = 42
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 423

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 4
DECLARE @ChildID Int -- Int32
SET     @ChildID = 42
DECLARE @GrandChildID Int -- Int32
SET     @GrandChildID = 424

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @InheritanceParentId Int -- Int32
SET     @InheritanceParentId = 1
DECLARE @TypeDiscriminator Int -- Int32
SET     @TypeDiscriminator = NULL
DECLARE @Name NVarChar -- String
SET     @Name = NULL

INSERT INTO [InheritanceParent]
(
	[InheritanceParentId],
	[TypeDiscriminator],
	[Name]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @InheritanceParentId Int -- Int32
SET     @InheritanceParentId = 2
DECLARE @TypeDiscriminator Int -- Int32
SET     @TypeDiscriminator = 1
DECLARE @Name NVarChar -- String
SET     @Name = NULL

INSERT INTO [InheritanceParent]
(
	[InheritanceParentId],
	[TypeDiscriminator],
	[Name]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @InheritanceParentId Int -- Int32
SET     @InheritanceParentId = 3
DECLARE @TypeDiscriminator Int -- Int32
SET     @TypeDiscriminator = 2
DECLARE @Name NVarChar(18) -- String
SET     @Name = 'InheritanceParent2'

INSERT INTO [InheritanceParent]
(
	[InheritanceParentId],
	[TypeDiscriminator],
	[Name]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @InheritanceChildId Int -- Int32
SET     @InheritanceChildId = 1
DECLARE @TypeDiscriminator Int -- Int32
SET     @TypeDiscriminator = NULL
DECLARE @InheritanceParentId Int -- Int32
SET     @InheritanceParentId = 1
DECLARE @Name NVarChar -- String
SET     @Name = NULL

INSERT INTO [InheritanceChild]
(
	[InheritanceChildId],
	[TypeDiscriminator],
	[InheritanceParentId],
	[Name]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @InheritanceChildId Int -- Int32
SET     @InheritanceChildId = 2
DECLARE @TypeDiscriminator Int -- Int32
SET     @TypeDiscriminator = 1
DECLARE @InheritanceParentId Int -- Int32
SET     @InheritanceParentId = 2
DECLARE @Name NVarChar -- String
SET     @Name = NULL

INSERT INTO [InheritanceChild]
(
	[InheritanceChildId],
	[TypeDiscriminator],
	[InheritanceParentId],
	[Name]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc.Data Access.Jet.Odbc AccessODBC
DECLARE @InheritanceChildId Int -- Int32
SET     @InheritanceChildId = 3
DECLARE @TypeDiscriminator Int -- Int32
SET     @TypeDiscriminator = 2
DECLARE @InheritanceParentId Int -- Int32
SET     @InheritanceParentId = 3
DECLARE @Name NVarChar(18) -- String
SET     @Name = 'InheritanceParent2'

INSERT INTO [InheritanceChild]
(
	[InheritanceChildId],
	[TypeDiscriminator],
	[InheritanceParentId],
	[Name]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
--  Access.Jet.Odbc AccessODBC
DECLARE @datetimeDataType DateTime
SET     @datetimeDataType = #2012-12-12 12:12:12#
DECLARE @binaryDataType VarBinary(4) -- Binary
SET     @binaryDataType = 0x01020304
DECLARE @varbinaryDataType VarBinary(4) -- Binary
SET     @varbinaryDataType = 0x01020305
DECLARE @imageDataType VarBinary(4) -- Binary
SET     @imageDataType = 0x03040506
DECLARE @oleobjectDataType VarBinary(4) -- Binary
SET     @oleobjectDataType = 0x05060708
DECLARE @uniqueidentifierDataType UniqueIdentifier -- Guid
SET     @uniqueidentifierDataType = '6f9619ff-8b86-d011-b42d-00c04fc964ff'


				INSERT INTO AllTypes
				(
					bitDataType, decimalDataType, smallintDataType, intDataType,tinyintDataType, moneyDataType, floatDataType, realDataType,
					datetimeDataType,
					charDataType, varcharDataType, textDataType, ncharDataType, nvarcharDataType, ntextDataType,
					binaryDataType, varbinaryDataType, imageDataType, oleobjectDataType,
					uniqueidentifierDataType
				)
				VALUES
				(
					1, 2222222, 25555, 7777777, 100, 100000, 20.31, 16.2,
					?,
					'1', '234', '567', '23233', '3323', '111',
					?, ?, ?, ?,
					?
				)

