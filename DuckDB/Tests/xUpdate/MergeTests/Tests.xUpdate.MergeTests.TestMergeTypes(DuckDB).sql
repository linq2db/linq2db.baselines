-- DuckDB

DELETE FROM
	TestMerge1 t1

-- DuckDB

DELETE FROM
	TestMerge2 t1

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $FieldInt32  -- Int32
SET     $FieldInt32 = NULL
DECLARE $FieldInt64  -- Int64
SET     $FieldInt64 = NULL
DECLARE $FieldBoolean  -- Boolean
SET     $FieldBoolean = NULL
DECLARE $FieldString NVarChar -- String
SET     $FieldString = NULL
DECLARE $FieldNString NVarChar -- String
SET     $FieldNString = NULL
DECLARE $FieldChar NChar(1) -- StringFixedLength
SET     $FieldChar = NULL
DECLARE $FieldNChar NChar(1) -- StringFixedLength
SET     $FieldNChar = NULL
DECLARE $FieldFloat  -- Single
SET     $FieldFloat = NULL
DECLARE $FieldDouble  -- Double
SET     $FieldDouble = NULL
DECLARE $FieldDateTime  -- DateTime2
SET     $FieldDateTime = NULL
DECLARE $FieldDateTime2  -- DateTimeOffset
SET     $FieldDateTime2 = NULL
DECLARE $FieldBinary Binary
SET     $FieldBinary = NULL
DECLARE $FieldGuid  -- Guid
SET     $FieldGuid = NULL
DECLARE $FieldDecimal Decimal
SET     $FieldDecimal = NULL
DECLARE $FieldDate  -- DateTime2
SET     $FieldDate = NULL
DECLARE $FieldTime  -- Time
SET     $FieldTime = NULL
DECLARE $FieldEnumString NVarChar(5) -- String
SET     $FieldEnumString = NULL
DECLARE $FieldEnumNumber  -- Int32
SET     $FieldEnumNumber = NULL

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
	$Id,
	$FieldInt32,
	$FieldInt64,
	$FieldBoolean,
	$FieldString,
	$FieldNString,
	$FieldChar,
	$FieldNChar,
	$FieldFloat,
	$FieldDouble,
	$FieldDateTime,
	$FieldDateTime2,
	$FieldBinary,
	$FieldGuid,
	$FieldDecimal,
	$FieldDate,
	$FieldTime,
	$FieldEnumString,
	$FieldEnumNumber
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $FieldInt32  -- Int32
SET     $FieldInt32 = -2147483647
DECLARE $FieldInt64  -- Int64
SET     $FieldInt64 = -9223372036854775807
DECLARE $FieldBoolean  -- Boolean
SET     $FieldBoolean = True
DECLARE $FieldString NVarChar(13) -- String
SET     $FieldString = 'normal strinG'
DECLARE $FieldNString NVarChar(13) -- String
SET     $FieldNString = 'всЁ нормально'
DECLARE $FieldChar NChar(1) -- StringFixedLength
SET     $FieldChar = '*'
DECLARE $FieldNChar NChar(1) -- StringFixedLength
SET     $FieldNChar = 'ё'
DECLARE $FieldFloat  -- Single
SET     $FieldFloat = '-3.40282002E+38'::FLOAT
DECLARE $FieldDouble  -- Double
SET     $FieldDouble = -1.7976931348623157E+308
DECLARE $FieldDateTime  -- DateTime2
SET     $FieldDateTime = '2000-11-12 21:14:15.167000'::TIMESTAMP
DECLARE $FieldDateTime2  -- DateTimeOffset
SET     $FieldDateTime2 = '2000-11-22 12:59:15.124456+00'::TIMESTAMPTZ
DECLARE $FieldBinary Binary(0)
SET     $FieldBinary = ''::BLOB
DECLARE $FieldGuid  -- Guid
SET     $FieldGuid = '00000000-0000-0000-0000-000000000000'::UUID
DECLARE $FieldDecimal Decimal(18, 10)
SET     $FieldDecimal = 12345678.9012345678
DECLARE $FieldDate  -- DateTime2
SET     $FieldDate = '2000-11-23 00:00:00.000000'::TIMESTAMP
DECLARE $FieldTime  -- Time
SET     $FieldTime = '09:44:34.000432'::TIME
DECLARE $FieldEnumString NVarChar(5) -- String
SET     $FieldEnumString = 'FIRST'
DECLARE $FieldEnumNumber  -- Int32
SET     $FieldEnumNumber = NULL

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
	$Id,
	$FieldInt32,
	$FieldInt64,
	$FieldBoolean,
	$FieldString,
	$FieldNString,
	$FieldChar,
	$FieldNChar,
	$FieldFloat,
	$FieldDouble,
	$FieldDateTime,
	$FieldDateTime2,
	$FieldBinary,
	$FieldGuid,
	$FieldDecimal,
	$FieldDate,
	$FieldTime,
	$FieldEnumString,
	$FieldEnumNumber
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 3
DECLARE $FieldInt32  -- Int32
SET     $FieldInt32 = 2147483647
DECLARE $FieldInt64  -- Int64
SET     $FieldInt64 = 9223372036854775807
DECLARE $FieldBoolean  -- Boolean
SET     $FieldBoolean = False
DECLARE $FieldString NVarChar(10) -- String
SET     $FieldString = 'test
	'
