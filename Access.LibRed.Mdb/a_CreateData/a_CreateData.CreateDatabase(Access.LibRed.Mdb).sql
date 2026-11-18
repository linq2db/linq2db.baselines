-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP Procedure AddIssue792Record

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP Procedure ThisProcedureNotVisibleFromODBC

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP Procedure Person_SelectByKey

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP Procedure Person_SelectAll

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP Procedure Person_SelectByName

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP Procedure Person_SelectListByName

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP Procedure Person_Insert

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP Procedure Person_Update

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP Procedure Person_Delete

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP Procedure Patient_SelectAll

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP Procedure Patient_SelectByName

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP Procedure Scalar_DataReader

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE Doctor

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE Patient

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE Person

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE RelationsTable

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE InheritanceParent

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE TABLE InheritanceParent
(
	InheritanceParentId Int      NOT NULL CONSTRAINT PK_InheritanceParent PRIMARY KEY,
	TypeDiscriminator   Int          NULL,
	Name                Text(50)     NULL
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE InheritanceChild

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE TABLE InheritanceChild
(
	InheritanceChildId  Int      NOT NULL CONSTRAINT PK_InheritanceChild PRIMARY KEY,
	InheritanceParentId Int      NOT NULL,
	TypeDiscriminator   Int          NULL,
	Name                Text(50)     NULL
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE TABLE Person
(
	PersonID   Int IDENTITY,
	FirstName  Text(50) NOT NULL,
	LastName   Text(50) NOT NULL,
	MiddleName Text(50),
	Gender     Text(1) NOT NULL,

	CONSTRAINT PK_Peson PRIMARY KEY (PersonID)
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE TABLE Doctor
(
	PersonID Int NOT NULL,
	Taxonomy Text(50) NOT NULL,

	CONSTRAINT PK_Doctor PRIMARY KEY (PersonID)
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE TABLE Patient
(
	PersonID  Int NOT NULL,
	Diagnosis Text(255) NOT NULL,

	CONSTRAINT PK_Patient PRIMARY KEY (PersonID)
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
ALTER TABLE Doctor
	ADD CONSTRAINT PersonDoctor FOREIGN KEY (PersonID) REFERENCES Person ON UPDATE CASCADE ON DELETE CASCADE;

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
ALTER TABLE Patient
	ADD CONSTRAINT PersonPatient FOREIGN KEY (PersonID) REFERENCES Person ON UPDATE CASCADE ON DELETE CASCADE;

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
INSERT INTO Person (FirstName, LastName, Gender) VALUES ('John',   'Pupkin',    'M')

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
INSERT INTO Person (FirstName, LastName, Gender) VALUES ('Tester', 'Testerson', 'M')

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
INSERT INTO Person (FirstName, LastName, Gender) VALUES ('Jane',   'Doe',       'F')

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
INSERT INTO Person (FirstName, LastName, MiddleName, Gender) VALUES ('Jürgen', 'König', 'Ko', 'M')

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
INSERT INTO Doctor (PersonID, Taxonomy)   VALUES (1, 'Psychiatry')

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
INSERT INTO Patient (PersonID, Diagnosis) VALUES (2, 'Hallucination with Paranoid Bugs'' Delirium of Persecution')

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE Parent

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE Child

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE GrandChild

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE TABLE Parent     (ParentID int, Value1 int NULL)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE TABLE Child      (ParentID int, ChildID int)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE TABLE GrandChild (ParentID int, ChildID int, GrandChildID int)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE Procedure Person_SelectByKey(
	[@id] Long)
AS
	SELECT * FROM Person WHERE PersonID = [@id];

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE Procedure Person_SelectAll
AS
	SELECT * FROM Person;

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE Procedure Person_Delete(
	[@PersonID] Long)
AS
DELETE FROM Person WHERE PersonID = [@PersonID];

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE Procedure Patient_SelectAll
AS
SELECT
	Person.*, Patient.Diagnosis
FROM
	Patient, Person
WHERE
	Patient.PersonID = Person.PersonID;

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE Procedure Scalar_DataReader
AS
	SELECT 12345 AS intField, '54321' AS stringField;

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE LinqDataTypes

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE TestIdentity

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE TABLE TestIdentity
(
	ID Int IDENTITY,
	CONSTRAINT PK_TestIdentity PRIMARY KEY (ID)
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE AllTypes

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
INSERT INTO AllTypes (binaryDataType)
VALUES (NULL)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE TestMerge1

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE TestMerge2

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE Procedure AddIssue792Record(@id INT)
AS
	INSERT INTO AllTypes(char20DataType) VALUES('issue792');

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE Procedure ThisProcedureNotVisibleFromODBC
AS
	INSERT INTO AllTypes(char20DataType) VALUES('issue792');

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE INDEX PK_RelationsTable ON RelationsTable(ID1, ID2) WITH PRIMARY;

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE INDEX IX_Index ON RelationsTable(Int1, IntN1);

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE UNIQUE INDEX UX_Index1 ON RelationsTable(Int1);

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE UNIQUE INDEX UX_Index2 ON RelationsTable(IntN1);

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
ALTER TABLE RelationsTable ADD CONSTRAINT FK_Nullable FOREIGN KEY (IntN1, IntN2) REFERENCES RelationsTable(ID1, ID2);

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
ALTER TABLE RelationsTable ADD CONSTRAINT FK_NotNullable FOREIGN KEY (Int1, Int2) REFERENCES RelationsTable(ID1, ID2);

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE CollatedTable

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE TABLE CollatedTable
(
	Id				INT NOT NULL,
	CaseSensitive	NVARCHAR(20) NOT NULL,
	CaseInsensitive	NVARCHAR(20) NOT NULL
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 1.11
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = #2001-01-11 01:11:21#
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = True
DECLARE @GuidValue  -- Guid
SET     @GuidValue = {guid {ef129165-6ffe-4df9-bb6b-bb16e413c883}}
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 1
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int64
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
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 2
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 2.49
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = #2005-05-15 05:15:25#
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = False
DECLARE @GuidValue  -- Guid
SET     @GuidValue = {guid {bc663a61-7b40-4681-ac38-f9aaf55b706b}}
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 2
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int64
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
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 3
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 3.99
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = #2009-09-19 09:19:29#
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = True
DECLARE @GuidValue  -- Guid
SET     @GuidValue = {guid {d2f970c0-35ac-4987-9cd5-5badb1757436}}
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 3
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int64
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
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 4
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 4.50
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = #2009-09-20 09:19:29#
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = False
DECLARE @GuidValue  -- Guid
SET     @GuidValue = {guid {40932fdb-1543-4e4a-ac2c-ca371604fb4b}}
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 4
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int64
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
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 5
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 5.50
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = #2009-09-20 09:19:29#
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = True
DECLARE @GuidValue  -- Guid
SET     @GuidValue = {guid {febe3eca-cb5f-40b2-ad39-2979d312afca}}
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 5
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int64
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
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 6
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 6.55
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = #2009-09-22 09:19:29#
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = False
DECLARE @GuidValue  -- Guid
SET     @GuidValue = {guid {8d3c5d1d-47db-4730-9fe7-968f6228a4c0}}
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 6
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int64
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
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 7
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 7.00
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = #2009-09-23 09:19:29#
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = True
DECLARE @GuidValue  -- Guid
SET     @GuidValue = {guid {48094115-83af-46dd-a906-bff26ee21ee2}}
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 7
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int64
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
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 8
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 8.99
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = #2009-09-24 09:19:29#
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = False
DECLARE @GuidValue  -- Guid
SET     @GuidValue = {guid {c1139f1f-1335-4cd4-937e-92602f732dd3}}
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 8
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int64
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
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 9
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 9.63
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = #2009-09-25 09:19:29#
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = True
DECLARE @GuidValue  -- Guid
SET     @GuidValue = {guid {46c5c512-3d4b-4cf7-b4e7-1de080789e5d}}
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 9
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int64
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
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 10
DECLARE @MoneyValue Decimal(4, 2)
SET     @MoneyValue = 10.77
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = #2009-09-26 09:19:29#
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = False
DECLARE @GuidValue  -- Guid
SET     @GuidValue = {guid {61b2bc55-147f-4b40-93ed-a4aa83602fee}}
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 10
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int64
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
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 11
DECLARE @MoneyValue Decimal(4, 2)
SET     @MoneyValue = 11.45
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = #2009-09-27#
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = True
DECLARE @GuidValue  -- Guid
SET     @GuidValue = {guid {d3021d18-97f0-4dc0-98d0-f0c7df4a1230}}
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 11
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int64
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
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 12
DECLARE @MoneyValue Decimal(4, 2)
SET     @MoneyValue = 11.45
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = #2012-11-07 19:19:29#
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = True
DECLARE @GuidValue  -- Guid
SET     @GuidValue = {guid {03021d18-97f0-4dc0-98d0-f0c7df4a1230}}
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 12
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int64
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
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 1
DECLARE @Value1  -- Int32
SET     @Value1 = 1

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	@Value1
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 2
DECLARE @Value1  -- Int32
SET     @Value1 = NULL

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	@Value1
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 3
DECLARE @Value1  -- Int32
SET     @Value1 = 3

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	@Value1
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 4
DECLARE @Value1  -- Int32
SET     @Value1 = NULL

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	@Value1
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 5
DECLARE @Value1  -- Int32
SET     @Value1 = 5

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	@Value1
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 6
DECLARE @Value1  -- Int32
SET     @Value1 = 6

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	@Value1
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 7
DECLARE @Value1  -- Int32
SET     @Value1 = 1

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	@Value1
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 1
DECLARE @ChildID  -- Int32
SET     @ChildID = 11

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 2
DECLARE @ChildID  -- Int32
SET     @ChildID = 21

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 2
DECLARE @ChildID  -- Int32
SET     @ChildID = 22

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 3
DECLARE @ChildID  -- Int32
SET     @ChildID = 31

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 3
DECLARE @ChildID  -- Int32
SET     @ChildID = 32

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 3
DECLARE @ChildID  -- Int32
SET     @ChildID = 33

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 4
DECLARE @ChildID  -- Int32
SET     @ChildID = 41

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 4
DECLARE @ChildID  -- Int32
SET     @ChildID = 42

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 4
DECLARE @ChildID  -- Int32
SET     @ChildID = 43

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 4
DECLARE @ChildID  -- Int32
SET     @ChildID = 44

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 6
DECLARE @ChildID  -- Int32
SET     @ChildID = 61

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 6
DECLARE @ChildID  -- Int32
SET     @ChildID = 62

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 6
DECLARE @ChildID  -- Int32
SET     @ChildID = 63

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 6
DECLARE @ChildID  -- Int32
SET     @ChildID = 64

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 6
DECLARE @ChildID  -- Int32
SET     @ChildID = 65

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 6
DECLARE @ChildID  -- Int32
SET     @ChildID = 66

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 7
DECLARE @ChildID  -- Int32
SET     @ChildID = 77

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 1
DECLARE @ChildID  -- Int32
SET     @ChildID = 11
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 111

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 2
DECLARE @ChildID  -- Int32
SET     @ChildID = 21
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 211

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 2
DECLARE @ChildID  -- Int32
SET     @ChildID = 21
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 212

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 2
DECLARE @ChildID  -- Int32
SET     @ChildID = 22
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 221

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 2
DECLARE @ChildID  -- Int32
SET     @ChildID = 22
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 222

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 3
DECLARE @ChildID  -- Int32
SET     @ChildID = 31
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 311

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 3
DECLARE @ChildID  -- Int32
SET     @ChildID = 31
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 312

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 3
DECLARE @ChildID  -- Int32
SET     @ChildID = 31
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 313

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 3
DECLARE @ChildID  -- Int32
SET     @ChildID = 32
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 321

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 3
DECLARE @ChildID  -- Int32
SET     @ChildID = 32
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 322

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 3
DECLARE @ChildID  -- Int32
SET     @ChildID = 32
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 323

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 3
DECLARE @ChildID  -- Int32
SET     @ChildID = 33
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 331

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 3
DECLARE @ChildID  -- Int32
SET     @ChildID = 33
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 332

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 3
DECLARE @ChildID  -- Int32
SET     @ChildID = 33
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 333

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 4
DECLARE @ChildID  -- Int32
SET     @ChildID = 41
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 411

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 4
DECLARE @ChildID  -- Int32
SET     @ChildID = 41
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 412

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 4
DECLARE @ChildID  -- Int32
SET     @ChildID = 41
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 413

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 4
DECLARE @ChildID  -- Int32
SET     @ChildID = 41
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 414

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 4
DECLARE @ChildID  -- Int32
SET     @ChildID = 42
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 421

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 4
DECLARE @ChildID  -- Int32
SET     @ChildID = 42
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 422

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 4
DECLARE @ChildID  -- Int32
SET     @ChildID = 42
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 423

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 4
DECLARE @ChildID  -- Int32
SET     @ChildID = 42
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 424

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @InheritanceParentId  -- Int32
SET     @InheritanceParentId = 1
DECLARE @TypeDiscriminator  -- Int32
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
	@InheritanceParentId,
	@TypeDiscriminator,
	@Name
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @InheritanceParentId  -- Int32
SET     @InheritanceParentId = 2
DECLARE @TypeDiscriminator  -- Int32
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
	@InheritanceParentId,
	@TypeDiscriminator,
	@Name
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @InheritanceParentId  -- Int32
SET     @InheritanceParentId = 3
DECLARE @TypeDiscriminator  -- Int32
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
	@InheritanceParentId,
	@TypeDiscriminator,
	@Name
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @InheritanceChildId  -- Int32
SET     @InheritanceChildId = 1
DECLARE @TypeDiscriminator  -- Int32
SET     @TypeDiscriminator = NULL
DECLARE @InheritanceParentId  -- Int32
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
	@InheritanceChildId,
	@TypeDiscriminator,
	@InheritanceParentId,
	@Name
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @InheritanceChildId  -- Int32
SET     @InheritanceChildId = 2
DECLARE @TypeDiscriminator  -- Int32
SET     @TypeDiscriminator = 1
DECLARE @InheritanceParentId  -- Int32
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
	@InheritanceChildId,
	@TypeDiscriminator,
	@InheritanceParentId,
	@Name
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @InheritanceChildId  -- Int32
SET     @InheritanceChildId = 3
DECLARE @TypeDiscriminator  -- Int32
SET     @TypeDiscriminator = 2
DECLARE @InheritanceParentId  -- Int32
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
	@InheritanceChildId,
	@TypeDiscriminator,
	@InheritanceParentId,
	@Name
)

-- Access.LibRed AccessLibRed
DECLARE @datetimeDataType  -- DateTime
SET     @datetimeDataType = #2012-12-12 12:12:12#
DECLARE @binaryDataType Binary(4)
SET     @binaryDataType = 0x01020304
DECLARE @varbinaryDataType Binary(4)
SET     @varbinaryDataType = 0x01020305
DECLARE @imageDataType Binary(4)
SET     @imageDataType = 0x03040506
DECLARE @oleobjectDataType Binary(4)
SET     @oleobjectDataType = 0x05060708
DECLARE @uniqueidentifierDataType  -- Guid
SET     @uniqueidentifierDataType = {guid {6f9619ff-8b86-d011-b42d-00c04fc964ff}}


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
					@datetimeDataType,
					'1', '234', '567', '23233', '3323', '111',
					@binaryDataType, @varbinaryDataType, @imageDataType, @oleobjectDataType,
					@uniqueidentifierDataType
				)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DROP Procedure AddIssue792Record

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DROP Procedure ThisProcedureNotVisibleFromODBC

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DROP Procedure Person_SelectByKey

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DROP Procedure Person_SelectAll

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DROP Procedure Person_SelectByName

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DROP Procedure Person_SelectListByName

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DROP Procedure Person_Insert

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DROP Procedure Person_Update

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DROP Procedure Person_Delete

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DROP Procedure Patient_SelectAll

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DROP Procedure Patient_SelectByName

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DROP Procedure Scalar_DataReader

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DROP TABLE Doctor

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DROP TABLE Patient

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DROP TABLE Person

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DROP TABLE RelationsTable

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DROP TABLE InheritanceParent

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
CREATE TABLE InheritanceParent
(
	InheritanceParentId Int      NOT NULL CONSTRAINT PK_InheritanceParent PRIMARY KEY,
	TypeDiscriminator   Int          NULL,
	Name                Text(50)     NULL
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DROP TABLE InheritanceChild

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
CREATE TABLE InheritanceChild
(
	InheritanceChildId  Int      NOT NULL CONSTRAINT PK_InheritanceChild PRIMARY KEY,
	InheritanceParentId Int      NOT NULL,
	TypeDiscriminator   Int          NULL,
	Name                Text(50)     NULL
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
CREATE TABLE Person
(
	PersonID   Int IDENTITY,
	FirstName  Text(50) NOT NULL,
	LastName   Text(50) NOT NULL,
	MiddleName Text(50),
	Gender     Text(1) NOT NULL,

	CONSTRAINT PK_Peson PRIMARY KEY (PersonID)
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
CREATE TABLE Doctor
(
	PersonID Int NOT NULL,
	Taxonomy Text(50) NOT NULL,

	CONSTRAINT PK_Doctor PRIMARY KEY (PersonID)
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
CREATE TABLE Patient
(
	PersonID  Int NOT NULL,
	Diagnosis Text(255) NOT NULL,

	CONSTRAINT PK_Patient PRIMARY KEY (PersonID)
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
ALTER TABLE Doctor
	ADD CONSTRAINT PersonDoctor FOREIGN KEY (PersonID) REFERENCES Person ON UPDATE CASCADE ON DELETE CASCADE;

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
ALTER TABLE Patient
	ADD CONSTRAINT PersonPatient FOREIGN KEY (PersonID) REFERENCES Person ON UPDATE CASCADE ON DELETE CASCADE;

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
INSERT INTO Person (FirstName, LastName, Gender) VALUES ('John',   'Pupkin',    'M')

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
INSERT INTO Person (FirstName, LastName, Gender) VALUES ('Tester', 'Testerson', 'M')

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
INSERT INTO Person (FirstName, LastName, Gender) VALUES ('Jane',   'Doe',       'F')

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
INSERT INTO Person (FirstName, LastName, MiddleName, Gender) VALUES ('Jürgen', 'König', 'Ko', 'M')

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
INSERT INTO Doctor (PersonID, Taxonomy)   VALUES (1, 'Psychiatry')

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
INSERT INTO Patient (PersonID, Diagnosis) VALUES (2, 'Hallucination with Paranoid Bugs'' Delirium of Persecution')

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DROP TABLE Parent

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DROP TABLE Child

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DROP TABLE GrandChild

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
CREATE TABLE Parent     (ParentID int, Value1 int NULL)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
CREATE TABLE Child      (ParentID int, ChildID int)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
CREATE TABLE GrandChild (ParentID int, ChildID int, GrandChildID int)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
CREATE Procedure Person_SelectByKey(
	[@id] Long)
AS
	SELECT * FROM Person WHERE PersonID = [@id];

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
CREATE Procedure Person_SelectAll
AS
	SELECT * FROM Person;

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
CREATE Procedure Person_Delete(
	[@PersonID] Long)
AS
DELETE FROM Person WHERE PersonID = [@PersonID];

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
CREATE Procedure Patient_SelectAll
AS
SELECT
	Person.*, Patient.Diagnosis
FROM
	Patient, Person
WHERE
	Patient.PersonID = Person.PersonID;

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
CREATE Procedure Scalar_DataReader
AS
	SELECT 12345 AS intField, '54321' AS stringField;

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DROP TABLE LinqDataTypes

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DROP TABLE TestIdentity

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
CREATE TABLE TestIdentity
(
	ID Int IDENTITY,
	CONSTRAINT PK_TestIdentity PRIMARY KEY (ID)
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DROP TABLE AllTypes

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
INSERT INTO AllTypes (binaryDataType)
VALUES (NULL)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DROP TABLE TestMerge1

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DROP TABLE TestMerge2

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
CREATE Procedure AddIssue792Record(@id INT)
AS
	INSERT INTO AllTypes(char20DataType) VALUES('issue792');

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
CREATE Procedure ThisProcedureNotVisibleFromODBC
AS
	INSERT INTO AllTypes(char20DataType) VALUES('issue792');

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
CREATE INDEX PK_RelationsTable ON RelationsTable(ID1, ID2) WITH PRIMARY;

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
CREATE INDEX IX_Index ON RelationsTable(Int1, IntN1);

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
CREATE UNIQUE INDEX UX_Index1 ON RelationsTable(Int1);

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
CREATE UNIQUE INDEX UX_Index2 ON RelationsTable(IntN1);

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
ALTER TABLE RelationsTable ADD CONSTRAINT FK_Nullable FOREIGN KEY (IntN1, IntN2) REFERENCES RelationsTable(ID1, ID2);

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
ALTER TABLE RelationsTable ADD CONSTRAINT FK_NotNullable FOREIGN KEY (Int1, Int2) REFERENCES RelationsTable(ID1, ID2);

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DROP TABLE CollatedTable

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
CREATE TABLE CollatedTable
(
	Id				INT NOT NULL,
	CaseSensitive	NVARCHAR(20) NOT NULL,
	CaseInsensitive	NVARCHAR(20) NOT NULL
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 1.11
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = #2001-01-11 01:11:21#
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = True
DECLARE @GuidValue  -- Guid
SET     @GuidValue = {guid {ef129165-6ffe-4df9-bb6b-bb16e413c883}}
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 1
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int64
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
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 2
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 2.49
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = #2005-05-15 05:15:25#
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = False
DECLARE @GuidValue  -- Guid
SET     @GuidValue = {guid {bc663a61-7b40-4681-ac38-f9aaf55b706b}}
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 2
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int64
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
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 3
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 3.99
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = #2009-09-19 09:19:29#
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = True
DECLARE @GuidValue  -- Guid
SET     @GuidValue = {guid {d2f970c0-35ac-4987-9cd5-5badb1757436}}
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 3
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int64
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
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 4
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 4.50
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = #2009-09-20 09:19:29#
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = False
DECLARE @GuidValue  -- Guid
SET     @GuidValue = {guid {40932fdb-1543-4e4a-ac2c-ca371604fb4b}}
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 4
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int64
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
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 5
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 5.50
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = #2009-09-20 09:19:29#
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = True
DECLARE @GuidValue  -- Guid
SET     @GuidValue = {guid {febe3eca-cb5f-40b2-ad39-2979d312afca}}
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 5
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int64
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
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 6
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 6.55
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = #2009-09-22 09:19:29#
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = False
DECLARE @GuidValue  -- Guid
SET     @GuidValue = {guid {8d3c5d1d-47db-4730-9fe7-968f6228a4c0}}
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 6
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int64
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
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 7
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 7.00
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = #2009-09-23 09:19:29#
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = True
DECLARE @GuidValue  -- Guid
SET     @GuidValue = {guid {48094115-83af-46dd-a906-bff26ee21ee2}}
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 7
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int64
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
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 8
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 8.99
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = #2009-09-24 09:19:29#
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = False
DECLARE @GuidValue  -- Guid
SET     @GuidValue = {guid {c1139f1f-1335-4cd4-937e-92602f732dd3}}
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 8
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int64
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
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 9
DECLARE @MoneyValue Decimal(3, 2)
SET     @MoneyValue = 9.63
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = #2009-09-25 09:19:29#
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = True
DECLARE @GuidValue  -- Guid
SET     @GuidValue = {guid {46c5c512-3d4b-4cf7-b4e7-1de080789e5d}}
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 9
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int64
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
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 10
DECLARE @MoneyValue Decimal(4, 2)
SET     @MoneyValue = 10.77
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = #2009-09-26 09:19:29#
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = False
DECLARE @GuidValue  -- Guid
SET     @GuidValue = {guid {61b2bc55-147f-4b40-93ed-a4aa83602fee}}
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 10
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int64
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
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 11
DECLARE @MoneyValue Decimal(4, 2)
SET     @MoneyValue = 11.45
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = #2009-09-27#
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = True
DECLARE @GuidValue  -- Guid
SET     @GuidValue = {guid {d3021d18-97f0-4dc0-98d0-f0c7df4a1230}}
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 11
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int64
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
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 12
DECLARE @MoneyValue Decimal(4, 2)
SET     @MoneyValue = 11.45
DECLARE @DateTimeValue  -- DateTime
SET     @DateTimeValue = #2012-11-07 19:19:29#
DECLARE @DateTimeValue2  -- DateTime
SET     @DateTimeValue2 = NULL
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = True
DECLARE @GuidValue  -- Guid
SET     @GuidValue = {guid {03021d18-97f0-4dc0-98d0-f0c7df4a1230}}
DECLARE @SmallIntValue  -- Int16
SET     @SmallIntValue = 12
DECLARE @IntValue  -- Int32
SET     @IntValue = NULL
DECLARE @BigIntValue  -- Int64
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
	@ID,
	@MoneyValue,
	@DateTimeValue,
	@DateTimeValue2,
	@BoolValue,
	@GuidValue,
	@SmallIntValue,
	@IntValue,
	@BigIntValue,
	@StringValue
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 1
DECLARE @Value1  -- Int32
SET     @Value1 = 1

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	@Value1
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 2
DECLARE @Value1  -- Int32
SET     @Value1 = NULL

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	@Value1
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 3
DECLARE @Value1  -- Int32
SET     @Value1 = 3

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	@Value1
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 4
DECLARE @Value1  -- Int32
SET     @Value1 = NULL

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	@Value1
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 5
DECLARE @Value1  -- Int32
SET     @Value1 = 5

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	@Value1
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 6
DECLARE @Value1  -- Int32
SET     @Value1 = 6

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	@Value1
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 7
DECLARE @Value1  -- Int32
SET     @Value1 = 1

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	@Value1
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 1
DECLARE @ChildID  -- Int32
SET     @ChildID = 11

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 2
DECLARE @ChildID  -- Int32
SET     @ChildID = 21

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 2
DECLARE @ChildID  -- Int32
SET     @ChildID = 22

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 3
DECLARE @ChildID  -- Int32
SET     @ChildID = 31

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 3
DECLARE @ChildID  -- Int32
SET     @ChildID = 32

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 3
DECLARE @ChildID  -- Int32
SET     @ChildID = 33

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 4
DECLARE @ChildID  -- Int32
SET     @ChildID = 41

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 4
DECLARE @ChildID  -- Int32
SET     @ChildID = 42

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 4
DECLARE @ChildID  -- Int32
SET     @ChildID = 43

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 4
DECLARE @ChildID  -- Int32
SET     @ChildID = 44

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 6
DECLARE @ChildID  -- Int32
SET     @ChildID = 61

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 6
DECLARE @ChildID  -- Int32
SET     @ChildID = 62

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 6
DECLARE @ChildID  -- Int32
SET     @ChildID = 63

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 6
DECLARE @ChildID  -- Int32
SET     @ChildID = 64

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 6
DECLARE @ChildID  -- Int32
SET     @ChildID = 65

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 6
DECLARE @ChildID  -- Int32
SET     @ChildID = 66

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 7
DECLARE @ChildID  -- Int32
SET     @ChildID = 77

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 1
DECLARE @ChildID  -- Int32
SET     @ChildID = 11
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 111

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 2
DECLARE @ChildID  -- Int32
SET     @ChildID = 21
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 211

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 2
DECLARE @ChildID  -- Int32
SET     @ChildID = 21
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 212

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 2
DECLARE @ChildID  -- Int32
SET     @ChildID = 22
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 221

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 2
DECLARE @ChildID  -- Int32
SET     @ChildID = 22
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 222

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 3
DECLARE @ChildID  -- Int32
SET     @ChildID = 31
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 311

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 3
DECLARE @ChildID  -- Int32
SET     @ChildID = 31
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 312

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 3
DECLARE @ChildID  -- Int32
SET     @ChildID = 31
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 313

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 3
DECLARE @ChildID  -- Int32
SET     @ChildID = 32
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 321

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 3
DECLARE @ChildID  -- Int32
SET     @ChildID = 32
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 322

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 3
DECLARE @ChildID  -- Int32
SET     @ChildID = 32
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 323

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 3
DECLARE @ChildID  -- Int32
SET     @ChildID = 33
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 331

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 3
DECLARE @ChildID  -- Int32
SET     @ChildID = 33
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 332

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 3
DECLARE @ChildID  -- Int32
SET     @ChildID = 33
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 333

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 4
DECLARE @ChildID  -- Int32
SET     @ChildID = 41
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 411

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 4
DECLARE @ChildID  -- Int32
SET     @ChildID = 41
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 412

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 4
DECLARE @ChildID  -- Int32
SET     @ChildID = 41
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 413

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 4
DECLARE @ChildID  -- Int32
SET     @ChildID = 41
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 414

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 4
DECLARE @ChildID  -- Int32
SET     @ChildID = 42
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 421

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 4
DECLARE @ChildID  -- Int32
SET     @ChildID = 42
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 422

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 4
DECLARE @ChildID  -- Int32
SET     @ChildID = 42
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 423

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 4
DECLARE @ChildID  -- Int32
SET     @ChildID = 42
DECLARE @GrandChildID  -- Int32
SET     @GrandChildID = 424

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	@ParentID,
	@ChildID,
	@GrandChildID
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @InheritanceParentId  -- Int32
SET     @InheritanceParentId = 1
DECLARE @TypeDiscriminator  -- Int32
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
	@InheritanceParentId,
	@TypeDiscriminator,
	@Name
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @InheritanceParentId  -- Int32
SET     @InheritanceParentId = 2
DECLARE @TypeDiscriminator  -- Int32
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
	@InheritanceParentId,
	@TypeDiscriminator,
	@Name
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @InheritanceParentId  -- Int32
SET     @InheritanceParentId = 3
DECLARE @TypeDiscriminator  -- Int32
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
	@InheritanceParentId,
	@TypeDiscriminator,
	@Name
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @InheritanceChildId  -- Int32
SET     @InheritanceChildId = 1
DECLARE @TypeDiscriminator  -- Int32
SET     @TypeDiscriminator = NULL
DECLARE @InheritanceParentId  -- Int32
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
	@InheritanceChildId,
	@TypeDiscriminator,
	@InheritanceParentId,
	@Name
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @InheritanceChildId  -- Int32
SET     @InheritanceChildId = 2
DECLARE @TypeDiscriminator  -- Int32
SET     @TypeDiscriminator = 1
DECLARE @InheritanceParentId  -- Int32
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
	@InheritanceChildId,
	@TypeDiscriminator,
	@InheritanceParentId,
	@Name
)

-- Access.LibRed.Mdb.Data Access.LibRed AccessLibRed
DECLARE @InheritanceChildId  -- Int32
SET     @InheritanceChildId = 3
DECLARE @TypeDiscriminator  -- Int32
SET     @TypeDiscriminator = 2
DECLARE @InheritanceParentId  -- Int32
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
	@InheritanceChildId,
	@TypeDiscriminator,
	@InheritanceParentId,
	@Name
)

-- Access.LibRed AccessLibRed
DECLARE @datetimeDataType  -- DateTime
SET     @datetimeDataType = #2012-12-12 12:12:12#
DECLARE @binaryDataType Binary(4)
SET     @binaryDataType = 0x01020304
DECLARE @varbinaryDataType Binary(4)
SET     @varbinaryDataType = 0x01020305
DECLARE @imageDataType Binary(4)
SET     @imageDataType = 0x03040506
DECLARE @oleobjectDataType Binary(4)
SET     @oleobjectDataType = 0x05060708
DECLARE @uniqueidentifierDataType  -- Guid
SET     @uniqueidentifierDataType = {guid {6f9619ff-8b86-d011-b42d-00c04fc964ff}}


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
					@datetimeDataType,
					'1', '234', '567', '23233', '3323', '111',
					@binaryDataType, @varbinaryDataType, @imageDataType, @oleobjectDataType,
					@uniqueidentifierDataType
				)

