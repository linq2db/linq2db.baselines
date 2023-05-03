BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Parent;

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Child;

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS GrandChild;

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InheritanceParent;

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InheritanceChild;

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Doctor;

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Patient;

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Person;

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS LinqDataTypes;

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS AllTypes;

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS CollatedTable;

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TestMerge1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS TestMerge2;

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE Parent      (ParentID Int32, Value1 Nullable(Int32)) ENGINE = Memory();

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE Child       (ParentID Int32, ChildID Int32) ENGINE = Memory();

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE GrandChild  (ParentID Int32, ChildID Int32, GrandChildID Int32) ENGINE = Memory();

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE LinqDataTypes
(
	ID             Int32,
	MoneyValue     Nullable(Decimal64(4)),
	DateTimeValue  Nullable(DateTime64(3)),
	DateTimeValue2 Nullable(DateTime64(7)),
-- SKIP ClickHouse.Octonica BEGIN
	BoolValue      Nullable(Bool),
-- SKIP ClickHouse.Octonica END
-- SKIP ClickHouse.Client BEGIN
-- SKIP ClickHouse.MySql END
-- SKIP ClickHouse.Client END
	GuidValue      Nullable(UUID),
	BinaryValue    Nullable(String),
	SmallIntValue  Nullable(Int16),
	IntValue       Nullable(Int32),
	BigIntValue    Nullable(Int64),
	StringValue    Nullable(String)
) ENGINE = MergeTree() ORDER BY ID PRIMARY KEY ID;

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE InheritanceParent
(
	InheritanceParentId          Int32,
	TypeDiscriminator   Nullable(Int32),
	Name                Nullable(String)
) ENGINE = MergeTree() ORDER BY InheritanceParentId PRIMARY KEY InheritanceParentId;

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE InheritanceChild
(
	InheritanceChildId           Int32,
	InheritanceParentId          Int32,
	TypeDiscriminator   Nullable(Int32),
	Name                Nullable(String)
) ENGINE = MergeTree() ORDER BY InheritanceChildId PRIMARY KEY InheritanceChildId;

BeforeExecute
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

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Person (PersonID, FirstName, LastName, MiddleName, Gender)
	VALUES
	(1, 'John',   'Pupkin',    NULL, 'M'),
	(2, 'Tester', 'Testerson', NULL, 'M'),
	(3, 'Jane',   'Doe',       NULL, 'F'),
	(4, 'Jürgen', 'König',     'Ko', 'M');

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE Doctor
(
	PersonID Int32,
	Taxonomy String
) ENGINE = MergeTree() ORDER BY PersonID PRIMARY KEY PersonID;

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Doctor (PersonID, Taxonomy) VALUES (1, 'Psychiatry');

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE Patient
(
	PersonID  Int32,
	Diagnosis String
) ENGINE = MergeTree() ORDER BY PersonID PRIMARY KEY PersonID;

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Patient (PersonID, Diagnosis) VALUES (2, 'Hallucination with Paranoid Bugs'' Delirium of Persecution');

BeforeExecute
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
	charDataType             Nullable(FixedString(1))

) ENGINE = MergeTree() ORDER BY ID PRIMARY KEY ID;

BeforeExecute
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

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE CollatedTable
(
	Id              Int32,
	CaseSensitive   Nullable(String),
	CaseInsensitive Nullable(String)
)  ENGINE = MergeTree() ORDER BY Id PRIMARY KEY Id;

BeforeExecute
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
-- SKIP ClickHouse.Octonica BEGIN
	FieldBoolean    Nullable(Bool),
-- SKIP ClickHouse.Octonica END
-- SKIP ClickHouse.Client BEGIN
-- SKIP ClickHouse.MySql END
-- SKIP ClickHouse.Client END
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
-- SKIP ClickHouse.Octonica BEGIN
	FieldBoolean    Nullable(Bool),