DECLARE $FieldNString NVarChar(14) -- String
SET     $FieldNString = 'ЙЦУКЩывапрм
q'
DECLARE $FieldChar NChar(1) -- StringFixedLength
SET     $FieldChar = '&'
DECLARE $FieldNChar NChar(1) -- StringFixedLength
SET     $FieldNChar = '>'
DECLARE $FieldFloat  -- Single
SET     $FieldFloat = '3.40282002E+38'::FLOAT
DECLARE $FieldDouble  -- Double
SET     $FieldDouble = 1.7976931348623157E+308
DECLARE $FieldDateTime  -- DateTime2
SET     $FieldDateTime = '2001-10-12 21:14:15.167000'::TIMESTAMP
DECLARE $FieldDateTime2  -- DateTimeOffset
SET     $FieldDateTime2 = '2001-11-22 13:29:15.123456+00'::TIMESTAMPTZ
DECLARE $FieldBinary Binary(6)
SET     $FieldBinary = '\x00\x01\x02\x03\x00\x04'::BLOB
DECLARE $FieldGuid  -- Guid
SET     $FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'::UUID
DECLARE $FieldDecimal Decimal(18, 10)
SET     $FieldDecimal = -99999999.9999999999
DECLARE $FieldDate  -- DateTime2
SET     $FieldDate = '2123-11-23 00:00:00.000000'::TIMESTAMP
DECLARE $FieldTime  -- Time
SET     $FieldTime = '00:44:34.000432'::TIME
DECLARE $FieldEnumString NVarChar(5) -- String
SET     $FieldEnumString = ''
DECLARE $FieldEnumNumber  -- Int32
SET     $FieldEnumNumber = 0

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
	$Id,
	$FieldInt32,
	$FieldInt64,
	$FieldBoolean,
	$FieldString,
	$FieldNString,
	$FieldChar,
	$FieldNChar,
	$FieldFloat,
	$FieldDouble,
	$FieldDateTime,
	$FieldDateTime2,
	$FieldBinary,
	$FieldGuid,
	$FieldDecimal,
	$FieldDate,
	$FieldTime,
	$FieldEnumString,
	$FieldEnumNumber
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 4
DECLARE $FieldInt32  -- Int32
SET     $FieldInt32 = -123
DECLARE $FieldInt64  -- Int64
SET     $FieldInt64 = 987
DECLARE $FieldBoolean  -- Boolean
SET     $FieldBoolean = NULL
DECLARE $FieldString NVarChar(20) -- String
SET     $FieldString = '`~!@#$%^&*()_+{}|[]\'
DECLARE $FieldNString NVarChar(12) -- String
SET     $FieldNString = '<>?/.,;''щЩ":'
DECLARE $FieldChar NChar(1) -- StringFixedLength
SET     $FieldChar = ''
DECLARE $FieldNChar NChar(1) -- StringFixedLength
SET     $FieldNChar = '
'
DECLARE $FieldFloat  -- Single
SET     $FieldFloat = '1.17549996E-38'::FLOAT
DECLARE $FieldDouble  -- Double
SET     $FieldDouble = -2.2250738585072014E-308
DECLARE $FieldDateTime  -- DateTime2
SET     $FieldDateTime = '2098-10-12 21:14:15.997000'::TIMESTAMP
DECLARE $FieldDateTime2  -- DateTimeOffset
SET     $FieldDateTime2 = '2001-11-22 11:35:16.122456+00'::TIMESTAMPTZ
DECLARE $FieldBinary Binary(6)
SET     $FieldBinary = '\xFF\xC8\x64\x32\x14\x00'::BLOB
DECLARE $FieldGuid  -- Guid
SET     $FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'::UUID
DECLARE $FieldDecimal Decimal(18, 10)
SET     $FieldDecimal = 99999999.9999999999
DECLARE $FieldDate  -- DateTime2
SET     $FieldDate = '2110-11-23 00:00:00.000000'::TIMESTAMP
DECLARE $FieldTime  -- Time
SET     $FieldTime = '00:00:00'::TIME
DECLARE $FieldEnumString NVarChar(5) -- String
SET     $FieldEnumString = ''
DECLARE $FieldEnumNumber  -- Int32
SET     $FieldEnumNumber = 2147483647

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
	$Id,
	$FieldInt32,
	$FieldInt64,
	$FieldBoolean,
	$FieldString,
	$FieldNString,
	$FieldChar,
	$FieldNChar,
	$FieldFloat,
	$FieldDouble,
	$FieldDateTime,
	$FieldDateTime2,
	$FieldBinary,
	$FieldGuid,
	$FieldDecimal,
	$FieldDate,
	$FieldTime,
	$FieldEnumString,
	$FieldEnumNumber
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 3
DECLARE $FieldInt32  -- Int32
SET     $FieldInt32 = -123
DECLARE $FieldInt64  -- Int64
SET     $FieldInt64 = 987
DECLARE $FieldBoolean  -- Boolean
SET     $FieldBoolean = NULL
DECLARE $FieldString NVarChar(12) -- String
SET     $FieldString = '<>?/.,;''zZ":'
DECLARE $FieldNString NVarChar(20) -- String
SET     $FieldNString = '`~!@#$%^&*()_+{}|[]\'
DECLARE $FieldChar NChar(1) -- StringFixedLength
SET     $FieldChar = ''
DECLARE $FieldNChar NChar(1) -- StringFixedLength
SET     $FieldNChar = ''
DECLARE $FieldFloat  -- Single
SET     $FieldFloat = '-1.17549996E-38'::FLOAT
DECLARE $FieldDouble  -- Double
SET     $FieldDouble = 2.2250738585072014E-308
DECLARE $FieldDateTime  -- DateTime2
SET     $FieldDateTime = '2098-10-12 21:14:15.907000'::TIMESTAMP
DECLARE $FieldDateTime2  -- DateTimeOffset
SET     $FieldDateTime2 = '2001-11-22 14:53:14.123345+00'::TIMESTAMPTZ
DECLARE $FieldBinary Binary(6)
SET     $FieldBinary = '\xFF\xC8\x64\x32\x14\x00'::BLOB
DECLARE $FieldGuid  -- Guid
SET     $FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'::UUID
DECLARE $FieldDecimal Decimal(3, 3)
SET     $FieldDecimal = -0.123
DECLARE $FieldDate  -- DateTime2
SET     $FieldDate = '2111-11-23 00:00:00.000000'::TIMESTAMP
DECLARE $FieldTime  -- Time
SET     $FieldTime = '23:59:59.000999'::TIME
DECLARE $FieldEnumString NVarChar(5) -- String
SET     $FieldEnumString = NULL
DECLARE $FieldEnumNumber  -- Int32
SET     $FieldEnumNumber = -2147483647

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
	$Id,
	$FieldInt32,
	$FieldInt64,
	$FieldBoolean,
	$FieldString,
	$FieldNString,
	$FieldChar,
	$FieldNChar,
	$FieldFloat,
	$FieldDouble,
	$FieldDateTime,
	$FieldDateTime2,
	$FieldBinary,
	$FieldGuid,
	$FieldDecimal,
	$FieldDate,
	$FieldTime,
	$FieldEnumString,
	$FieldEnumNumber
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 4
DECLARE $FieldInt32  -- Int32
SET     $FieldInt32 = 2147483647
DECLARE $FieldInt64  -- Int64
SET     $FieldInt64 = 9223372036854775807
DECLARE $FieldBoolean  -- Boolean
SET     $FieldBoolean = False
DECLARE $FieldString NVarChar(9) -- String
SET     $FieldString = 'test
	'
