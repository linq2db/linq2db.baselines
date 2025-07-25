﻿BeforeExecute
-- SQLite.MS SQLite

--
-- Helper table
--
DROP TABLE IF EXISTS Dual;
CREATE TABLE Dual (Dummy  VARCHAR(10));
INSERT INTO  Dual (Dummy) VALUES ('X');

DROP TABLE IF EXISTS InheritanceParent;
CREATE TABLE InheritanceParent
(
	InheritanceParentId integer      NOT NULL CONSTRAINT PK_InheritanceParent,
	TypeDiscriminator   integer          NULL,
	Name                nvarchar(50)     NULL
);

DROP TABLE IF EXISTS InheritanceChild;
CREATE TABLE InheritanceChild
(
	InheritanceChildId  integer      NOT NULL CONSTRAINT PK_InheritanceChild,
	InheritanceParentId integer      NOT NULL,
	TypeDiscriminator   integer          NULL,
	Name                nvarchar(50)     NULL
);

--
-- Person Table
--
DROP TABLE IF EXISTS Doctor;
DROP TABLE IF EXISTS Patient;
DROP TABLE IF EXISTS Person;
CREATE TABLE Person
(
	PersonID   integer      NOT NULL CONSTRAINT PK_Person PRIMARY KEY AUTOINCREMENT,
	FirstName  nvarchar(50) NOT NULL,
	LastName   nvarchar(50) NOT NULL,
	MiddleName nvarchar(50)     NULL,
	Gender     char(1)      NOT NULL CONSTRAINT CK_Person_Gender CHECK (Gender in ('M', 'F', 'U', 'O'))
);

INSERT INTO Person (FirstName, LastName, Gender) VALUES ('John',   'Pupkin',    'M');
INSERT INTO Person (FirstName, LastName, Gender) VALUES ('Tester', 'Testerson', 'M');
INSERT INTO Person (FirstName, LastName, Gender) VALUES ('Jane',   'Doe',       'F');
INSERT INTO Person (FirstName, LastName, MiddleName, Gender) VALUES ('Jürgen', 'König', 'Ko', 'M');

CREATE INDEX IX_PersonAsc  ON Person(PersonID ASC);
CREATE INDEX IX_PersonDesc ON Person(PersonID DESC);

--
-- Doctor Table Extension
--
CREATE TABLE Doctor
(
	PersonID integer      NOT NULL CONSTRAINT PK_Doctor PRIMARY KEY,
	Taxonomy nvarchar(50) NOT NULL,
	CONSTRAINT FK_Doctor_Person FOREIGN KEY(PersonID) REFERENCES Person(PersonID)
);

INSERT INTO Doctor (PersonID, Taxonomy) VALUES (1, 'Psychiatry');

--
-- Patient Table Extension
--
CREATE TABLE Patient
(
	PersonID  integer       NOT NULL CONSTRAINT PK_Patient PRIMARY KEY,
	Diagnosis nvarchar(256) NOT NULL,

	CONSTRAINT FK_Patient_Person FOREIGN KEY(PersonID) REFERENCES Person(PersonID)
);
INSERT INTO Patient (PersonID, Diagnosis) VALUES (2, 'Hallucination with Paranoid Bugs'' Delirium of Persecution');

--
-- Babylon test
--
DROP TABLE IF EXISTS Parent;
DROP TABLE IF EXISTS Child;
DROP TABLE IF EXISTS GrandChild;

CREATE TABLE Parent      (ParentID int, Value1 int);
CREATE TABLE Child       (ParentID int, ChildID int);
CREATE TABLE GrandChild  (ParentID int, ChildID int, GrandChildID int);

DROP TABLE IF EXISTS LinqDataTypes;
CREATE TABLE LinqDataTypes
(
	ID             int,
	MoneyValue     decimal(10,4),
	DateTimeValue  datetime,
	DateTimeValue2 datetime2,
	BoolValue      boolean,
	GuidValue      uniqueidentifier,
	BinaryValue    binary(5000) NULL,
	SmallIntValue  smallint,
	IntValue       int          NULL,
	BigIntValue    bigint       NULL,
	StringValue    nvarchar(50) NULL
);


