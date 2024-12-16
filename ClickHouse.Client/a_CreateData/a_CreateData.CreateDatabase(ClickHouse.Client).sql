BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Parent;

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Child;

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS GrandChild;

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS InheritanceParent;

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS InheritanceChild;

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Doctor;

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Patient;

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Person;

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS LinqDataTypes;

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS AllTypes;

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS CollatedTable;

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TestMerge1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS TestMerge2;

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE Parent      (ParentID Int32, Value1 Nullable(Int32)) ENGINE = Memory();

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE Child       (ParentID Int32, ChildID Int32) ENGINE = Memory();

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE GrandChild  (ParentID Int32, ChildID Int32, GrandChildID Int32) ENGINE = Memory();

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE LinqDataTypes
(
	ID             Int32,
	MoneyValue     Nullable(Decimal64(4)),
	DateTimeValue  Nullable(DateTime64(3)),
	DateTimeValue2 Nullable(DateTime64(7)),
	BoolValue      Nullable(Bool),
	GuidValue      Nullable(UUID),
	BinaryValue    Nullable(String),
	SmallIntValue  Nullable(Int16),
	IntValue       Nullable(Int32),
	BigIntValue    Nullable(Int64),
	StringValue    Nullable(String)
) ENGINE = MergeTree() ORDER BY ID PRIMARY KEY ID;

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE InheritanceParent
(
	InheritanceParentId          Int32,
	TypeDiscriminator   Nullable(Int32),
	Name                Nullable(String)
) ENGINE = MergeTree() ORDER BY InheritanceParentId PRIMARY KEY InheritanceParentId;

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE InheritanceChild
(
	InheritanceChildId           Int32,
	InheritanceParentId          Int32,
	TypeDiscriminator   Nullable(Int32),
	Name                Nullable(String)
) ENGINE = MergeTree() ORDER BY InheritanceChildId PRIMARY KEY InheritanceChildId;

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE Person
(
	PersonID            Int32,
	FirstName           String,
	LastName            String,
	MiddleName Nullable(String),
	Gender              FixedString(1),
	CONSTRAINT CK_Person_Gender CHECK (Gender in ('M', 'F', 'U', 'O'))
) ENGINE = MergeTree() ORDER BY PersonID PRIMARY KEY PersonID;

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Person (PersonID, FirstName, LastName, MiddleName, Gender)
	VALUES
	(1, 'John',   'Pupkin',    NULL, 'M'),
	(2, 'Tester', 'Testerson', NULL, 'M'),
	(3, 'Jane',   'Doe',       NULL, 'F'),
	(4, 'Jürgen', 'König',     'Ko', 'M');

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE Doctor
(
	PersonID Int32,
	Taxonomy String
) ENGINE = MergeTree() ORDER BY PersonID PRIMARY KEY PersonID;

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Doctor (PersonID, Taxonomy) VALUES (1, 'Psychiatry');

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE Patient
(
	PersonID  Int32,
	Diagnosis String
) ENGINE = MergeTree() ORDER BY PersonID PRIMARY KEY PersonID;

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Patient (PersonID, Diagnosis) VALUES (2, 'Hallucination with Paranoid Bugs'' Delirium of Persecution');

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE AllTypes
(
	ID                       Int32,

	intDataType              Nullable(Int32),
	smallintDataType         Nullable(Int16),

	floatDataType            Nullable(Float32),
	doubleDataType           Nullable(Float64),


	ncharDataType            Nullable(FixedString(20)),
	char20DataType           Nullable(FixedString(20)),
	varcharDataType          Nullable(String),
	charDataType             Nullable(FixedString(1)),
	bitDataType              Nullable(BIT)

) ENGINE = MergeTree() ORDER BY ID PRIMARY KEY ID;

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO AllTypes
(
	ID,
	intDataType, smallintDataType,
	floatDataType, doubleDataType,
	ncharDataType, char20DataType, varcharDataType, charDataType
)
SELECT	1,
		CAST(NULL AS Nullable(Int32)), CAST(NULL AS Nullable(Int16)),
		CAST(NULL AS Nullable(Float32)), CAST(NULL AS Nullable(Float64)),
		CAST(NULL AS Nullable(FixedString(20))), CAST(NULL AS Nullable(FixedString(20))), CAST(NULL AS Nullable(String)), CAST(NULL AS Nullable(FixedString(1)))
