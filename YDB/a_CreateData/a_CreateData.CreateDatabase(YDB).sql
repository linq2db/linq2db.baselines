-- YDB Ydb

DROP TABLE IF EXISTS Parent;

-- YDB Ydb

DROP TABLE IF EXISTS Child;

-- YDB Ydb

DROP TABLE IF EXISTS GrandChild;

-- YDB Ydb

DROP TABLE IF EXISTS InheritanceParent;

-- YDB Ydb

DROP TABLE IF EXISTS InheritanceChild;

-- YDB Ydb

DROP TABLE IF EXISTS Doctor;

-- YDB Ydb

DROP TABLE IF EXISTS Patient;

-- YDB Ydb

DROP TABLE IF EXISTS Person;

-- YDB Ydb

DROP TABLE IF EXISTS LinqDataTypes;

-- YDB Ydb

DROP TABLE IF EXISTS AllTypes;

-- YDB Ydb

DROP TABLE IF EXISTS CollatedTable;

-- YDB Ydb

DROP TABLE IF EXISTS TestMerge1

-- YDB Ydb

DROP TABLE IF EXISTS TestMerge2;

-- YDB Ydb

CREATE TABLE Parent      (ParentID Int32 NOT NULL, Value1 Int32, PRIMARY KEY (ParentID));

-- YDB Ydb

CREATE TABLE Child       (ParentID Int32 NOT NULL, ChildID Int32 NOT NULL, PRIMARY KEY (ChildID));

-- YDB Ydb

CREATE TABLE GrandChild  (ParentID Int32, ChildID Int32, GrandChildID Int32, PRIMARY KEY (GrandChildID));

-- YDB Ydb

CREATE TABLE LinqDataTypes
(
	ID             SERIAL NOT NULL,
	MoneyValue     Decimal(6, 2),
	DateTimeValue  Timestamp,
	DateTimeValue2 Timestamp,
	BoolValue      Bool,
	GuidValue      UUID,
	BinaryValue    Bytes,
	SmallIntValue  Int16,
	IntValue       Int32,
	BigIntValue    Int64,
	StringValue    Text,
	PRIMARY KEY (ID)
);

-- YDB Ydb

CREATE TABLE InheritanceParent
(
	InheritanceParentId Int32 NOT NULL,
	TypeDiscriminator   Int32,
	Name                Text,
	PRIMARY KEY (InheritanceParentId)
);

-- YDB Ydb

CREATE TABLE InheritanceChild
(
	InheritanceChildId  Int32 NOT NULL,
	InheritanceParentId Int32 NOT NULL,
	TypeDiscriminator   Int32,
	Name                Text,
	PRIMARY KEY (InheritanceChildId)
);

-- YDB Ydb

CREATE TABLE Person
(
	PersonID   SERIAL NOT NULL,
	FirstName  Text NOT NULL,
	LastName   Text NOT NULL,
	MiddleName Text,
	Gender     Text NOT NULL,
	PRIMARY KEY (PersonID)
);

-- YDB Ydb

INSERT INTO Person (PersonID, FirstName, LastName, MiddleName, Gender)
	VALUES
	(1, 'John',   'Pupkin',    NULL, 'M'),
	(2, 'Tester', 'Testerson', NULL, 'M'),
	(3, 'Jane',   'Doe',       NULL, 'F'),
	(4, 'Jürgen', 'König',     'Ko', 'M');

-- YDB Ydb

CREATE TABLE Doctor
(
	PersonID Int32 NOT NULL,
	Taxonomy Text NOT NULL,
	PRIMARY KEY (PersonID)
);

-- YDB Ydb

INSERT INTO Doctor (PersonID, Taxonomy) VALUES (1, 'Psychiatry');

-- YDB Ydb

CREATE TABLE Patient
(
	PersonID  Int32 NOT NULL,
	Diagnosis Text NOT NULL,
	PRIMARY KEY (PersonID)
);

-- YDB Ydb