DROP TABLE IF EXISTS TestIdentity

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE TestIdentity (
	ID integer NOT NULL CONSTRAINT PK_TestIdentity PRIMARY KEY AUTOINCREMENT
)

BeforeExecute
-- SQLite.MS SQLite

DROP VIEW IF EXISTS AllTypesView

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS AllTypes

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE AllTypes
(
	ID                       integer          NOT NULL CONSTRAINT PK_AllTypes PRIMARY KEY AUTOINCREMENT,

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

	charDataType             char(1)          NULL,
	char20DataType           char(20)         NULL,
	varcharDataType          varchar(20)      NULL,
	textDataType             text             NULL,
	ncharDataType            nchar(20)        NULL,
	nvarcharDataType         nvarchar(20)     NULL,
	ntextDataType            ntext            NULL,

	binaryDataType           binary           NULL,
	varbinaryDataType        varbinary        NULL,
	imageDataType            image            NULL,

	uniqueidentifierDataType uniqueidentifier NULL,
	objectDataType           Object           NULL
)

BeforeExecute
-- SQLite.MS SQLite

CREATE VIEW AllTypesView
AS
SELECT
	*,
	ROW_NUMBER () OVER () AS Number
FROM AllTypes

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO AllTypes
(
	bigintDataType, numericDataType, bitDataType, smallintDataType, decimalDataType,
	intDataType, tinyintDataType, moneyDataType, floatDataType, realDataType,
	datetimeDataType,
	charDataType, varcharDataType, textDataType, ncharDataType, nvarcharDataType, ntextDataType,
	objectDataType
)
SELECT
		 NULL,      NULL,  NULL,    NULL,    NULL,   NULL,  NULL,   NULL,  NULL, NULL,
		 NULL,
		 NULL,      NULL,  NULL,    NULL,    NULL,   NULL,
		 NULL
UNION ALL
SELECT
	 1000000,    9999999,     1,   25555, 2222222, 7777777,  100, 100000, 20.31, 16.2,
	'2012-12-12 12:12:12',
		  '1',     '234', '567', '23233',  '3323',  '111',
		   10

BeforeExecute
-- SQLite.MS SQLite

--
-- Demonstration Tables for Issue #784
--

