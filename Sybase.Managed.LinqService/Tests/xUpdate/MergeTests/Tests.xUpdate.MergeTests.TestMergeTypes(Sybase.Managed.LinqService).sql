BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

DELETE FROM [TestMerge1]
FROM
	[TestMerge1] [t1]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

DELETE FROM [TestMerge2]
FROM
	[TestMerge2] [t1]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @FieldInt32 Integer -- Int32
SET     @FieldInt32 = NULL
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = NULL
DECLARE @FieldString UniVarChar -- String
SET     @FieldString = NULL
DECLARE @FieldNString UniVarChar -- String
SET     @FieldNString = NULL
DECLARE @FieldChar UniChar -- StringFixedLength
SET     @FieldChar = NULL
DECLARE @FieldNChar UniChar -- StringFixedLength
SET     @FieldNChar = NULL
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = NULL
DECLARE @FieldDouble Double
SET     @FieldDouble = NULL
DECLARE @FieldDateTime DateTime
SET     @FieldDateTime = NULL
DECLARE @FieldBinary VarBinary -- Binary
SET     @FieldBinary = NULL
DECLARE @FieldGuid Char(36) -- AnsiStringFixedLength
SET     @FieldGuid = NULL
DECLARE @FieldDecimal Decimal
SET     @FieldDecimal = NULL
DECLARE @FieldDate Date
SET     @FieldDate = NULL
DECLARE @FieldTime Time
SET     @FieldTime = NULL
DECLARE @FieldEnumString UniVarChar -- String
SET     @FieldEnumString = NULL
DECLARE @FieldEnumNumber Integer -- Int32
SET     @FieldEnumNumber = NULL