INSERT INTO Patient (PersonID, Diagnosis) VALUES (2, 'Hallucination with Paranoid Bugs\' Delirium of Persecution');

-- YDB Ydb

CREATE TABLE AllTypes
(
	ID                       SERIAL NOT NULL,

	intDataType              Int32,
	smallintDataType         Int16,

	floatDataType            Float,
	doubleDataType           Double,


	ncharDataType            Text,
	char20DataType           Text,
	varcharDataType          Text,
	charDataType             Text,
	bitDataType              Bool,

	PRIMARY KEY (ID)
);

-- YDB Ydb

INSERT INTO AllTypes
(
	ID,
	intDataType, smallintDataType,
	floatDataType, doubleDataType,
	ncharDataType, char20DataType, varcharDataType, charDataType
)
VALUES(1,
		CAST(NULL AS Int32), CAST(NULL AS Int16),
		CAST(NULL AS Float), CAST(NULL AS Double),
		CAST(NULL AS Text), CAST(NULL AS Text), CAST(NULL AS Text), CAST(NULL AS Text));

-- YDB Ydb

INSERT INTO AllTypes
(
	ID,
	intDataType, smallintDataType,
	floatDataType, doubleDataType,
	ncharDataType, char20DataType, varcharDataType, charDataType
)
VALUES(2,
		7777777, 25555,
		20.31f, 16.2,
		'23233', 'тест', '234', '1');

-- YDB Ydb

CREATE TABLE CollatedTable
(
	Id              Int32 NOT NULL,
	CaseSensitive   Text,
	CaseInsensitive Text,
	PRIMARY KEY (Id)
);

-- YDB Ydb

CREATE TABLE TestMerge1
(
	Id              Int32 NOT NULL,
	Field1          Int32,
	Field2          Int32,
	Field3          Int32,
	Field4          Int32,
	Field5          Int32,

	FieldInt64      Int64,
	FieldBoolean    Bool,
	FieldString     Text,
	FieldNString    Text,
	FieldChar       Text,
	FieldNChar      Text,
	FieldFloat      Float,
	FieldDouble     Double,
	FieldDateTime   Timestamp,
	FieldDateTime2  Timestamp,
	FieldBinary     Bytes,
	FieldGuid       UUID,
	FieldDecimal    Decimal(10, 0),
	FieldDate       Date,
	FieldTime       Int64,
	FieldEnumString Text,
	FieldEnumNumber Int32,
	PRIMARY KEY (Id)
);

-- YDB Ydb

CREATE TABLE TestMerge2
(
	Id              Int32 NOT NULL,
	Field1          Int32,
	Field2          Int32,
	Field3          Int32,
	Field4          Int32,
	Field5          Int32,

	FieldInt64      Int64,
	FieldBoolean    Bool,
	FieldString     Text,
	FieldNString    Text,
	FieldChar       Text,
	FieldNChar      Text,
	FieldFloat      Float,
	FieldDouble     Double,
	FieldDateTime   Timestamp,
	FieldDateTime2  Timestamp,
	FieldBinary     Bytes,
	FieldGuid       UUID,
	FieldDecimal    Decimal(10, 0),
	FieldDate       Date,
	FieldTime       Int64,
	FieldEnumString Text,
	FieldEnumNumber Int32,
	PRIMARY KEY (Id)
);

INSERT ASYNC BULK LinqDataTypes(ID, MoneyValue, DateTimeValue, DateTimeValue2, BoolValue, GuidValue, SmallIntValue, IntValue, BigIntValue, StringValue)

INSERT ASYNC BULK Parent(ParentID, Value1)

INSERT ASYNC BULK Child(ParentID, ChildID)

INSERT ASYNC BULK GrandChild(ParentID, ChildID, GrandChildID)

INSERT ASYNC BULK InheritanceParent(InheritanceParentId, TypeDiscriminator, Name)

INSERT ASYNC BULK InheritanceChild(InheritanceChildId, TypeDiscriminator, InheritanceParentId, Name)

