﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	TestMerge1
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	TestMerge2
DELETE WHERE 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO TestMerge1
(
	Id,
	Field1,
	FieldInt64,
	FieldBoolean,
	FieldString,
	FieldNString,
	FieldChar,
	FieldNChar,
	FieldFloat,
	FieldDouble,
	FieldDateTime,
	FieldDateTime2,
	FieldBinary,
	FieldGuid,
	FieldDecimal,
	FieldDate,
	FieldTime,
	FieldEnumString,
	FieldEnumNumber
)
VALUES
(
	1,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO TestMerge1
(
	Id,
	Field1,
	FieldInt64,
	FieldBoolean,
	FieldString,
	FieldNString,
	FieldChar,
	FieldNChar,
	FieldFloat,
	FieldDouble,
	FieldDateTime,
	FieldDateTime2,
	FieldBinary,
	FieldGuid,
	FieldDecimal,
	FieldDate,
	FieldTime,
	FieldEnumString,
	FieldEnumNumber
)
VALUES
(
	2,
	-2147483647,
	toInt64(-9223372036854775807),
	true,
	'normal strinG',
	'всЁ нормально',
	'*',
	'ё',
	toFloat32(-3.40282002E+38),
	toFloat64(-1.7976931348623157E+308),
	toDateTime64('2000-11-12 21:14:15.167', 3),
	toDateTime64('2000-11-22 12:59:15.1244567', 7),
	'',
	toUUID('00000000-0000-0000-0000-000000000000'),
	toDecimal128('12345678.9012345678', 10),
	toDate('2000-11-23'),
	toInt64(350746534321),
	'FIRST',
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO TestMerge1
(
	Id,
	Field1,
	FieldInt64,
	FieldBoolean,
	FieldString,
	FieldNString,
	FieldChar,
	FieldNChar,
	FieldFloat,
	FieldDouble,
	FieldDateTime,
	FieldDateTime2,
	FieldBinary,
	FieldGuid,
	FieldDecimal,
	FieldDate,
	FieldTime,
	FieldEnumString,
	FieldEnumNumber
)
VALUES
(
	3,
	2147483647,
	toInt64(9223372036854775807),
	false,
	'test
	',
	'ЙЦУКЩывапрм
q',
	'&',
	'>',
	toFloat32(3.40282002E+38),
	toFloat64(1.7976931348623157E+308),
	toDateTime64('2001-10-12 21:14:15.167', 3),
	toDateTime64('2001-11-22 13:29:15.1234567', 7),
	'\x00\x01\x02\x03\x00\x04',
	toUUID('ffffffff-ffff-ffff-ffff-ffffffffffff'),
	toDecimal128('-99999999.9999999999', 10),
	toDate('2123-11-23'),
	toInt64(26746414321),
	' ',
	0
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO TestMerge1
(
	Id,
	Field1,
	FieldInt64,
	FieldBoolean,
	FieldString,
	FieldNString,
	FieldChar,
	FieldNChar,
	FieldFloat,
	FieldDouble,
	FieldDateTime,
	FieldDateTime2,
	FieldBinary,
	FieldGuid,
	FieldDecimal,
	FieldDate,
	FieldTime,
	FieldEnumString,
	FieldEnumNumber
)
VALUES
(
	4,
	-123,
	toInt64(987),
	NULL,
	'`~!@#$%^&*()_+{}|[]\\',
	'<>?/.,;\'щЩ":',
	'',
	'
',
	toFloat32(1.17549996E-38),
	toFloat64(-2.2250738585072014E-308),
	toDateTime64('2098-10-12 21:14:15.997', 3),
	toDateTime64('2001-11-22 11:35:16.1224567', 7),
	'\xFF\xC8\x64\x32\x14\x00',
	toUUID('ffffffff-ffff-ffff-ffff-ffffffffffff'),
	toDecimal128('99999999.9999999999', 10),
	toDate('2110-11-23'),
	toInt64(0),
	'',
	2147483647
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO TestMerge2
(
	Id,
	Field1,
	FieldInt64,
	FieldBoolean,
	FieldString,
	FieldNString,
	FieldChar,
	FieldNChar,
	FieldFloat,
	FieldDouble,
	FieldDateTime,
	FieldDateTime2,
	FieldBinary,
	FieldGuid,
	FieldDecimal,
	FieldDate,
	FieldTime,
	FieldEnumString,
	FieldEnumNumber
)
VALUES
(
	3,
	-123,
	toInt64(987),
	NULL,
	'<>?/.,;\'zZ":',
	'`~!@#$%^&*()_+{}|[]\\',
	'',
	'',
	toFloat32(-1.17549996E-38),
	toFloat64(2.2250738585072014E-308),
	toDateTime64('2098-10-12 21:14:15.907', 3),
	toDateTime64('2001-11-22 14:53:14.1233457', 7),
	'\xFF\xC8\x64\x32\x14\x00',
	toUUID('ffffffff-ffff-ffff-ffff-ffffffffffff'),
	toDecimal128('-0.123', 10),
	toDate('2111-11-23'),
	toInt64(863999999999),
	NULL,
	-2147483647
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO TestMerge2
(
	Id,
	Field1,
	FieldInt64,
	FieldBoolean,
	FieldString,
	FieldNString,
	FieldChar,
	FieldNChar,
	FieldFloat,
	FieldDouble,
	FieldDateTime,
	FieldDateTime2,
	FieldBinary,
	FieldGuid,
	FieldDecimal,
	FieldDate,
	FieldTime,
	FieldEnumString,
	FieldEnumNumber
)
VALUES
(
	4,
	2147483647,
	toInt64(9223372036854775807),
	false,
	'test
	',
	'ЙЦУКЩывапрм
q',
	'1',
	' ',
	toFloat32(3.40282002E+38),
	toFloat64(1.7976931348623157E+308),
	toDateTime64('2001-10-12 21:14:15.167', 3),
	toDateTime64('2001-11-22 13:29:15.3210000', 7),
	'\x00\x01\x02\x03\x00\x04',
	toUUID('ffffffff-ffff-ffff-ffff-ffffffffffff'),
	toDecimal128('-99999999.9999999999', 10),
	toDate('2123-11-23'),
	toInt64(530732340000),
	' ',
	0
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO TestMerge2
(
	Id,
	Field1,
	FieldInt64,
	FieldBoolean,
	FieldString,
	FieldNString,
	FieldChar,
	FieldNChar,
	FieldFloat,
	FieldDouble,
	FieldDateTime,
	FieldDateTime2,
	FieldBinary,
	FieldGuid,
	FieldDecimal,
	FieldDate,
	FieldTime,
	FieldEnumString,
	FieldEnumNumber
)
VALUES
(
	5,
	-123,
	toInt64(987),
	NULL,
	'<>?/.,;\'zZ":',
	'`~!@#$%^&*()_+{}|[]\\',
	' ',
	' ',
	toFloat32(-1.17549996E-38),
	toFloat64(2.2250738585072014E-308),
	toDateTime64('2098-10-12 21:14:15.913', 3),
	toDateTime64('2001-11-22 14:53:15.0000000', 7),
	'\xFF\xC8\x64\x32\x14\x00',
	toUUID('ffffffff-ffff-ffff-ffff-ffffffffffff'),
	toDecimal128('-0.123', 10),
	toDate('2010-11-23'),
	toInt64(863999999999),
	NULL,
	-2147483647
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO TestMerge2
(
	Id,
	Field1,
	FieldInt64,
	FieldBoolean,
	FieldString,
	FieldNString,
	FieldChar,
	FieldNChar,
	FieldFloat,
	FieldDouble,
	FieldDateTime,
	FieldDateTime2,
	FieldBinary,
	FieldGuid,
	FieldDecimal,
	FieldDate,
	FieldTime,
	FieldEnumString,
	FieldEnumNumber
)
VALUES
(
	6,
	2147483647,
	toInt64(9223372036854775807),
	false,
	'test
	  ',
	'ЙЦУКЩывапрм
q  ',
	'-',
	'~',
	toFloat32(3.40282002E+38),
	toFloat64(1.7976931348623157E+308),
	toDateTime64('2001-10-12 21:14:15.167', 3),
	toDateTime64('2001-11-22 13:29:15.9990000', 7),
	'\x00\x01\x02\x03\x00\x04',
	toUUID('ffffffff-ffff-ffff-ffff-ffffffffffff'),
	toDecimal128('-99999999.9999999999', 10),
	toDate('2123-11-23'),
	toInt64(818730000000),
	' ',
	0
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Field1,
	t1.FieldInt64,
	t1.FieldBoolean,
	t1.FieldString,
	t1.FieldNString,
	t1.FieldChar,
	t1.FieldNChar,
	t1.FieldFloat,
	t1.FieldDouble,
	t1.FieldDateTime,
	t1.FieldDateTime2,
	t1.FieldBinary,
	t1.FieldGuid,
	t1.FieldDecimal,
	t1.FieldDate,
	t1.FieldTime,
	t1.FieldEnumString,
	t1.FieldEnumNumber
FROM
	TestMerge1 t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Field1,
	t1.FieldInt64,
	t1.FieldBoolean,
	t1.FieldString,
	t1.FieldNString,
	t1.FieldChar,
	t1.FieldNChar,
	t1.FieldFloat,
	t1.FieldDouble,
	t1.FieldDateTime,
	t1.FieldDateTime2,
	t1.FieldBinary,
	t1.FieldGuid,
	t1.FieldDecimal,
	t1.FieldDate,
	t1.FieldTime,
	t1.FieldEnumString,
	t1.FieldEnumNumber
FROM
	TestMerge2 t1
ORDER BY
	t1.Id