DECLARE $FieldNString NVarChar(14) -- String
SET     $FieldNString = 'ЙЦУКЩывапрм
q'
DECLARE $FieldChar NChar(1) -- StringFixedLength
SET     $FieldChar = '1'
DECLARE $FieldNChar NChar(1) -- StringFixedLength
SET     $FieldNChar = ' '
DECLARE $FieldFloat  -- Single
SET     $FieldFloat = '3.40282002E+38'::FLOAT
DECLARE $FieldDouble  -- Double
SET     $FieldDouble = 1.7976931348623157E+308
DECLARE $FieldDateTime  -- DateTime2
SET     $FieldDateTime = '2001-10-12 21:14:15.167000'::TIMESTAMP
DECLARE $FieldDateTime2  -- DateTimeOffset
SET     $FieldDateTime2 = '2001-11-22 13:29:15.321000+00'::TIMESTAMPTZ
DECLARE $FieldBinary Binary(6)
SET     $FieldBinary = '\x00\x01\x02\x03\x00\x04'::BLOB
DECLARE $FieldGuid  -- Guid
SET     $FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'::UUID
DECLARE $FieldDecimal Decimal(18, 10)
SET     $FieldDecimal = -99999999.9999999999
DECLARE $FieldDate  -- DateTime2
SET     $FieldDate = '2123-11-23 00:00:00.000000'::TIMESTAMP
DECLARE $FieldTime  -- Time
SET     $FieldTime = '14:44:33'::TIME
DECLARE $FieldEnumString NVarChar(5) -- String
SET     $FieldEnumString = ''
DECLARE $FieldEnumNumber  -- Int32
SET     $FieldEnumNumber = 0

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
	$Id,
	$FieldInt32,
	$FieldInt64,
	$FieldBoolean,
	$FieldString,
	$FieldNString,
	$FieldChar,
	$FieldNChar,
	$FieldFloat,
	$FieldDouble,
	$FieldDateTime,
	$FieldDateTime2,
	$FieldBinary,
	$FieldGuid,
	$FieldDecimal,
	$FieldDate,
	$FieldTime,
	$FieldEnumString,
	$FieldEnumNumber
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 5
DECLARE $FieldInt32  -- Int32
SET     $FieldInt32 = -123
DECLARE $FieldInt64  -- Int64
SET     $FieldInt64 = 987
DECLARE $FieldBoolean  -- Boolean
SET     $FieldBoolean = NULL
DECLARE $FieldString NVarChar(12) -- String
SET     $FieldString = '<>?/.,;''zZ":'
DECLARE $FieldNString NVarChar(20) -- String
SET     $FieldNString = '`~!@#$%^&*()_+{}|[]\'
DECLARE $FieldChar NChar(1) -- StringFixedLength
SET     $FieldChar = ' '
DECLARE $FieldNChar NChar(1) -- StringFixedLength
SET     $FieldNChar = ' '
DECLARE $FieldFloat  -- Single
SET     $FieldFloat = '-1.17549996E-38'::FLOAT
DECLARE $FieldDouble  -- Double
SET     $FieldDouble = 2.2250738585072014E-308
DECLARE $FieldDateTime  -- DateTime2
SET     $FieldDateTime = '2098-10-12 21:14:15.913000'::TIMESTAMP
DECLARE $FieldDateTime2  -- DateTimeOffset
SET     $FieldDateTime2 = '2001-11-22 14:53:15+00'::TIMESTAMPTZ
DECLARE $FieldBinary Binary(6)
SET     $FieldBinary = '\xFF\xC8\x64\x32\x14\x00'::BLOB
DECLARE $FieldGuid  -- Guid
SET     $FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'::UUID
DECLARE $FieldDecimal Decimal(3, 3)
SET     $FieldDecimal = -0.123
DECLARE $FieldDate  -- DateTime2
SET     $FieldDate = '2010-11-23 00:00:00.000000'::TIMESTAMP
DECLARE $FieldTime  -- Time
SET     $FieldTime = '23:59:59.000999'::TIME
DECLARE $FieldEnumString NVarChar(5) -- String
SET     $FieldEnumString = NULL
DECLARE $FieldEnumNumber  -- Int32
SET     $FieldEnumNumber = -2147483647

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
	$Id,
	$FieldInt32,
	$FieldInt64,
	$FieldBoolean,
	$FieldString,
	$FieldNString,
	$FieldChar,
	$FieldNChar,
	$FieldFloat,
	$FieldDouble,
	$FieldDateTime,
	$FieldDateTime2,
	$FieldBinary,
	$FieldGuid,
	$FieldDecimal,
	$FieldDate,
	$FieldTime,
	$FieldEnumString,
	$FieldEnumNumber
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 6
DECLARE $FieldInt32  -- Int32
SET     $FieldInt32 = 2147483647
DECLARE $FieldInt64  -- Int64
SET     $FieldInt64 = 9223372036854775807
DECLARE $FieldBoolean  -- Boolean
SET     $FieldBoolean = False
DECLARE $FieldString NVarChar(12) -- String
SET     $FieldString = 'test
	  '