-- Parent table
DROP TABLE IF EXISTS PrimaryKeyTable

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE PrimaryKeyTable
(
	ID           integer      NOT NULL PRIMARY KEY,
	Name         nvarchar(50) NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

-- Child table
DROP TABLE IF EXISTS ForeignKeyTable

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE ForeignKeyTable
(
	PrimaryKeyTableID integer      NOT NULL,
	Name              nvarchar(50) NOT NULL,
	-- Test: the foreign key targets the parent table without a column
	-- reference.  This should automatically match against the primary key
	-- of the target table.
	CONSTRAINT FK_ForeignKeyTable_PrimaryKeyTable FOREIGN KEY(PrimaryKeyTableID) REFERENCES PrimaryKeyTable ON DELETE CASCADE
)

BeforeExecute
-- SQLite.MS SQLite

-- Second-level child table, alternate semantics
DROP TABLE IF EXISTS FKTestPosition

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE FKTestPosition
(
	Company      integer      NOT NULL,
	Department   integer      NOT NULL,
	PositionID   integer      NOT NULL,
	Name         nvarchar(50) NOT NULL,
	PRIMARY KEY(Company, Department, PositionID),
	-- Test: one level deeper, this should link to both fields in the
	-- primary key of the FKTestDepartment table
	CONSTRAINT FK_Position_Department FOREIGN KEY(Company, Department) REFERENCES FKTestDepartment ON DELETE CASCADE
	-- A simpler foreign key for the above would be:
	--    FOREIGN KEY(Department) REFERENCES FKTestDepartment(DepartmentID) ON DELETE CASCADE
)

BeforeExecute
-- SQLite.MS SQLite

-- merge test tables
DROP TABLE IF EXISTS TestMerge1;
DROP TABLE IF EXISTS TestMerge2;
CREATE TABLE TestMerge1
(
	Id              INTEGER       NOT NULL CONSTRAINT PK_TestMerge1,
	Field1          INTEGER           NULL,
	Field2          INTEGER           NULL,
	Field3          INTEGER           NULL,
	Field4          INTEGER           NULL,
	Field5          INTEGER           NULL,

	FieldInt64      BIGINT            NULL,
	FieldBoolean    BIT               NULL,
	FieldString     VARCHAR(20)       NULL,
	FieldNString    NVARCHAR(20)      NULL,
	FieldChar       CHAR(1)           NULL,
	FieldNChar      NCHAR(1)          NULL,
	FieldFloat      FLOAT(24)         NULL,
	FieldDouble     FLOAT(53)         NULL,
	FieldDateTime   DATETIME          NULL,
	FieldBinary     VARBINARY(20)     NULL,
	FieldGuid       UNIQUEIDENTIFIER  NULL,
	FieldDate       DATE              NULL,
	FieldEnumString VARCHAR(20)       NULL,
	FieldEnumNumber INT               NULL
);
CREATE TABLE TestMerge2
(
	Id              INTEGER       NOT NULL CONSTRAINT PK_TestMerge2,
	Field1          INTEGER           NULL,
	Field2          INTEGER           NULL,
	Field3          INTEGER           NULL,
	Field4          INTEGER           NULL,
	Field5          INTEGER           NULL,

	FieldInt64      BIGINT            NULL,
	FieldBoolean    BIT               NULL,
	FieldString     VARCHAR(20)       NULL,
	FieldNString    NVARCHAR(20)      NULL,
	FieldChar       CHAR(1)           NULL,
	FieldNChar      NCHAR(1)          NULL,
	FieldFloat      FLOAT(24)         NULL,
	FieldDouble     FLOAT(53)         NULL,
	FieldDateTime   DATETIME          NULL,
	FieldBinary     VARBINARY(20)     NULL,
	FieldGuid       UNIQUEIDENTIFIER  NULL,
	FieldDate       DATE              NULL,
	FieldEnumString VARCHAR(20)       NULL,
	FieldEnumNumber INT               NULL
);

DROP TABLE IF EXISTS TEST_T4_CASING;
CREATE TABLE TEST_T4_CASING
(
	ALL_CAPS              INT    NOT NULL,
	CAPS                  INT    NOT NULL,
	PascalCase            INT    NOT NULL,
	Pascal_Snake_Case     INT    NOT NULL,
	PascalCase_Snake_Case INT    NOT NULL,
	snake_case            INT    NOT NULL,
	camelCase             INT    NOT NULL
);

DROP TABLE IF EXISTS FTS3_TABLE;
CREATE VIRTUAL TABLE FTS3_TABLE USING FTS3(text1 TEXT, text2 TEXT);

DROP TABLE IF EXISTS FTS4_TABLE;
CREATE VIRTUAL TABLE FTS4_TABLE USING FTS4(text1 TEXT, text2 TEXT);

INSERT INTO FTS3_TABLE(text1, text2) VALUES('this is text1', 'this is text2');
INSERT INTO FTS3_TABLE(text1, text2) VALUES('looking for something?', 'found it!');
INSERT INTO FTS3_TABLE(text1, text2) VALUES('record not found', 'empty');
INSERT INTO FTS3_TABLE(text1, text2) VALUES('for snippet testing', 'During 30 Nov-1 Dec, 2-3oC drops. Cool in the upper portion, minimum temperature 14-16oC and cool elsewhere, minimum temperature 17-20oC. Cold to very cold on mountaintops, minimum temperature 6-12oC. Northeasterly winds 15-30 km/hr. After that, temperature increases. Northeasterly winds 15-30 km/hr.');

INSERT INTO FTS4_TABLE(text1, text2) VALUES('this is text1', 'this is text2');
INSERT INTO FTS4_TABLE(text1, text2) VALUES('looking for something?', 'found it!');
INSERT INTO FTS4_TABLE(text1, text2) VALUES('record not found', 'empty');
INSERT INTO FTS4_TABLE(text1, text2) VALUES('for snippet testing', 'During 30 Nov-1 Dec, 2-3oC drops. Cool in the upper portion, minimum temperature 14-16oC and cool elsewhere, minimum temperature 17-20oC. Cold to very cold on mountaintops, minimum temperature 6-12oC. Northeasterly winds 15-30 km/hr. After that, temperature increases. Northeasterly winds 15-30 km/hr.');


DROP TABLE IF EXISTS CollatedTable;
CREATE TABLE CollatedTable
(
	Id				INT NOT NULL,
	CaseSensitive	NVARCHAR(20) NOT NULL COLLATE BINARY,
	CaseInsensitive	NVARCHAR(20) NOT NULL COLLATE NOCASE
);

BeforeExecute
-- SQLite.MS SQLite

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
(1,1.11,'2001-01-11 01:11:21.100',NULL,1,X'659112EFFE6FF94DBB6BBB16E413C883',1,NULL,1,NULL),
(2,2.49,'2005-05-15 05:15:25.500',NULL,0,X'613A66BC407B8146AC38F9AAF55B706B',2,NULL,2,''),
(3,3.99,'2009-09-19 09:19:29.090',NULL,1,X'C070F9D2AC3587499CD55BADB1757436',3,NULL,NULL,'1'),
(4,4.50,'2009-09-20 09:19:29.090',NULL,0,X'DB2F934043154A4EAC2CCA371604FB4B',4,NULL,NULL,'2'),
(5,5.50,'2009-09-20 09:19:29.090',NULL,1,X'CA3EBEFE5FCBB240AD392979D312AFCA',5,NULL,NULL,'3'),
(6,6.55,'2009-09-22 09:19:29.090',NULL,0,X'1D5D3C8DDB4730479FE7968F6228A4C0',6,NULL,NULL,'4'),
(7,7.00,'2009-09-23 09:19:29.090',NULL,1,X'15410948AF83DD46A906BFF26EE21EE2',7,NULL,NULL,'5'),
(8,8.99,'2009-09-24 09:19:29.090',NULL,0,X'1F9F13C13513D44C937E92602F732DD3',8,NULL,NULL,'6'),
(9,9.63,'2009-09-25 09:19:29.090',NULL,1,X'12C5C5464B3DF74CB4E71DE080789E5D',9,NULL,NULL,'7'),
(10,10.77,'2009-09-26 09:19:29.090',NULL,0,X'55BCB2617F14404B93EDA4AA83602FEE',10,NULL,NULL,'8'),
(11,11.45,'2009-09-27 00:00:00.000',NULL,1,X'181D02D3F097C04D98D0F0C7DF4A1230',11,NULL,NULL,'9'),
(12,11.45,'2012-11-07 19:19:29.090',NULL,1,X'181D0203F097C04D98D0F0C7DF4A1230',12,NULL,NULL,'0')

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
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
-- SQLite.MS SQLite

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
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
-- SQLite.MS SQLite

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
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
-- SQLite.MS SQLite

INSERT INTO [InheritanceParent]
(
	[InheritanceParentId],
	[TypeDiscriminator],
	[Name]
)
VALUES
(1,NULL,NULL),
(2,1,NULL),
(3,2,'InheritanceParent2')

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [InheritanceChild]
(
	[InheritanceChildId],
	[TypeDiscriminator],
	[InheritanceParentId],
	[Name]
)
VALUES
(1,NULL,1,NULL),
(2,1,2,NULL),
(3,2,3,'InheritanceParent2')

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @binaryDataType Binary(1)
SET     @binaryDataType = X'01'
DECLARE @varbinaryDataType Binary(1)
SET     @varbinaryDataType = X'02'
DECLARE @imageDataType Binary(4)
SET     @imageDataType = X'00000003'
DECLARE @uniqueidentifierDataType  -- Guid
SET     @uniqueidentifierDataType = X'FF19966F868B11D0B42D00C04FC964FF'


				UPDATE AllTypes
				SET
					binaryDataType           = @binaryDataType,
					varbinaryDataType        = @varbinaryDataType,
					imageDataType            = @imageDataType,
					uniqueidentifierDataType = @uniqueidentifierDataType
				WHERE ID = 2

BeforeExecute
-- SQLite.MS.Data SQLite.MS SQLite

--
-- Helper table
--
DROP TABLE IF EXISTS Dual;
CREATE TABLE Dual (Dummy  VARCHAR(10));
INSERT INTO  Dual (Dummy) VALUES ('X');

DROP TABLE IF EXISTS InheritanceParent;
CREATE TABLE InheritanceParent
(
	InheritanceParentId integer      NOT NULL CONSTRAINT PK_InheritanceParent,
	TypeDiscriminator   integer          NULL,
	Name                nvarchar(50)     NULL
);

DROP TABLE IF EXISTS InheritanceChild;
CREATE TABLE InheritanceChild
(
	InheritanceChildId  integer      NOT NULL CONSTRAINT PK_InheritanceChild,
	InheritanceParentId integer      NOT NULL,
	TypeDiscriminator   integer          NULL,
	Name                nvarchar(50)     NULL
);

--
-- Person Table
--
DROP TABLE IF EXISTS Doctor;
DROP TABLE IF EXISTS Patient;
DROP TABLE IF EXISTS Person;
CREATE TABLE Person
(
	PersonID   integer      NOT NULL CONSTRAINT PK_Person PRIMARY KEY AUTOINCREMENT,
	FirstName  nvarchar(50) NOT NULL,
	LastName   nvarchar(50) NOT NULL,
	MiddleName nvarchar(50)     NULL,
	Gender     char(1)      NOT NULL CONSTRAINT CK_Person_Gender CHECK (Gender in ('M', 'F', 'U', 'O'))
);

INSERT INTO Person (FirstName, LastName, Gender) VALUES ('John',   'Pupkin',    'M');
INSERT INTO Person (FirstName, LastName, Gender) VALUES ('Tester', 'Testerson', 'M');
INSERT INTO Person (FirstName, LastName, Gender) VALUES ('Jane',   'Doe',       'F');
INSERT INTO Person (FirstName, LastName, MiddleName, Gender) VALUES ('Jürgen', 'König', 'Ko', 'M');

CREATE INDEX IX_PersonAsc  ON Person(PersonID ASC);
CREATE INDEX IX_PersonDesc ON Person(PersonID DESC);

--
-- Doctor Table Extension
--
CREATE TABLE Doctor
(
	PersonID integer      NOT NULL CONSTRAINT PK_Doctor PRIMARY KEY,
	Taxonomy nvarchar(50) NOT NULL,
	CONSTRAINT FK_Doctor_Person FOREIGN KEY(PersonID) REFERENCES Person(PersonID)
);

INSERT INTO Doctor (PersonID, Taxonomy) VALUES (1, 'Psychiatry');

--
-- Patient Table Extension
--
CREATE TABLE Patient
(
	PersonID  integer       NOT NULL CONSTRAINT PK_Patient PRIMARY KEY,
	Diagnosis nvarchar(256) NOT NULL,

	CONSTRAINT FK_Patient_Person FOREIGN KEY(PersonID) REFERENCES Person(PersonID)
);
INSERT INTO Patient (PersonID, Diagnosis) VALUES (2, 'Hallucination with Paranoid Bugs'' Delirium of Persecution');

--
-- Babylon test
--
DROP TABLE IF EXISTS Parent;
DROP TABLE IF EXISTS Child;
DROP TABLE IF EXISTS GrandChild;

CREATE TABLE Parent      (ParentID int, Value1 int);
CREATE TABLE Child       (ParentID int, ChildID int);
CREATE TABLE GrandChild  (ParentID int, ChildID int, GrandChildID int);

DROP TABLE IF EXISTS LinqDataTypes;
CREATE TABLE LinqDataTypes
(
	ID             int,
	MoneyValue     decimal(10,4),
	DateTimeValue  datetime,
	DateTimeValue2 datetime2,
	BoolValue      boolean,
	GuidValue      uniqueidentifier,
	BinaryValue    binary(5000) NULL,
	SmallIntValue  smallint,
	IntValue       int          NULL,
	BigIntValue    bigint       NULL,
	StringValue    nvarchar(50) NULL
);


DROP TABLE IF EXISTS TestIdentity

BeforeExecute
-- SQLite.MS.Data SQLite.MS SQLite

CREATE TABLE TestIdentity (
	ID integer NOT NULL CONSTRAINT PK_TestIdentity PRIMARY KEY AUTOINCREMENT
)

BeforeExecute
-- SQLite.MS.Data SQLite.MS SQLite

DROP VIEW IF EXISTS AllTypesView

BeforeExecute
-- SQLite.MS.Data SQLite.MS SQLite

DROP TABLE IF EXISTS AllTypes

BeforeExecute
-- SQLite.MS.Data SQLite.MS SQLite

CREATE TABLE AllTypes
(
	ID                       integer          NOT NULL CONSTRAINT PK_AllTypes PRIMARY KEY AUTOINCREMENT,

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

	charDataType             char(1)          NULL,
	char20DataType           char(20)         NULL,
	varcharDataType          varchar(20)      NULL,
	textDataType             text             NULL,
	ncharDataType            nchar(20)        NULL,
	nvarcharDataType         nvarchar(20)     NULL,
	ntextDataType            ntext            NULL,

	binaryDataType           binary           NULL,
	varbinaryDataType        varbinary        NULL,
	imageDataType            image            NULL,

	uniqueidentifierDataType uniqueidentifier NULL,
	objectDataType           Object           NULL
)

BeforeExecute
-- SQLite.MS.Data SQLite.MS SQLite

CREATE VIEW AllTypesView
AS
SELECT
	*,
	ROW_NUMBER () OVER () AS Number
FROM AllTypes

BeforeExecute
-- SQLite.MS.Data SQLite.MS SQLite

INSERT INTO AllTypes
(
	bigintDataType, numericDataType, bitDataType, smallintDataType, decimalDataType,
	intDataType, tinyintDataType, moneyDataType, floatDataType, realDataType,
	datetimeDataType,
	charDataType, varcharDataType, textDataType, ncharDataType, nvarcharDataType, ntextDataType,
	objectDataType
)
SELECT
		 NULL,      NULL,  NULL,    NULL,    NULL,   NULL,  NULL,   NULL,  NULL, NULL,
		 NULL,
		 NULL,      NULL,  NULL,    NULL,    NULL,   NULL,
		 NULL
UNION ALL
SELECT
	 1000000,    9999999,     1,   25555, 2222222, 7777777,  100, 100000, 20.31, 16.2,
	'2012-12-12 12:12:12',
		  '1',     '234', '567', '23233',  '3323',  '111',
		   10

BeforeExecute
-- SQLite.MS.Data SQLite.MS SQLite

--
-- Demonstration Tables for Issue #784
--

-- Parent table
DROP TABLE IF EXISTS PrimaryKeyTable

BeforeExecute
-- SQLite.MS.Data SQLite.MS SQLite

CREATE TABLE PrimaryKeyTable
(
	ID           integer      NOT NULL PRIMARY KEY,
	Name         nvarchar(50) NOT NULL
)

BeforeExecute
-- SQLite.MS.Data SQLite.MS SQLite

-- Child table
DROP TABLE IF EXISTS ForeignKeyTable

BeforeExecute
-- SQLite.MS.Data SQLite.MS SQLite

CREATE TABLE ForeignKeyTable
(
	PrimaryKeyTableID integer      NOT NULL,
	Name              nvarchar(50) NOT NULL,
	-- Test: the foreign key targets the parent table without a column
	-- reference.  This should automatically match against the primary key
	-- of the target table.
	CONSTRAINT FK_ForeignKeyTable_PrimaryKeyTable FOREIGN KEY(PrimaryKeyTableID) REFERENCES PrimaryKeyTable ON DELETE CASCADE
)

BeforeExecute
-- SQLite.MS.Data SQLite.MS SQLite

-- Second-level child table, alternate semantics
DROP TABLE IF EXISTS FKTestPosition

BeforeExecute
-- SQLite.MS.Data SQLite.MS SQLite

CREATE TABLE FKTestPosition
(
	Company      integer      NOT NULL,
	Department   integer      NOT NULL,
	PositionID   integer      NOT NULL,
	Name         nvarchar(50) NOT NULL,
	PRIMARY KEY(Company, Department, PositionID),
	-- Test: one level deeper, this should link to both fields in the
	-- primary key of the FKTestDepartment table
	CONSTRAINT FK_Position_Department FOREIGN KEY(Company, Department) REFERENCES FKTestDepartment ON DELETE CASCADE
	-- A simpler foreign key for the above would be:
	--    FOREIGN KEY(Department) REFERENCES FKTestDepartment(DepartmentID) ON DELETE CASCADE
)

BeforeExecute
-- SQLite.MS.Data SQLite.MS SQLite

-- merge test tables
DROP TABLE IF EXISTS TestMerge1;
DROP TABLE IF EXISTS TestMerge2;
CREATE TABLE TestMerge1
(
	Id              INTEGER       NOT NULL CONSTRAINT PK_TestMerge1,
	Field1          INTEGER           NULL,
	Field2          INTEGER           NULL,
	Field3          INTEGER           NULL,
	Field4          INTEGER           NULL,
	Field5          INTEGER           NULL,

	FieldInt64      BIGINT            NULL,
	FieldBoolean    BIT               NULL,
	FieldString     VARCHAR(20)       NULL,
	FieldNString    NVARCHAR(20)      NULL,
	FieldChar       CHAR(1)           NULL,
	FieldNChar      NCHAR(1)          NULL,
	FieldFloat      FLOAT(24)         NULL,
	FieldDouble     FLOAT(53)         NULL,
	FieldDateTime   DATETIME          NULL,
	FieldBinary     VARBINARY(20)     NULL,
	FieldGuid       UNIQUEIDENTIFIER  NULL,
	FieldDate       DATE              NULL,
	FieldEnumString VARCHAR(20)       NULL,
	FieldEnumNumber INT               NULL
);
CREATE TABLE TestMerge2
(
	Id              INTEGER       NOT NULL CONSTRAINT PK_TestMerge2,
	Field1          INTEGER           NULL,
	Field2          INTEGER           NULL,
	Field3          INTEGER           NULL,
	Field4          INTEGER           NULL,
	Field5          INTEGER           NULL,

	FieldInt64      BIGINT            NULL,
	FieldBoolean    BIT               NULL,
	FieldString     VARCHAR(20)       NULL,
	FieldNString    NVARCHAR(20)      NULL,
	FieldChar       CHAR(1)           NULL,
	FieldNChar      NCHAR(1)          NULL,
	FieldFloat      FLOAT(24)         NULL,
	FieldDouble     FLOAT(53)         NULL,
	FieldDateTime   DATETIME          NULL,
	FieldBinary     VARBINARY(20)     NULL,
	FieldGuid       UNIQUEIDENTIFIER  NULL,
	FieldDate       DATE              NULL,
	FieldEnumString VARCHAR(20)       NULL,
	FieldEnumNumber INT               NULL
);

DROP TABLE IF EXISTS TEST_T4_CASING;
CREATE TABLE TEST_T4_CASING
(
	ALL_CAPS              INT    NOT NULL,
	CAPS                  INT    NOT NULL,
	PascalCase            INT    NOT NULL,
	Pascal_Snake_Case     INT    NOT NULL,
	PascalCase_Snake_Case INT    NOT NULL,
	snake_case            INT    NOT NULL,
	camelCase             INT    NOT NULL
);

DROP TABLE IF EXISTS FTS3_TABLE;
CREATE VIRTUAL TABLE FTS3_TABLE USING FTS3(text1 TEXT, text2 TEXT);

DROP TABLE IF EXISTS FTS4_TABLE;
CREATE VIRTUAL TABLE FTS4_TABLE USING FTS4(text1 TEXT, text2 TEXT);

INSERT INTO FTS3_TABLE(text1, text2) VALUES('this is text1', 'this is text2');
INSERT INTO FTS3_TABLE(text1, text2) VALUES('looking for something?', 'found it!');
INSERT INTO FTS3_TABLE(text1, text2) VALUES('record not found', 'empty');
INSERT INTO FTS3_TABLE(text1, text2) VALUES('for snippet testing', 'During 30 Nov-1 Dec, 2-3oC drops. Cool in the upper portion, minimum temperature 14-16oC and cool elsewhere, minimum temperature 17-20oC. Cold to very cold on mountaintops, minimum temperature 6-12oC. Northeasterly winds 15-30 km/hr. After that, temperature increases. Northeasterly winds 15-30 km/hr.');

INSERT INTO FTS4_TABLE(text1, text2) VALUES('this is text1', 'this is text2');
INSERT INTO FTS4_TABLE(text1, text2) VALUES('looking for something?', 'found it!');
INSERT INTO FTS4_TABLE(text1, text2) VALUES('record not found', 'empty');
INSERT INTO FTS4_TABLE(text1, text2) VALUES('for snippet testing', 'During 30 Nov-1 Dec, 2-3oC drops. Cool in the upper portion, minimum temperature 14-16oC and cool elsewhere, minimum temperature 17-20oC. Cold to very cold on mountaintops, minimum temperature 6-12oC. Northeasterly winds 15-30 km/hr. After that, temperature increases. Northeasterly winds 15-30 km/hr.');


DROP TABLE IF EXISTS CollatedTable;
CREATE TABLE CollatedTable
(
	Id				INT NOT NULL,
	CaseSensitive	NVARCHAR(20) NOT NULL COLLATE BINARY,
	CaseInsensitive	NVARCHAR(20) NOT NULL COLLATE NOCASE
);

BeforeExecute
-- SQLite.MS.Data SQLite.MS SQLite

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
(1,1.11,'2001-01-11 01:11:21.100',NULL,1,X'659112EFFE6FF94DBB6BBB16E413C883',1,NULL,1,NULL),
(2,2.49,'2005-05-15 05:15:25.500',NULL,0,X'613A66BC407B8146AC38F9AAF55B706B',2,NULL,2,''),
(3,3.99,'2009-09-19 09:19:29.090',NULL,1,X'C070F9D2AC3587499CD55BADB1757436',3,NULL,NULL,'1'),
(4,4.50,'2009-09-20 09:19:29.090',NULL,0,X'DB2F934043154A4EAC2CCA371604FB4B',4,NULL,NULL,'2'),
(5,5.50,'2009-09-20 09:19:29.090',NULL,1,X'CA3EBEFE5FCBB240AD392979D312AFCA',5,NULL,NULL,'3'),
(6,6.55,'2009-09-22 09:19:29.090',NULL,0,X'1D5D3C8DDB4730479FE7968F6228A4C0',6,NULL,NULL,'4'),
(7,7.00,'2009-09-23 09:19:29.090',NULL,1,X'15410948AF83DD46A906BFF26EE21EE2',7,NULL,NULL,'5'),
(8,8.99,'2009-09-24 09:19:29.090',NULL,0,X'1F9F13C13513D44C937E92602F732DD3',8,NULL,NULL,'6'),
(9,9.63,'2009-09-25 09:19:29.090',NULL,1,X'12C5C5464B3DF74CB4E71DE080789E5D',9,NULL,NULL,'7'),
(10,10.77,'2009-09-26 09:19:29.090',NULL,0,X'55BCB2617F14404B93EDA4AA83602FEE',10,NULL,NULL,'8'),
(11,11.45,'2009-09-27 00:00:00.000',NULL,1,X'181D02D3F097C04D98D0F0C7DF4A1230',11,NULL,NULL,'9'),
(12,11.45,'2012-11-07 19:19:29.090',NULL,1,X'181D0203F097C04D98D0F0C7DF4A1230',12,NULL,NULL,'0')

BeforeExecute
-- SQLite.MS.Data SQLite.MS SQLite

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
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
-- SQLite.MS.Data SQLite.MS SQLite

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
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
-- SQLite.MS.Data SQLite.MS SQLite

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
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
-- SQLite.MS.Data SQLite.MS SQLite

INSERT INTO [InheritanceParent]
(
	[InheritanceParentId],
	[TypeDiscriminator],
	[Name]
)
VALUES
(1,NULL,NULL),
(2,1,NULL),
(3,2,'InheritanceParent2')

BeforeExecute
-- SQLite.MS.Data SQLite.MS SQLite

INSERT INTO [InheritanceChild]
(
	[InheritanceChildId],
	[TypeDiscriminator],
	[InheritanceParentId],
	[Name]
)
VALUES
(1,NULL,1,NULL),
(2,1,2,NULL),
(3,2,3,'InheritanceParent2')

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @binaryDataType Binary(1)
SET     @binaryDataType = X'01'
DECLARE @varbinaryDataType Binary(1)
SET     @varbinaryDataType = X'02'
DECLARE @imageDataType Binary(4)
SET     @imageDataType = X'00000003'
DECLARE @uniqueidentifierDataType  -- Guid
SET     @uniqueidentifierDataType = X'FF19966F868B11D0B42D00C04FC964FF'


				UPDATE AllTypes
				SET
					binaryDataType           = @binaryDataType,
					varbinaryDataType        = @varbinaryDataType,
					imageDataType            = @imageDataType,
					uniqueidentifierDataType = @uniqueidentifierDataType
				WHERE ID = 2

