-- DuckDB

DELETE FROM
	TestMerge1 t1

-- DuckDB

DELETE FROM
	TestMerge2 t1

-- DuckDB

MERGE INTO TestMerge1 Target
USING (VALUES
	(1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(2,-2147483647,-9223372036854775807,True,'normal strinG','всЁ нормально','*','ё','-3.40282002E+38'::FLOAT,-1.7976931348623157E+308,'2000-11-12 21:14:15.167000'::TIMESTAMP,'2000-11-22 12:59:15.124456+00'::TIMESTAMPTZ,''::BLOB,'00000000-0000-0000-0000-000000000000'::UUID,12345678.9012345678,'2000-11-23 00:00:00.000000'::TIMESTAMP,'09:44:34.653432'::TIME,'FIRST',NULL),
	(3,2147483647,9223372036854775807,False,'test
	','ЙЦУКЩывапрм
q','&','>','3.40282002E+38'::FLOAT,1.7976931348623157E+308,'2001-10-12 21:14:15.167000'::TIMESTAMP,'2001-11-22 13:29:15.123456+00'::TIMESTAMPTZ,'\x00\x01\x02\x03\x00\x04'::BLOB,'ffffffff-ffff-ffff-ffff-ffffffffffff'::UUID,-99999999.9999999999,'2123-11-23 00:00:00.000000'::TIMESTAMP,'00:44:34.641432'::TIME,'',0),
	(4,-123,987,NULL,'`~!@#$%^&*()_+{}|[]\','<>?/.,;''щЩ":','','
','1.17549996E-38'::FLOAT,-2.2250738585072014E-308,'2098-10-12 21:14:15.997000'::TIMESTAMP,'2001-11-22 11:35:16.122456+00'::TIMESTAMPTZ,'\xFF\xC8\x64\x32\x14\x00'::BLOB,'ffffffff-ffff-ffff-ffff-ffffffffffff'::UUID,99999999.9999999999,'2110-11-23 00:00:00.000000'::TIMESTAMP,'00:00:00'::TIME,'',2147483647)
) Source
(
	Id,
	FieldInt32,
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
ON (Target.Id = Source.Id)

WHEN NOT MATCHED THEN
INSERT
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
	Source.Id,
	Source.FieldInt32,
	Source.FieldInt64,
	Source.FieldBoolean,
	Source.FieldString,
	Source.FieldNString,
	Source.FieldChar,
	Source.FieldNChar,
	Source.FieldFloat,
	Source.FieldDouble,
	Source.FieldDateTime,
	Source.FieldDateTime2,
	Source.FieldBinary,
	Source.FieldGuid,
	Source.FieldDecimal,
	Source.FieldDate,
	Source.FieldTime,
	Source.FieldEnumString,
	Source.FieldEnumNumber
)

-- DuckDB

MERGE INTO TestMerge2 Target
USING (VALUES
	(3,-123,987,NULL,'<>?/.,;''zZ":','`~!@#$%^&*()_+{}|[]\','','','-1.17549996E-38'::FLOAT,2.2250738585072014E-308,'2098-10-12 21:14:15.907000'::TIMESTAMP,'2001-11-22 14:53:14.123345+00'::TIMESTAMPTZ,'\xFF\xC8\x64\x32\x14\x00'::BLOB,'ffffffff-ffff-ffff-ffff-ffffffffffff'::UUID,-0.123,'2111-11-23 00:00:00.000000'::TIMESTAMP,'23:59:59.999999'::TIME,NULL,-2147483647),
	(4,2147483647,9223372036854775807,False,'test
	','ЙЦУКЩывапрм
q','1',' ','3.40282002E+38'::FLOAT,1.7976931348623157E+308,'2001-10-12 21:14:15.167000'::TIMESTAMP,'2001-11-22 13:29:15.321000+00'::TIMESTAMPTZ,'\x00\x01\x02\x03\x00\x04'::BLOB,'ffffffff-ffff-ffff-ffff-ffffffffffff'::UUID,-99999999.9999999999,'2123-11-23 00:00:00.000000'::TIMESTAMP,'14:44:33.234000'::TIME,'',0),
	(5,-123,987,NULL,'<>?/.,;''zZ":','`~!@#$%^&*()_+{}|[]\',' ',' ','-1.17549996E-38'::FLOAT,2.2250738585072014E-308,'2098-10-12 21:14:15.913000'::TIMESTAMP,'2001-11-22 14:53:15+00'::TIMESTAMPTZ,'\xFF\xC8\x64\x32\x14\x00'::BLOB,'ffffffff-ffff-ffff-ffff-ffffffffffff'::UUID,-0.123,'2010-11-23 00:00:00.000000'::TIMESTAMP,'23:59:59.999999'::TIME,NULL,-2147483647),
	(6,2147483647,9223372036854775807,False,'test
	  ','ЙЦУКЩывапрм
q  ','-','~','3.40282002E+38'::FLOAT,1.7976931348623157E+308,'2001-10-12 21:14:15.167000'::TIMESTAMP,'2001-11-22 13:29:15.999000+00'::TIMESTAMPTZ,'\x00\x01\x02\x03\x00\x04'::BLOB,'ffffffff-ffff-ffff-ffff-ffffffffffff'::UUID,-99999999.9999999999,'2123-11-23 00:00:00.000000'::TIMESTAMP,'22:44:33'::TIME,'',0)
) Source
(
	Id,
	FieldInt32,
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
ON (Target.Id = Source.Id)

WHEN NOT MATCHED THEN
INSERT
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
	Source.Id,
	Source.FieldInt32,
	Source.FieldInt64,
	Source.FieldBoolean,
	Source.FieldString,
	Source.FieldNString,
	Source.FieldChar,
	Source.FieldNChar,
	Source.FieldFloat,
	Source.FieldDouble,
	Source.FieldDateTime,
	Source.FieldDateTime2,
	Source.FieldBinary,
	Source.FieldGuid,
	Source.FieldDecimal,
	Source.FieldDate,
	Source.FieldTime,
	Source.FieldEnumString,
	Source.FieldEnumNumber
)

-- DuckDB

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

-- DuckDB

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