-- SKIP ClickHouse.Octonica END
-- SKIP ClickHouse.Client BEGIN
-- SKIP ClickHouse.MySql END
-- SKIP ClickHouse.Client END
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
(toInt32(1),toDecimal128('1.11', 10),toDateTime64('2001-01-11 01:11:21.100', 3),NULL,true,toUUID('ef129165-6ffe-4df9-bb6b-bb16e413c883'),toInt16(1),NULL,toInt64(1),NULL),
(toInt32(2),toDecimal128('2.49', 10),toDateTime64('2005-05-15 05:15:25.500', 3),NULL,false,toUUID('bc663a61-7b40-4681-ac38-f9aaf55b706b'),toInt16(2),NULL,toInt64(2),''),
(toInt32(3),toDecimal128('3.99', 10),toDateTime64('2009-09-19 09:19:29.090', 3),NULL,true,toUUID('d2f970c0-35ac-4987-9cd5-5badb1757436'),toInt16(3),NULL,NULL,'1'),
(toInt32(4),toDecimal128('4.50', 10),toDateTime64('2009-09-20 09:19:29.090', 3),NULL,false,toUUID('40932fdb-1543-4e4a-ac2c-ca371604fb4b'),toInt16(4),NULL,NULL,'2'),
(toInt32(5),toDecimal128('5.50', 10),toDateTime64('2009-09-20 09:19:29.090', 3),NULL,true,toUUID('febe3eca-cb5f-40b2-ad39-2979d312afca'),toInt16(5),NULL,NULL,'3'),
(toInt32(6),toDecimal128('6.55', 10),toDateTime64('2009-09-22 09:19:29.090', 3),NULL,false,toUUID('8d3c5d1d-47db-4730-9fe7-968f6228a4c0'),toInt16(6),NULL,NULL,'4'),
(toInt32(7),toDecimal128('7.00', 10),toDateTime64('2009-09-23 09:19:29.090', 3),NULL,true,toUUID('48094115-83af-46dd-a906-bff26ee21ee2'),toInt16(7),NULL,NULL,'5'),
(toInt32(8),toDecimal128('8.99', 10),toDateTime64('2009-09-24 09:19:29.090', 3),NULL,false,toUUID('c1139f1f-1335-4cd4-937e-92602f732dd3'),toInt16(8),NULL,NULL,'6'),
(toInt32(9),toDecimal128('9.63', 10),toDateTime64('2009-09-25 09:19:29.090', 3),NULL,true,toUUID('46c5c512-3d4b-4cf7-b4e7-1de080789e5d'),toInt16(9),NULL,NULL,'7'),
(toInt32(10),toDecimal128('10.77', 10),toDateTime64('2009-09-26 09:19:29.090', 3),NULL,false,toUUID('61b2bc55-147f-4b40-93ed-a4aa83602fee'),toInt16(10),NULL,NULL,'8'),
(toInt32(11),toDecimal128('11.45', 10),toDateTime64('2009-09-27 00:00:00.000', 3),NULL,true,toUUID('d3021d18-97f0-4dc0-98d0-f0c7df4a1230'),toInt16(11),NULL,NULL,'9'),
(toInt32(12),toDecimal128('11.45', 10),toDateTime64('2012-11-07 19:19:29.090', 3),NULL,true,toUUID('03021d18-97f0-4dc0-98d0-f0c7df4a1230'),toInt16(12),NULL,NULL,'0')

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(toInt32(1),toInt32(1)),
(toInt32(2),NULL),
(toInt32(3),toInt32(3)),
(toInt32(4),NULL),
(toInt32(5),toInt32(5)),
(toInt32(6),toInt32(6)),
(toInt32(7),toInt32(1))

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Child
(
	ParentID,
	ChildID
)
VALUES
(toInt32(1),toInt32(11)),
(toInt32(2),toInt32(21)),
(toInt32(2),toInt32(22)),
(toInt32(3),toInt32(31)),
(toInt32(3),toInt32(32)),
(toInt32(3),toInt32(33)),
(toInt32(4),toInt32(41)),
(toInt32(4),toInt32(42)),
(toInt32(4),toInt32(43)),
(toInt32(4),toInt32(44)),
(toInt32(6),toInt32(61)),
(toInt32(6),toInt32(62)),
(toInt32(6),toInt32(63)),
(toInt32(6),toInt32(64)),
(toInt32(6),toInt32(65)),
(toInt32(6),toInt32(66)),
(toInt32(7),toInt32(77))

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO GrandChild
(
	ParentID,
	ChildID,
	GrandChildID
)
VALUES
(toInt32(1),toInt32(11),toInt32(111)),
(toInt32(2),toInt32(21),toInt32(211)),
(toInt32(2),toInt32(21),toInt32(212)),
(toInt32(2),toInt32(22),toInt32(221)),
(toInt32(2),toInt32(22),toInt32(222)),
(toInt32(3),toInt32(31),toInt32(311)),
(toInt32(3),toInt32(31),toInt32(312)),
(toInt32(3),toInt32(31),toInt32(313)),
(toInt32(3),toInt32(32),toInt32(321)),
(toInt32(3),toInt32(32),toInt32(322)),
(toInt32(3),toInt32(32),toInt32(323)),
(toInt32(3),toInt32(33),toInt32(331)),
(toInt32(3),toInt32(33),toInt32(332)),
(toInt32(3),toInt32(33),toInt32(333)),
(toInt32(4),toInt32(41),toInt32(411)),
(toInt32(4),toInt32(41),toInt32(412)),
(toInt32(4),toInt32(41),toInt32(413)),
(toInt32(4),toInt32(41),toInt32(414)),
(toInt32(4),toInt32(42),toInt32(421)),
(toInt32(4),toInt32(42),toInt32(422)),
(toInt32(4),toInt32(42),toInt32(423)),
(toInt32(4),toInt32(42),toInt32(424))

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InheritanceParent
(
	InheritanceParentId,
	TypeDiscriminator,
	Name
)
VALUES
(toInt32(1),NULL,NULL),
(toInt32(2),toInt32(1),NULL),
(toInt32(3),toInt32(2),'InheritanceParent2')

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InheritanceChild
(
	InheritanceChildId,
	TypeDiscriminator,
	InheritanceParentId,
	Name
)
VALUES
(toInt32(1),NULL,toInt32(1),NULL),
(toInt32(2),toInt32(1),toInt32(2),NULL),
(toInt32(3),toInt32(2),toInt32(3),'InheritanceParent2')

