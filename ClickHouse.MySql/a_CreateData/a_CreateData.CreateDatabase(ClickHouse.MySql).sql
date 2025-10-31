-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Parent;

-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Child;

-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS GrandChild;

-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InheritanceParent;

-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InheritanceChild;

-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Doctor;

-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Patient;

-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Person;

-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS LinqDataTypes;

-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS AllTypes;

-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS CollatedTable;

-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TestMerge1

-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TestMerge2;

-- ClickHouse.MySql ClickHouse

CREATE TABLE Parent      (ParentID Int32, Value1 Nullable(Int32)) ENGINE = Memory();

-- ClickHouse.MySql ClickHouse

CREATE TABLE Child       (ParentID Int32, ChildID Int32) ENGINE = Memory();

-- ClickHouse.MySql ClickHouse

CREATE TABLE GrandChild  (ParentID Int32, ChildID Int32, GrandChildID Int32) ENGINE = Memory();

-- ClickHouse.MySql ClickHouse

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

-- ClickHouse.MySql ClickHouse

CREATE TABLE InheritanceParent
(
	InheritanceParentId          Int32,
	TypeDiscriminator   Nullable(Int32),
	Name                Nullable(String)
) ENGINE = MergeTree() ORDER BY InheritanceParentId PRIMARY KEY InheritanceParentId;

-- ClickHouse.MySql ClickHouse

CREATE TABLE InheritanceChild
(
	InheritanceChildId           Int32,
	InheritanceParentId          Int32,
	TypeDiscriminator   Nullable(Int32),
	Name                Nullable(String)
) ENGINE = MergeTree() ORDER BY InheritanceChildId PRIMARY KEY InheritanceChildId;

-- ClickHouse.MySql ClickHouse

CREATE TABLE Person
(
	PersonID            Int32,
	FirstName           String,
	LastName            String,
	MiddleName Nullable(String),
	Gender              FixedString(1),
	CONSTRAINT CK_Person_Gender CHECK (Gender in ('M', 'F', 'U', 'O'))
) ENGINE = MergeTree() ORDER BY PersonID PRIMARY KEY PersonID;

-- ClickHouse.MySql ClickHouse

INSERT INTO Person (PersonID, FirstName, LastName, MiddleName, Gender)
	VALUES
	(1, 'John',   'Pupkin',    NULL, 'M'),
	(2, 'Tester', 'Testerson', NULL, 'M'),
	(3, 'Jane',   'Doe',       NULL, 'F'),
	(4, 'Jürgen', 'König',     'Ko', 'M');

-- ClickHouse.MySql ClickHouse

CREATE TABLE Doctor
(
	PersonID Int32,
	Taxonomy String
) ENGINE = MergeTree() ORDER BY PersonID PRIMARY KEY PersonID;

-- ClickHouse.MySql ClickHouse

INSERT INTO Doctor (PersonID, Taxonomy) VALUES (1, 'Psychiatry');

-- ClickHouse.MySql ClickHouse

CREATE TABLE Patient
(
	PersonID  Int32,
	Diagnosis String
) ENGINE = MergeTree() ORDER BY PersonID PRIMARY KEY PersonID;

-- ClickHouse.MySql ClickHouse

INSERT INTO Patient (PersonID, Diagnosis) VALUES (2, 'Hallucination with Paranoid Bugs'' Delirium of Persecution');

-- ClickHouse.MySql ClickHouse

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

-- ClickHouse.MySql ClickHouse

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

-- ClickHouse.MySql ClickHouse

CREATE TABLE CollatedTable
(
	Id              Int32,
	CaseSensitive   Nullable(String),
	CaseInsensitive Nullable(String)
)  ENGINE = MergeTree() ORDER BY Id PRIMARY KEY Id;

-- ClickHouse.MySql ClickHouse

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

-- ClickHouse.MySql ClickHouse

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

-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS ReplacingMergeTreeTable;

-- ClickHouse.MySql ClickHouse

CREATE TABLE ReplacingMergeTreeTable
(
	ID UInt32,
	TS DateTime
)
ENGINE = ReplacingMergeTree(TS)
PARTITION BY toDate(TS)
ORDER BY ID;

-- ClickHouse.MySql ClickHouse

