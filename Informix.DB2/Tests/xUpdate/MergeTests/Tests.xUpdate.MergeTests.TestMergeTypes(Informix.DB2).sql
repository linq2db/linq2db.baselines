-- Informix.DB2 Informix

DELETE FROM
	TestMerge1

-- Informix.DB2 Informix

DELETE FROM
	TestMerge2

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @FieldInt32 Integer -- Int32
SET     @FieldInt32 = NULL
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = NULL
DECLARE @FieldBoolean SmallInt -- Boolean
SET     @FieldBoolean = NULL
DECLARE @FieldString VarChar -- String
SET     @FieldString = NULL
DECLARE @FieldChar Char -- StringFixedLength
SET     @FieldChar = NULL
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = NULL
DECLARE @FieldDouble Double
SET     @FieldDouble = NULL
DECLARE @FieldDateTime Timestamp -- DateTime
SET     @FieldDateTime = NULL
DECLARE @FieldDecimal Decimal
SET     @FieldDecimal = NULL
DECLARE @FieldDate Date
SET     @FieldDate = NULL
DECLARE @FieldEnumString VarChar -- String
SET     @FieldEnumString = NULL
DECLARE @FieldEnumNumber Integer -- Int32
SET     @FieldEnumNumber = NULL

INSERT INTO TestMerge1
(
	Id,
	Field1,
	FieldInt64,
	FieldBoolean,
	FieldString,
	FieldChar,
	FieldFloat,
	FieldDouble,
	FieldDateTime,
	FieldDecimal,
	FieldDate,
	FieldTime,
	FieldEnumString,
	FieldEnumNumber
)
VALUES
(
	@Id,
	@FieldInt32,
	@FieldInt64,
	@FieldBoolean,
	@FieldString,
	@FieldChar,
	@FieldFloat,
	@FieldDouble,
	@FieldDateTime,
	@FieldDecimal,
	@FieldDate,
	NULL,
	@FieldEnumString,
	@FieldEnumNumber
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @FieldInt32 Integer(4) -- Int32
SET     @FieldInt32 = -2147483647
DECLARE @FieldInt64 BigInt(8) -- Int64
SET     @FieldInt64 = -9223372036854775807
DECLARE @FieldBoolean Char(1) -- StringFixedLength
SET     @FieldBoolean = 't'
DECLARE @FieldString VarChar(13) -- String
SET     @FieldString = 'normal strinG'
DECLARE @FieldChar Char(1) -- StringFixedLength
SET     @FieldChar = '*'
DECLARE @FieldFloat Real(4) -- Single
SET     @FieldFloat = -3.40282002E+38
DECLARE @FieldDouble Double(8)
SET     @FieldDouble = -1.7976931348623157E+308
DECLARE @FieldDateTime Timestamp(16) -- DateTime
SET     @FieldDateTime = TO_DATE('2000-11-12 21:14:15.16700', '%Y-%m-%d %H:%M:%S.%F5')
DECLARE @FieldDecimal Decimal(16)
SET     @FieldDecimal = 12345678.9012345678
DECLARE @FieldDate Date(16)
SET     @FieldDate = TO_DATE('2000-11-23', '%Y-%m-%d')
DECLARE @FieldEnumString VarChar(5) -- String
SET     @FieldEnumString = 'FIRST'
DECLARE @FieldEnumNumber Integer -- Int32
SET     @FieldEnumNumber = NULL

INSERT INTO TestMerge1
(
	Id,
	Field1,
	FieldInt64,
	FieldBoolean,
	FieldString,
	FieldChar,
	FieldFloat,
	FieldDouble,
	FieldDateTime,
	FieldDecimal,
	FieldDate,
	FieldTime,
	FieldEnumString,
	FieldEnumNumber
)
VALUES
(
	@Id,
	@FieldInt32,
	@FieldInt64,
	@FieldBoolean,
	@FieldString,
	@FieldChar,
	@FieldFloat,
	@FieldDouble,
	@FieldDateTime,
	@FieldDecimal,
	@FieldDate,
	INTERVAL(0 09:44:34.65343) DAY TO FRACTION(5),
	@FieldEnumString,
	@FieldEnumNumber
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @FieldInt32 Integer(4) -- Int32
SET     @FieldInt32 = 2147483647
DECLARE @FieldInt64 BigInt(8) -- Int64
SET     @FieldInt64 = 9223372036854775807
DECLARE @FieldBoolean Char(1) -- StringFixedLength
SET     @FieldBoolean = 'f'
DECLARE @FieldString VarChar(10) -- String
SET     @FieldString = 'test' || chr(13) || chr(10) || '	'
DECLARE @FieldChar Char(1) -- StringFixedLength
SET     @FieldChar = '&'
DECLARE @FieldFloat Real(4) -- Single
SET     @FieldFloat = 3.40282002E+38
DECLARE @FieldDouble Double(8)
SET     @FieldDouble = 1.7976931348623157E+308
DECLARE @FieldDateTime Timestamp(16) -- DateTime
SET     @FieldDateTime = TO_DATE('2001-10-12 21:14:15.16700', '%Y-%m-%d %H:%M:%S.%F5')
DECLARE @FieldDecimal Decimal(16)
SET     @FieldDecimal = -99999999.9999999999
DECLARE @FieldDate Date(16)
SET     @FieldDate = TO_DATE('2123-11-23', '%Y-%m-%d')
DECLARE @FieldEnumString VarChar(1) -- String
SET     @FieldEnumString = ''
DECLARE @FieldEnumNumber Integer(4) -- Int32
SET     @FieldEnumNumber = 0

INSERT INTO TestMerge1
(
	Id,
	Field1,
	FieldInt64,
	FieldBoolean,
	FieldString,
	FieldChar,
	FieldFloat,
	FieldDouble,
	FieldDateTime,
	FieldDecimal,
	FieldDate,
	FieldTime,
	FieldEnumString,
	FieldEnumNumber
)
VALUES
(
	@Id,
	@FieldInt32,
	@FieldInt64,
	@FieldBoolean,
	@FieldString,
	@FieldChar,
	@FieldFloat,
	@FieldDouble,
	@FieldDateTime,
	@FieldDecimal,
	@FieldDate,
	INTERVAL(0 00:44:34.64143) DAY TO FRACTION(5),
	@FieldEnumString,
	@FieldEnumNumber
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4
DECLARE @FieldInt32 Integer(4) -- Int32
SET     @FieldInt32 = -123
DECLARE @FieldInt64 BigInt(8) -- Int64
SET     @FieldInt64 = 987
DECLARE @FieldBoolean SmallInt -- Boolean
SET     @FieldBoolean = NULL
DECLARE @FieldString VarChar(20) -- String
SET     @FieldString = '`~!@#$%^&*()_+{}|[]\'
DECLARE @FieldChar Char(1) -- StringFixedLength
SET     @FieldChar = chr(13)
DECLARE @FieldFloat Real(4) -- Single
SET     @FieldFloat = 1.17549996E-38
DECLARE @FieldDouble Double(8)
SET     @FieldDouble = -2.2250738585072014E-308
DECLARE @FieldDateTime Timestamp(16) -- DateTime
SET     @FieldDateTime = TO_DATE('2098-10-12 21:14:15.99700', '%Y-%m-%d %H:%M:%S.%F5')
DECLARE @FieldDecimal Decimal(16)
SET     @FieldDecimal = 99999999.9999999999
DECLARE @FieldDate Date(16)
SET     @FieldDate = TO_DATE('2110-11-23', '%Y-%m-%d')
DECLARE @FieldEnumString VarChar -- String
SET     @FieldEnumString = ''
DECLARE @FieldEnumNumber Integer(4) -- Int32
SET     @FieldEnumNumber = 2147483647

INSERT INTO TestMerge1
(
	Id,
	Field1,
	FieldInt64,
	FieldBoolean,
	FieldString,
	FieldChar,
	FieldFloat,
	FieldDouble,
	FieldDateTime,
	FieldDecimal,
	FieldDate,
	FieldTime,
	FieldEnumString,
	FieldEnumNumber
)
VALUES
(
	@Id,
	@FieldInt32,
	@FieldInt64,
	@FieldBoolean,
	@FieldString,
	@FieldChar,
	@FieldFloat,
	@FieldDouble,
	@FieldDateTime,
	@FieldDecimal,
	@FieldDate,
	INTERVAL(0 00:00:00.00000) DAY TO FRACTION(5),
	@FieldEnumString,
	@FieldEnumNumber
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @FieldInt32 Integer(4) -- Int32
SET     @FieldInt32 = -123
DECLARE @FieldInt64 BigInt(8) -- Int64
SET     @FieldInt64 = 987
DECLARE @FieldBoolean SmallInt -- Boolean
SET     @FieldBoolean = NULL
DECLARE @FieldString VarChar(12) -- String
SET     @FieldString = '<>?/.,;''zZ":'
DECLARE @FieldChar Char(1) -- StringFixedLength
SET     @FieldChar = ''
DECLARE @FieldFloat Real(4) -- Single
SET     @FieldFloat = -1.17549996E-38
DECLARE @FieldDouble Double(8)
SET     @FieldDouble = 2.2250738585072014E-308
DECLARE @FieldDateTime Timestamp(16) -- DateTime
SET     @FieldDateTime = TO_DATE('2098-10-12 21:14:15.90700', '%Y-%m-%d %H:%M:%S.%F5')
DECLARE @FieldDecimal Decimal(16)
SET     @FieldDecimal = -0.123
DECLARE @FieldDate Date(16)
SET     @FieldDate = TO_DATE('2111-11-23', '%Y-%m-%d')
DECLARE @FieldEnumString VarChar -- String
SET     @FieldEnumString = NULL
DECLARE @FieldEnumNumber Integer(4) -- Int32
SET     @FieldEnumNumber = -2147483647

INSERT INTO TestMerge2
(
	Id,
	Field1,
	FieldInt64,
	FieldBoolean,
	FieldString,
	FieldChar,
	FieldFloat,
	FieldDouble,
	FieldDateTime,
	FieldDecimal,
	FieldDate,
	FieldTime,
	FieldEnumString,
	FieldEnumNumber
)
VALUES
(
	@Id,
	@FieldInt32,
	@FieldInt64,
	@FieldBoolean,
	@FieldString,
	@FieldChar,
	@FieldFloat,
	@FieldDouble,
	@FieldDateTime,
	@FieldDecimal,
	@FieldDate,
	INTERVAL(0 23:59:59.99999) DAY TO FRACTION(5),
	@FieldEnumString,
	@FieldEnumNumber
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4
DECLARE @FieldInt32 Integer(4) -- Int32
SET     @FieldInt32 = 2147483647
DECLARE @FieldInt64 BigInt(8) -- Int64
SET     @FieldInt64 = 9223372036854775807
DECLARE @FieldBoolean Char(1) -- StringFixedLength
SET     @FieldBoolean = 'f'
DECLARE @FieldString VarChar(9) -- String
SET     @FieldString = 'test' || chr(13) || chr(10) || '	'
DECLARE @FieldChar Char(1) -- StringFixedLength
SET     @FieldChar = '1'
DECLARE @FieldFloat Real(4) -- Single
SET     @FieldFloat = 3.40282002E+38
DECLARE @FieldDouble Double(8)
SET     @FieldDouble = 1.7976931348623157E+308
DECLARE @FieldDateTime Timestamp(16) -- DateTime
SET     @FieldDateTime = TO_DATE('2001-10-12 21:14:15.16700', '%Y-%m-%d %H:%M:%S.%F5')
DECLARE @FieldDecimal Decimal(16)
SET     @FieldDecimal = -99999999.9999999999
DECLARE @FieldDate Date(16)
SET     @FieldDate = TO_DATE('2123-11-23', '%Y-%m-%d')
DECLARE @FieldEnumString VarChar(1) -- String
SET     @FieldEnumString = ''
DECLARE @FieldEnumNumber Integer(4) -- Int32
SET     @FieldEnumNumber = 0

INSERT INTO TestMerge2
(
	Id,
	Field1,
	FieldInt64,
	FieldBoolean,
	FieldString,
	FieldChar,
	FieldFloat,
	FieldDouble,
	FieldDateTime,
	FieldDecimal,
	FieldDate,
	FieldTime,
	FieldEnumString,
	FieldEnumNumber
)
VALUES
(
	@Id,
	@FieldInt32,
	@FieldInt64,
	@FieldBoolean,
	@FieldString,
	@FieldChar,
	@FieldFloat,
	@FieldDouble,
	@FieldDateTime,
	@FieldDecimal,
	@FieldDate,
	INTERVAL(0 14:44:33.23400) DAY TO FRACTION(5),
	@FieldEnumString,
	@FieldEnumNumber
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 5
DECLARE @FieldInt32 Integer(4) -- Int32
SET     @FieldInt32 = -123
DECLARE @FieldInt64 BigInt(8) -- Int64
SET     @FieldInt64 = 987
DECLARE @FieldBoolean SmallInt -- Boolean
SET     @FieldBoolean = NULL
DECLARE @FieldString VarChar(12) -- String
SET     @FieldString = '<>?/.,;''zZ":'
DECLARE @FieldChar Char(1) -- StringFixedLength
SET     @FieldChar = ' '
DECLARE @FieldFloat Real(4) -- Single
SET     @FieldFloat = -1.17549996E-38
DECLARE @FieldDouble Double(8)
SET     @FieldDouble = 2.2250738585072014E-308
DECLARE @FieldDateTime Timestamp(16) -- DateTime
SET     @FieldDateTime = TO_DATE('2098-10-12 21:14:15.91300', '%Y-%m-%d %H:%M:%S.%F5')
DECLARE @FieldDecimal Decimal(16)
SET     @FieldDecimal = -0.123
DECLARE @FieldDate Date(16)
SET     @FieldDate = TO_DATE('2010-11-23', '%Y-%m-%d')
DECLARE @FieldEnumString VarChar -- String
SET     @FieldEnumString = NULL
DECLARE @FieldEnumNumber Integer(4) -- Int32
SET     @FieldEnumNumber = -2147483647

INSERT INTO TestMerge2
(
	Id,
	Field1,
	FieldInt64,
	FieldBoolean,
	FieldString,
	FieldChar,
	FieldFloat,
	FieldDouble,
	FieldDateTime,
	FieldDecimal,
	FieldDate,
	FieldTime,
	FieldEnumString,
	FieldEnumNumber
)
VALUES
(
	@Id,
	@FieldInt32,
	@FieldInt64,
	@FieldBoolean,
	@FieldString,
	@FieldChar,
	@FieldFloat,
	@FieldDouble,
	@FieldDateTime,
	@FieldDecimal,
	@FieldDate,
	INTERVAL(0 23:59:59.99999) DAY TO FRACTION(5),
	@FieldEnumString,
	@FieldEnumNumber
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 6
DECLARE @FieldInt32 Integer(4) -- Int32
SET     @FieldInt32 = 2147483647
DECLARE @FieldInt64 BigInt(8) -- Int64
SET     @FieldInt64 = 9223372036854775807
DECLARE @FieldBoolean Char(1) -- StringFixedLength
SET     @FieldBoolean = 'f'
DECLARE @FieldString VarChar(12) -- String
SET     @FieldString = 'test' || chr(13) || chr(10) || '	 ' || chr(13) || ' '
DECLARE @FieldChar Char(1) -- StringFixedLength
SET     @FieldChar = '-'
DECLARE @FieldFloat Real(4) -- Single
SET     @FieldFloat = 3.40282002E+38
DECLARE @FieldDouble Double(8)
SET     @FieldDouble = 1.7976931348623157E+308
DECLARE @FieldDateTime Timestamp(16) -- DateTime
SET     @FieldDateTime = TO_DATE('2001-10-12 21:14:15.16700', '%Y-%m-%d %H:%M:%S.%F5')
DECLARE @FieldDecimal Decimal(16)
SET     @FieldDecimal = -99999999.9999999999
DECLARE @FieldDate Date(16)
SET     @FieldDate = TO_DATE('2123-11-23', '%Y-%m-%d')
DECLARE @FieldEnumString VarChar(1) -- String
SET     @FieldEnumString = ''
DECLARE @FieldEnumNumber Integer(4) -- Int32
SET     @FieldEnumNumber = 0

INSERT INTO TestMerge2
(
	Id,
	Field1,
	FieldInt64,
	FieldBoolean,
	FieldString,
	FieldChar,
	FieldFloat,
	FieldDouble,
	FieldDateTime,
	FieldDecimal,
	FieldDate,
	FieldTime,
	FieldEnumString,
	FieldEnumNumber
)
VALUES
(
	@Id,
	@FieldInt32,
	@FieldInt64,
	@FieldBoolean,
	@FieldString,
	@FieldChar,
	@FieldFloat,
	@FieldDouble,
	@FieldDateTime,
	@FieldDecimal,
	@FieldDate,
	INTERVAL(0 22:44:33.00000) DAY TO FRACTION(5),
	@FieldEnumString,
	@FieldEnumNumber
)

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Field1,
	t1.FieldInt64,
	t1.FieldBoolean,
	t1.FieldString,
	t1.FieldChar,
	t1.FieldFloat,
	t1.FieldDouble,
	t1.FieldDateTime,
	t1.FieldDecimal,
	t1.FieldDate,
	t1.FieldTime,
	t1.FieldEnumString,
	t1.FieldEnumNumber
FROM
	TestMerge1 t1
ORDER BY
	t1.Id

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Field1,
	t1.FieldInt64,
	t1.FieldBoolean,
	t1.FieldString,
	t1.FieldChar,
	t1.FieldFloat,
	t1.FieldDouble,
	t1.FieldDateTime,
	t1.FieldDecimal,
	t1.FieldDate,
	t1.FieldTime,
	t1.FieldEnumString,
	t1.FieldEnumNumber
FROM
	TestMerge2 t1
ORDER BY
	t1.Id