INSERT INTO [TestMerge1]
(
	[Id],
	[Field1],
	[FieldInt64],
	[FieldString],
	[FieldNString],
	[FieldChar],
	[FieldNChar],
	[FieldFloat],
	[FieldDouble],
	[FieldDateTime],
	[FieldBinary],
	[FieldGuid],
	[FieldDecimal],
	[FieldDate],
	[FieldTime],
	[FieldEnumString],
	[FieldEnumNumber]
)
VALUES
(
	@Id,
	@FieldInt32,
	@FieldInt64,
	@FieldString,
	@FieldNString,
	@FieldChar,
	@FieldNChar,
	@FieldFloat,
	@FieldDouble,
	@FieldDateTime,
	@FieldBinary,
	@FieldGuid,
	@FieldDecimal,
	@FieldDate,
	@FieldTime,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @FieldInt32 Integer -- Int32
SET     @FieldInt32 = -2147483647
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = -9223372036854775807
DECLARE @FieldString UniVarChar(13) -- String
SET     @FieldString = 'normal strinG'
DECLARE @FieldNString UniVarChar(13) -- String
SET     @FieldNString = 'всЁ нормально'
DECLARE @FieldChar UniChar -- StringFixedLength
SET     @FieldChar = '*'
DECLARE @FieldNChar UniChar -- StringFixedLength
SET     @FieldNChar = 'ё'
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = -3.40282002E+38
DECLARE @FieldDouble Double
SET     @FieldDouble = -1.7976931348623157E+308
DECLARE @FieldDateTime DateTime
SET     @FieldDateTime = '2000-11-12 21:14:15.167'
DECLARE @FieldBinary VarBinary(0) -- Binary
SET     @FieldBinary = 0x
DECLARE @FieldGuid Char(36) -- AnsiStringFixedLength
SET     @FieldGuid = '00000000-0000-0000-0000-000000000000'
DECLARE @FieldDecimal Decimal(18, 10)
SET     @FieldDecimal = 12345678.9012345678
DECLARE @FieldDate Date
SET     @FieldDate = '2000-11-23'
DECLARE @FieldTime Time
SET     @FieldTime = '1900-01-01 09:44:34.653'
DECLARE @FieldEnumString UniVarChar(5) -- String
SET     @FieldEnumString = 'FIRST'
DECLARE @FieldEnumNumber Integer -- Int32
SET     @FieldEnumNumber = NULL

INSERT INTO [TestMerge1]
(
	[Id],
	[Field1],
	[FieldInt64],
	[FieldString],
	[FieldNString],
	[FieldChar],
	[FieldNChar],
	[FieldFloat],
	[FieldDouble],
	[FieldDateTime],
	[FieldBinary],
	[FieldGuid],
	[FieldDecimal],
	[FieldDate],
	[FieldTime],
	[FieldEnumString],
	[FieldEnumNumber]
)
VALUES
(
	@Id,
	@FieldInt32,
	@FieldInt64,
	@FieldString,
	@FieldNString,
	@FieldChar,
	@FieldNChar,
	@FieldFloat,
	@FieldDouble,
	@FieldDateTime,
	@FieldBinary,
	@FieldGuid,
	@FieldDecimal,
	@FieldDate,
	@FieldTime,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @FieldInt32 Integer -- Int32
SET     @FieldInt32 = 2147483647
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = 9223372036854775807
DECLARE @FieldString UniVarChar(10) -- String
SET     @FieldString = 'test
	'
DECLARE @FieldNString UniVarChar(14) -- String
SET     @FieldNString = 'ЙЦУКЩывапрм
q'
DECLARE @FieldChar UniChar -- StringFixedLength
SET     @FieldChar = '&'
DECLARE @FieldNChar UniChar -- StringFixedLength
SET     @FieldNChar = '>'
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = 3.40282002E+38
DECLARE @FieldDouble Double
SET     @FieldDouble = 1.7976931348623157E+308
DECLARE @FieldDateTime DateTime
SET     @FieldDateTime = '2001-10-12 21:14:15.167'
DECLARE @FieldBinary VarBinary(6) -- Binary
SET     @FieldBinary = 0x000102030004
DECLARE @FieldGuid Char(36) -- AnsiStringFixedLength
SET     @FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'
DECLARE @FieldDecimal Decimal(18, 10)
SET     @FieldDecimal = -99999999.9999999999
DECLARE @FieldDate Date
SET     @FieldDate = '2123-11-23'
DECLARE @FieldTime Time
SET     @FieldTime = '1900-01-01 00:44:34.641'
DECLARE @FieldEnumString UniVarChar(1) -- String
SET     @FieldEnumString = ''
DECLARE @FieldEnumNumber Integer -- Int32
SET     @FieldEnumNumber = 0

INSERT INTO [TestMerge1]
(
	[Id],
	[Field1],
	[FieldInt64],
	[FieldString],
	[FieldNString],
	[FieldChar],
	[FieldNChar],
	[FieldFloat],
	[FieldDouble],
	[FieldDateTime],
	[FieldBinary],
	[FieldGuid],
	[FieldDecimal],
	[FieldDate],
	[FieldTime],
	[FieldEnumString],
	[FieldEnumNumber]
)
VALUES
(
	@Id,
	@FieldInt32,
	@FieldInt64,
	@FieldString,
	@FieldNString,
	@FieldChar,
	@FieldNChar,
	@FieldFloat,
	@FieldDouble,
	@FieldDateTime,
	@FieldBinary,
	@FieldGuid,
	@FieldDecimal,
	@FieldDate,
	@FieldTime,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @FieldInt32 Integer -- Int32
SET     @FieldInt32 = -123
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = 987
DECLARE @FieldString UniVarChar(20) -- String
SET     @FieldString = '`~!@#$%^&*()_+{}|[]\'
DECLARE @FieldNString UniVarChar(12) -- String
SET     @FieldNString = '<>?/.,;''щЩ":'
DECLARE @FieldChar UniChar -- StringFixedLength
SET     @FieldChar = ''
DECLARE @FieldNChar UniChar -- StringFixedLength
SET     @FieldNChar = '
'
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = 1.17549996E-38
DECLARE @FieldDouble Double
SET     @FieldDouble = -2.2250738585072014E-308
DECLARE @FieldDateTime DateTime
SET     @FieldDateTime = '2098-10-12 21:14:15.997'
DECLARE @FieldBinary VarBinary(6) -- Binary
SET     @FieldBinary = 0xFFC864321400
DECLARE @FieldGuid Char(36) -- AnsiStringFixedLength
SET     @FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'
DECLARE @FieldDecimal Decimal(18, 10)
SET     @FieldDecimal = 99999999.9999999999
DECLARE @FieldDate Date
SET     @FieldDate = '2110-11-23'
DECLARE @FieldTime Time
SET     @FieldTime = '1900-01-01'
DECLARE @FieldEnumString UniVarChar(1) -- String
SET     @FieldEnumString = '_'
DECLARE @FieldEnumNumber Integer -- Int32
SET     @FieldEnumNumber = 2147483647

INSERT INTO [TestMerge1]
(
	[Id],
	[Field1],
	[FieldInt64],
	[FieldString],
	[FieldNString],
	[FieldChar],
	[FieldNChar],
	[FieldFloat],
	[FieldDouble],
	[FieldDateTime],
	[FieldBinary],
	[FieldGuid],
	[FieldDecimal],
	[FieldDate],
	[FieldTime],
	[FieldEnumString],
	[FieldEnumNumber]
)
VALUES
(
	@Id,
	@FieldInt32,
	@FieldInt64,
	@FieldString,
	@FieldNString,
	@FieldChar,
	@FieldNChar,
	@FieldFloat,
	@FieldDouble,
	@FieldDateTime,
	@FieldBinary,
	@FieldGuid,
	@FieldDecimal,
	@FieldDate,
	@FieldTime,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @FieldInt32 Integer -- Int32
SET     @FieldInt32 = -123
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = 987
DECLARE @FieldString UniVarChar(12) -- String
SET     @FieldString = '<>?/.,;''zZ":'
DECLARE @FieldNString UniVarChar(20) -- String
SET     @FieldNString = '`~!@#$%^&*()_+{}|[]\'
DECLARE @FieldChar UniChar -- StringFixedLength
SET     @FieldChar = ''
DECLARE @FieldNChar UniChar -- StringFixedLength
SET     @FieldNChar = ''
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = -1.17549996E-38
DECLARE @FieldDouble Double
SET     @FieldDouble = 2.2250738585072014E-308
DECLARE @FieldDateTime DateTime
SET     @FieldDateTime = '2098-10-12 21:14:15.907'
DECLARE @FieldBinary VarBinary(6) -- Binary
SET     @FieldBinary = 0xFFC864321400
DECLARE @FieldGuid Char(36) -- AnsiStringFixedLength
SET     @FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'
DECLARE @FieldDecimal Decimal(3, 3)
SET     @FieldDecimal = -0.123
DECLARE @FieldDate Date
SET     @FieldDate = '2111-11-23'
DECLARE @FieldTime Time
SET     @FieldTime = '1900-01-01 23:59:59.999'
DECLARE @FieldEnumString UniVarChar -- String
SET     @FieldEnumString = NULL
DECLARE @FieldEnumNumber Integer -- Int32
SET     @FieldEnumNumber = -2147483647

INSERT INTO [TestMerge2]
(
	[Id],
	[Field1],
	[FieldInt64],
	[FieldString],
	[FieldNString],
	[FieldChar],
	[FieldNChar],
	[FieldFloat],
	[FieldDouble],
	[FieldDateTime],
	[FieldBinary],
	[FieldGuid],
	[FieldDecimal],
	[FieldDate],
	[FieldTime],
	[FieldEnumString],
	[FieldEnumNumber]
)
VALUES
(
	@Id,
	@FieldInt32,
	@FieldInt64,
	@FieldString,
	@FieldNString,
	@FieldChar,
	@FieldNChar,
	@FieldFloat,
	@FieldDouble,
	@FieldDateTime,
	@FieldBinary,
	@FieldGuid,
	@FieldDecimal,
	@FieldDate,
	@FieldTime,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @FieldInt32 Integer -- Int32
SET     @FieldInt32 = 2147483647
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = 9223372036854775807
DECLARE @FieldString UniVarChar(9) -- String
SET     @FieldString = 'test
	'
DECLARE @FieldNString UniVarChar(14) -- String
SET     @FieldNString = 'ЙЦУКЩывапрм
q'
DECLARE @FieldChar UniChar -- StringFixedLength
SET     @FieldChar = '1'
DECLARE @FieldNChar UniChar -- StringFixedLength
SET     @FieldNChar = ' '
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = 3.40282002E+38
DECLARE @FieldDouble Double
SET     @FieldDouble = 1.7976931348623157E+308
DECLARE @FieldDateTime DateTime
SET     @FieldDateTime = '2001-10-12 21:14:15.167'
DECLARE @FieldBinary VarBinary(6) -- Binary
SET     @FieldBinary = 0x000102030004
DECLARE @FieldGuid Char(36) -- AnsiStringFixedLength
SET     @FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'
DECLARE @FieldDecimal Decimal(18, 10)
SET     @FieldDecimal = -99999999.9999999999
DECLARE @FieldDate Date
SET     @FieldDate = '2123-11-23'
DECLARE @FieldTime Time
SET     @FieldTime = '1900-01-01 14:44:33.234'
DECLARE @FieldEnumString UniVarChar(1) -- String
SET     @FieldEnumString = ''
DECLARE @FieldEnumNumber Integer -- Int32
SET     @FieldEnumNumber = 0

INSERT INTO [TestMerge2]
(
	[Id],
	[Field1],
	[FieldInt64],
	[FieldString],
	[FieldNString],
	[FieldChar],
	[FieldNChar],
	[FieldFloat],
	[FieldDouble],
	[FieldDateTime],
	[FieldBinary],
	[FieldGuid],
	[FieldDecimal],
	[FieldDate],
	[FieldTime],
	[FieldEnumString],
	[FieldEnumNumber]
)
VALUES
(
	@Id,
	@FieldInt32,
	@FieldInt64,
	@FieldString,
	@FieldNString,
	@FieldChar,
	@FieldNChar,
	@FieldFloat,
	@FieldDouble,
	@FieldDateTime,
	@FieldBinary,
	@FieldGuid,
	@FieldDecimal,
	@FieldDate,
	@FieldTime,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @FieldInt32 Integer -- Int32
SET     @FieldInt32 = -123
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = 987
DECLARE @FieldString UniVarChar(12) -- String
SET     @FieldString = '<>?/.,;''zZ":'
DECLARE @FieldNString UniVarChar(20) -- String
SET     @FieldNString = '`~!@#$%^&*()_+{}|[]\'
DECLARE @FieldChar UniChar -- StringFixedLength
SET     @FieldChar = ' '
DECLARE @FieldNChar UniChar -- StringFixedLength
SET     @FieldNChar = ' '
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = -1.17549996E-38
DECLARE @FieldDouble Double
SET     @FieldDouble = 2.2250738585072014E-308
DECLARE @FieldDateTime DateTime
SET     @FieldDateTime = '2098-10-12 21:14:15.913'
DECLARE @FieldBinary VarBinary(6) -- Binary
SET     @FieldBinary = 0xFFC864321400
DECLARE @FieldGuid Char(36) -- AnsiStringFixedLength
SET     @FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'
DECLARE @FieldDecimal Decimal(3, 3)
SET     @FieldDecimal = -0.123
DECLARE @FieldDate Date
SET     @FieldDate = '2010-11-23'
DECLARE @FieldTime Time
SET     @FieldTime = '1900-01-01 23:59:59.999'
DECLARE @FieldEnumString UniVarChar -- String
SET     @FieldEnumString = NULL
DECLARE @FieldEnumNumber Integer -- Int32
SET     @FieldEnumNumber = -2147483647

INSERT INTO [TestMerge2]
(
	[Id],
	[Field1],
	[FieldInt64],
	[FieldString],
	[FieldNString],
	[FieldChar],
	[FieldNChar],
	[FieldFloat],
	[FieldDouble],
	[FieldDateTime],
	[FieldBinary],
	[FieldGuid],
	[FieldDecimal],
	[FieldDate],
	[FieldTime],
	[FieldEnumString],
	[FieldEnumNumber]
)
VALUES
(
	@Id,
	@FieldInt32,
	@FieldInt64,
	@FieldString,
	@FieldNString,
	@FieldChar,
	@FieldNChar,
	@FieldFloat,
	@FieldDouble,
	@FieldDateTime,
	@FieldBinary,
	@FieldGuid,
	@FieldDecimal,
	@FieldDate,
	@FieldTime,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @FieldInt32 Integer -- Int32
SET     @FieldInt32 = 2147483647
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = 9223372036854775807
DECLARE @FieldString UniVarChar(12) -- String
SET     @FieldString = 'test
	  '
DECLARE @FieldNString UniVarChar(17) -- String
SET     @FieldNString = 'ЙЦУКЩывапрм
q  '
DECLARE @FieldChar UniChar -- StringFixedLength
SET     @FieldChar = '-'
DECLARE @FieldNChar UniChar -- StringFixedLength
SET     @FieldNChar = '~'
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = 3.40282002E+38
DECLARE @FieldDouble Double
SET     @FieldDouble = 1.7976931348623157E+308
DECLARE @FieldDateTime DateTime
SET     @FieldDateTime = '2001-10-12 21:14:15.167'
DECLARE @FieldBinary VarBinary(6) -- Binary
SET     @FieldBinary = 0x000102030004
DECLARE @FieldGuid Char(36) -- AnsiStringFixedLength
SET     @FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'
DECLARE @FieldDecimal Decimal(18, 10)
SET     @FieldDecimal = -99999999.9999999999
DECLARE @FieldDate Date
SET     @FieldDate = '2123-11-23'
DECLARE @FieldTime Time
SET     @FieldTime = '1900-01-01 22:44:33'
DECLARE @FieldEnumString UniVarChar(1) -- String
SET     @FieldEnumString = ''
DECLARE @FieldEnumNumber Integer -- Int32
SET     @FieldEnumNumber = 0

INSERT INTO [TestMerge2]
(
	[Id],
	[Field1],
	[FieldInt64],
	[FieldString],
	[FieldNString],
	[FieldChar],
	[FieldNChar],
	[FieldFloat],
	[FieldDouble],
	[FieldDateTime],
	[FieldBinary],
	[FieldGuid],
	[FieldDecimal],
	[FieldDate],
	[FieldTime],
	[FieldEnumString],
	[FieldEnumNumber]
)
VALUES
(
	@Id,
	@FieldInt32,
	@FieldInt64,
	@FieldString,
	@FieldNString,
	@FieldChar,
	@FieldNChar,
	@FieldFloat,
	@FieldDouble,
	@FieldDateTime,
	@FieldBinary,
	@FieldGuid,
	@FieldDecimal,
	@FieldDate,
	@FieldTime,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Field1],
	[t1].[FieldInt64],
	[t1].[FieldString],
	[t1].[FieldNString],
	[t1].[FieldChar],
	[t1].[FieldNChar],
	[t1].[FieldFloat],
	[t1].[FieldDouble],
	[t1].[FieldDateTime],
	[t1].[FieldBinary],
	[t1].[FieldGuid],
	[t1].[FieldDecimal],
	[t1].[FieldDate],
	[t1].[FieldTime],
	[t1].[FieldEnumString],
	[t1].[FieldEnumNumber]
FROM
	[TestMerge1] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Field1],
	[t1].[FieldInt64],
	[t1].[FieldString],
	[t1].[FieldNString],
	[t1].[FieldChar],
	[t1].[FieldNChar],
	[t1].[FieldFloat],
	[t1].[FieldDouble],
	[t1].[FieldDateTime],
	[t1].[FieldBinary],
	[t1].[FieldGuid],
	[t1].[FieldDecimal],
	[t1].[FieldDate],
	[t1].[FieldTime],
	[t1].[FieldEnumString],
	[t1].[FieldEnumNumber]
FROM
	[TestMerge2] [t1]
ORDER BY
	[t1].[Id]