DECLARE $FieldNString NVarChar(17) -- String
SET     $FieldNString = 'ЙЦУКЩывапрм
q  '
DECLARE $FieldChar NChar(1) -- StringFixedLength
SET     $FieldChar = '-'
DECLARE $FieldNChar NChar(1) -- StringFixedLength
SET     $FieldNChar = '~'
DECLARE $FieldFloat  -- Single
SET     $FieldFloat = '3.40282002E+38'::FLOAT
DECLARE $FieldDouble  -- Double
SET     $FieldDouble = 1.7976931348623157E+308
DECLARE $FieldDateTime  -- DateTime2
SET     $FieldDateTime = '2001-10-12 21:14:15.167000'::TIMESTAMP
DECLARE $FieldDateTime2  -- DateTimeOffset
SET     $FieldDateTime2 = '2001-11-22 13:29:15.999000+00'::TIMESTAMPTZ
DECLARE $FieldBinary Binary(6)
SET     $FieldBinary = '\x00\x01\x02\x03\x00\x04'::BLOB
DECLARE $FieldGuid  -- Guid
SET     $FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'::UUID
DECLARE $FieldDecimal Decimal(18, 10)
SET     $FieldDecimal = -99999999.9999999999
DECLARE $FieldDate  -- DateTime2
SET     $FieldDate = '2123-11-23 00:00:00.000000'::TIMESTAMP
DECLARE $FieldTime  -- Time
SET     $FieldTime = '22:44:33'::TIME
DECLARE $FieldEnumString NVarChar(5) -- String
SET     $FieldEnumString = ''
DECLARE $FieldEnumNumber  -- Int32
SET     $FieldEnumNumber = 0

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
	$Id,
	$FieldInt32,
	$FieldInt64,
	$FieldBoolean,
	$FieldString,
	$FieldNString,
	$FieldChar,
	$FieldNChar,
	$FieldFloat,
	$FieldDouble,
	$FieldDateTime,
	$FieldDateTime2,
	$FieldBinary,
	$FieldGuid,
	$FieldDecimal,
	$FieldDate,
	$FieldTime,
	$FieldEnumString,
	$FieldEnumNumber
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