UNION ALL
SELECT	2,
		7777777, 25555,
		20.31, 16.2,
		'23233', 'тест', '234', '1'

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE CollatedTable
(
	Id              Int32,
	CaseSensitive   Nullable(String),
	CaseInsensitive Nullable(String)
)  ENGINE = MergeTree() ORDER BY Id PRIMARY KEY Id;

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE TestMerge1
(
	Id              Int32,
	Field1          Nullable(Int32),
	Field2          Nullable(Int32),
	Field3          Nullable(Int32),
	Field4          Nullable(Int32),
	Field5          Nullable(Int32),

	FieldInt64      Nullable(Int64),
	FieldBoolean    Nullable(Bool),
	FieldString     Nullable(String),
	FieldNString    Nullable(String),
	FieldChar       Nullable(FixedString(1)),
	FieldNChar      Nullable(FixedString(2)),
	FieldFloat      Nullable(Float32),
	FieldDouble     Nullable(Float64),
	FieldDateTime   Nullable(DateTime64(3)),
	FieldDateTime2  Nullable(DateTime64(7)),
	FieldBinary     Nullable(String),
	FieldGuid       Nullable(UUID),
	FieldDecimal    Nullable(Decimal128(10)),
	FieldDate       Nullable(Date),
	FieldTime       Nullable(Int64),
	FieldEnumString Nullable(String),
	FieldEnumNumber Nullable(Int32)
)  ENGINE = MergeTree() ORDER BY Id PRIMARY KEY Id;

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE TestMerge2
(
	Id              Int32,
	Field1          Nullable(Int32),
	Field2          Nullable(Int32),
	Field3          Nullable(Int32),
	Field4          Nullable(Int32),
	Field5          Nullable(Int32),

	FieldInt64      Nullable(Int64),
	FieldBoolean    Nullable(Bool),
	FieldString     Nullable(String),
	FieldNString    Nullable(String),
	FieldChar       Nullable(FixedString(1)),
	FieldNChar      Nullable(FixedString(2)),
	FieldFloat      Nullable(Float32),
	FieldDouble     Nullable(Float64),
	FieldDateTime   Nullable(DateTime64(3)),
	FieldDateTime2  Nullable(DateTime64(7)),
	FieldBinary     Nullable(String),
	FieldGuid       Nullable(UUID),
	FieldDecimal    Nullable(Decimal128(10)),
	FieldDate       Nullable(Date),
	FieldTime       Nullable(Int64),
	FieldEnumString Nullable(String),
	FieldEnumNumber Nullable(Int32)
)  ENGINE = MergeTree() ORDER BY Id PRIMARY KEY Id;

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ReplacingMergeTreeTable;

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE ReplacingMergeTreeTable
(
	ID UInt32,
	TS DateTime
)
ENGINE = ReplacingMergeTree(TS)
PARTITION BY toDate(TS)
ORDER BY ID;

BeforeExecute
INSERT ASYNC BULK LinqDataTypes(ID, MoneyValue, DateTimeValue, DateTimeValue2, BoolValue, GuidValue, SmallIntValue, IntValue, BigIntValue, StringValue)

BeforeExecute
INSERT ASYNC BULK Parent(ParentID, Value1)

BeforeExecute
INSERT ASYNC BULK Child(ParentID, ChildID)

BeforeExecute
INSERT ASYNC BULK GrandChild(ParentID, ChildID, GrandChildID)

BeforeExecute
INSERT ASYNC BULK InheritanceParent(InheritanceParentId, TypeDiscriminator, Name)

BeforeExecute
INSERT ASYNC BULK InheritanceChild(InheritanceChildId, TypeDiscriminator, InheritanceParentId, Name)