INSERT INTO LinqDataTypes
(
	ID,
	MoneyValue,
	DateTimeValue,
	DateTimeValue2,
	BoolValue,
	GuidValue,
	SmallIntValue,
	IntValue,
	BigIntValue,
	StringValue
)
VALUES
(1,toDecimal128('1.11', 10),toDateTime64('2001-01-11 01:11:21.100', 3),NULL,true,toUUID('ef129165-6ffe-4df9-bb6b-bb16e413c883'),toInt16(1),NULL,toInt64(1),NULL),
(2,toDecimal128('2.49', 10),toDateTime64('2005-05-15 05:15:25.500', 3),NULL,false,toUUID('bc663a61-7b40-4681-ac38-f9aaf55b706b'),toInt16(2),NULL,toInt64(2),''),
(3,toDecimal128('3.99', 10),toDateTime64('2009-09-19 09:19:29.090', 3),NULL,true,toUUID('d2f970c0-35ac-4987-9cd5-5badb1757436'),toInt16(3),NULL,NULL,'1'),
(4,toDecimal128('4.50', 10),toDateTime64('2009-09-20 09:19:29.090', 3),NULL,false,toUUID('40932fdb-1543-4e4a-ac2c-ca371604fb4b'),toInt16(4),NULL,NULL,'2'),
(5,toDecimal128('5.50', 10),toDateTime64('2009-09-20 09:19:29.090', 3),NULL,true,toUUID('febe3eca-cb5f-40b2-ad39-2979d312afca'),toInt16(5),NULL,NULL,'3'),
(6,toDecimal128('6.55', 10),toDateTime64('2009-09-22 09:19:29.090', 3),NULL,false,toUUID('8d3c5d1d-47db-4730-9fe7-968f6228a4c0'),toInt16(6),NULL,NULL,'4'),
(7,toDecimal128('7.00', 10),toDateTime64('2009-09-23 09:19:29.090', 3),NULL,true,toUUID('48094115-83af-46dd-a906-bff26ee21ee2'),toInt16(7),NULL,NULL,'5'),
(8,toDecimal128('8.99', 10),toDateTime64('2009-09-24 09:19:29.090', 3),NULL,false,toUUID('c1139f1f-1335-4cd4-937e-92602f732dd3'),toInt16(8),NULL,NULL,'6'),
(9,toDecimal128('9.63', 10),toDateTime64('2009-09-25 09:19:29.090', 3),NULL,true,toUUID('46c5c512-3d4b-4cf7-b4e7-1de080789e5d'),toInt16(9),NULL,NULL,'7'),
(10,toDecimal128('10.77', 10),toDateTime64('2009-09-26 09:19:29.090', 3),NULL,false,toUUID('61b2bc55-147f-4b40-93ed-a4aa83602fee'),toInt16(10),NULL,NULL,'8'),
(11,toDecimal128('11.45', 10),toDateTime64('2009-09-27 00:00:00.000', 3),NULL,true,toUUID('d3021d18-97f0-4dc0-98d0-f0c7df4a1230'),toInt16(11),NULL,NULL,'9'),
(12,toDecimal128('11.45', 10),toDateTime64('2012-11-07 19:19:29.090', 3),NULL,true,toUUID('03021d18-97f0-4dc0-98d0-f0c7df4a1230'),toInt16(12),NULL,NULL,'0')

-- ClickHouse.MySql ClickHouse

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(1,1),
(2,NULL),
(3,3),
(4,NULL),
(5,5),
(6,6),
(7,1)

-- ClickHouse.MySql ClickHouse

INSERT INTO Child
(
	ParentID,
	ChildID
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

-- ClickHouse.MySql ClickHouse

INSERT INTO GrandChild
(
	ParentID,
	ChildID,
	GrandChildID
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

-- ClickHouse.MySql ClickHouse

INSERT INTO InheritanceParent
(
	InheritanceParentId,
	TypeDiscriminator,
	Name
)
VALUES
(1,NULL,NULL),
(2,1,NULL),
(3,2,'InheritanceParent2')

-- ClickHouse.MySql ClickHouse

INSERT INTO InheritanceChild
(
	InheritanceChildId,
	TypeDiscriminator,
	InheritanceParentId,
	Name
)
VALUES
(1,NULL,1,NULL),
(2,1,2,NULL),
(3,2,3,'InheritanceParent2')

