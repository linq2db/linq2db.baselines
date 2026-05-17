-- SqlServer.SA SqlServer.2019

DELETE [t1]
FROM
	[TestMerge1] [t1]

-- SqlServer.SA SqlServer.2019

DELETE [t1]
FROM
	[TestMerge2] [t1]

-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @FieldInt32 Int -- Int32
SET     @FieldInt32 = NULL
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = NULL
DECLARE @FieldBoolean Bit -- Boolean
SET     @FieldBoolean = NULL
DECLARE @FieldString NVarChar(4000) -- String
SET     @FieldString = NULL
DECLARE @FieldNString NVarChar(4000) -- String
SET     @FieldNString = NULL
DECLARE @FieldChar NChar -- StringFixedLength
SET     @FieldChar = NULL
DECLARE @FieldNChar NChar -- StringFixedLength
SET     @FieldNChar = NULL
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = NULL
DECLARE @FieldDouble Float -- Double
SET     @FieldDouble = NULL
DECLARE @FieldDateTime DateTime2
SET     @FieldDateTime = NULL
DECLARE @FieldDateTime2 DateTimeOffset
SET     @FieldDateTime2 = NULL
DECLARE @FieldBinary VarBinary(8000) -- Binary
SET     @FieldBinary = NULL
DECLARE @FieldGuid UniqueIdentifier -- Guid
SET     @FieldGuid = NULL
DECLARE @FieldDecimal Decimal
SET     @FieldDecimal = NULL
DECLARE @FieldDate DateTime2
SET     @FieldDate = NULL
DECLARE @FieldTime Time
SET     @FieldTime = NULL
DECLARE @FieldEnumString NVarChar(5) -- String
SET     @FieldEnumString = NULL
DECLARE @FieldEnumNumber Int -- Int32
SET     @FieldEnumNumber = NULL

INSERT INTO [TestMerge1]
(
	[Id],
	[Field1],
	[FieldInt64],
	[FieldBoolean],
	[FieldString],
	[FieldNString],
	[FieldChar],
	[FieldNChar],
	[FieldFloat],
	[FieldDouble],
	[FieldDateTime],
	[FieldDateTime2],
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
	@FieldBoolean,
	@FieldString,
	@FieldNString,
	@FieldChar,
	@FieldNChar,
	@FieldFloat,
	@FieldDouble,
	@FieldDateTime,
	@FieldDateTime2,
	@FieldBinary,
	@FieldGuid,
	@FieldDecimal,
	@FieldDate,
	@FieldTime,
	@FieldEnumString,
	@FieldEnumNumber
)

-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @FieldInt32 Int -- Int32
SET     @FieldInt32 = -2147483647
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = -9223372036854775807
DECLARE @FieldBoolean Bit -- Boolean
SET     @FieldBoolean = 1
DECLARE @FieldString NVarChar(4000) -- String
SET     @FieldString = N'normal strinG'
DECLARE @FieldNString NVarChar(4000) -- String
SET     @FieldNString = N'всЁ нормально'
DECLARE @FieldChar NChar(1) -- StringFixedLength
SET     @FieldChar = N'*'
DECLARE @FieldNChar NChar(1) -- StringFixedLength
SET     @FieldNChar = N'ё'
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = -3.40282002E+38
DECLARE @FieldDouble Float -- Double
SET     @FieldDouble = -1.7976931348623157E+308
DECLARE @FieldDateTime DateTime2
SET     @FieldDateTime = DATETIME2FROMPARTS(2000, 11, 12, 21, 14, 15, 1670000, 7)
DECLARE @FieldDateTime2 DateTimeOffset
SET     @FieldDateTime2 = DATETIMEOFFSETFROMPARTS(2000, 11, 22, 13, 14, 15, 1244567, 0, 15, 7)
DECLARE @FieldBinary VarBinary(8000) -- Binary
SET     @FieldBinary = 0x
DECLARE @FieldGuid UniqueIdentifier -- Guid
SET     @FieldGuid = '00000000-0000-0000-0000-000000000000'
DECLARE @FieldDecimal Decimal(18, 10)
SET     @FieldDecimal = 12345678.9012345678
DECLARE @FieldDate DateTime2
SET     @FieldDate = DATETIME2FROMPARTS(2000, 11, 23, 0, 0, 0, 0, 7)
DECLARE @FieldTime Time
SET     @FieldTime = TIMEFROMPARTS(9, 44, 34, 6534321, 7)
DECLARE @FieldEnumString NVarChar(5) -- String
SET     @FieldEnumString = N'FIRST'
DECLARE @FieldEnumNumber Int -- Int32
SET     @FieldEnumNumber = NULL

INSERT INTO [TestMerge1]
(
	[Id],
	[Field1],
	[FieldInt64],
	[FieldBoolean],
	[FieldString],
	[FieldNString],
	[FieldChar],
	[FieldNChar],
	[FieldFloat],
	[FieldDouble],
	[FieldDateTime],
	[FieldDateTime2],
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
	@FieldBoolean,
	@FieldString,
	@FieldNString,
	@FieldChar,
	@FieldNChar,
	@FieldFloat,
	@FieldDouble,
	@FieldDateTime,
	@FieldDateTime2,
	@FieldBinary,
	@FieldGuid,
	@FieldDecimal,
	@FieldDate,
	@FieldTime,
	@FieldEnumString,
	@FieldEnumNumber
)

-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @FieldInt32 Int -- Int32
SET     @FieldInt32 = 2147483647
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = 9223372036854775807
DECLARE @FieldBoolean Bit -- Boolean
SET     @FieldBoolean = 0
DECLARE @FieldString NVarChar(4000) -- String
SET     @FieldString = N'test
	'
DECLARE @FieldNString NVarChar(4000) -- String
SET     @FieldNString = N'ЙЦУКЩывапрм
q'
DECLARE @FieldChar NChar(1) -- StringFixedLength
SET     @FieldChar = N'&'
DECLARE @FieldNChar NChar(1) -- StringFixedLength
SET     @FieldNChar = N'>'
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = 3.40282002E+38
DECLARE @FieldDouble Float -- Double
SET     @FieldDouble = 1.7976931348623157E+308
DECLARE @FieldDateTime DateTime2
SET     @FieldDateTime = DATETIME2FROMPARTS(2001, 10, 12, 21, 14, 15, 1670000, 7)
DECLARE @FieldDateTime2 DateTimeOffset
SET     @FieldDateTime2 = DATETIMEOFFSETFROMPARTS(2001, 11, 22, 13, 14, 15, 1234567, 0, -15, 7)
DECLARE @FieldBinary VarBinary(8000) -- Binary
SET     @FieldBinary = 0x000102030004
DECLARE @FieldGuid UniqueIdentifier -- Guid
SET     @FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'
DECLARE @FieldDecimal Decimal(18, 10)
SET     @FieldDecimal = -99999999.9999999999
DECLARE @FieldDate DateTime2
SET     @FieldDate = DATETIME2FROMPARTS(2123, 11, 23, 0, 0, 0, 0, 7)
DECLARE @FieldTime Time
SET     @FieldTime = TIMEFROMPARTS(0, 44, 34, 6414321, 7)
DECLARE @FieldEnumString NVarChar(5) -- String
SET     @FieldEnumString = char(0)
DECLARE @FieldEnumNumber Int -- Int32
SET     @FieldEnumNumber = 0

INSERT INTO [TestMerge1]
(
	[Id],
	[Field1],
	[FieldInt64],
	[FieldBoolean],
	[FieldString],
	[FieldNString],
	[FieldChar],
	[FieldNChar],
	[FieldFloat],
	[FieldDouble],
	[FieldDateTime],
	[FieldDateTime2],
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
	@FieldBoolean,
	@FieldString,
	@FieldNString,
	@FieldChar,
	@FieldNChar,
	@FieldFloat,
	@FieldDouble,
	@FieldDateTime,
	@FieldDateTime2,
	@FieldBinary,
	@FieldGuid,
	@FieldDecimal,
	@FieldDate,
	@FieldTime,
	@FieldEnumString,
	@FieldEnumNumber
)

-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @FieldInt32 Int -- Int32
SET     @FieldInt32 = -123
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = 987
DECLARE @FieldBoolean Bit -- Boolean
SET     @FieldBoolean = NULL
DECLARE @FieldString NVarChar(4000) -- String
SET     @FieldString = N'`~!@#$%^&*()_+{}|[]\'
DECLARE @FieldNString NVarChar(4000) -- String
SET     @FieldNString = N'<>?/.,;''щЩ":'
DECLARE @FieldChar NChar(1) -- StringFixedLength
SET     @FieldChar = N''
DECLARE @FieldNChar NChar(1) -- StringFixedLength
SET     @FieldNChar = N'
'
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = 1.17549996E-38
DECLARE @FieldDouble Float -- Double
SET     @FieldDouble = -2.2250738585072014E-308
DECLARE @FieldDateTime DateTime2
SET     @FieldDateTime = DATETIME2FROMPARTS(2098, 10, 12, 21, 14, 15, 9970000, 7)
DECLARE @FieldDateTime2 DateTimeOffset
SET     @FieldDateTime2 = DATETIMEOFFSETFROMPARTS(2001, 11, 22, 13, 14, 16, 1224567, 1, 39, 7)
DECLARE @FieldBinary VarBinary(8000) -- Binary
SET     @FieldBinary = 0xFFC864321400
DECLARE @FieldGuid UniqueIdentifier -- Guid
SET     @FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'
DECLARE @FieldDecimal Decimal(18, 10)
SET     @FieldDecimal = 99999999.9999999999
DECLARE @FieldDate DateTime2
SET     @FieldDate = DATETIME2FROMPARTS(2110, 11, 23, 0, 0, 0, 0, 7)
DECLARE @FieldTime Time
SET     @FieldTime = TIMEFROMPARTS(0, 0, 0, 0, 7)
DECLARE @FieldEnumString NVarChar(5) -- String
SET     @FieldEnumString = N''
DECLARE @FieldEnumNumber Int -- Int32
SET     @FieldEnumNumber = 2147483647

INSERT INTO [TestMerge1]
(
	[Id],
	[Field1],
	[FieldInt64],
	[FieldBoolean],
	[FieldString],
	[FieldNString],
	[FieldChar],
	[FieldNChar],
	[FieldFloat],
	[FieldDouble],
	[FieldDateTime],
	[FieldDateTime2],
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
	@FieldBoolean,
	@FieldString,
	@FieldNString,
	@FieldChar,
	@FieldNChar,
	@FieldFloat,
	@FieldDouble,
	@FieldDateTime,
	@FieldDateTime2,
	@FieldBinary,
	@FieldGuid,
	@FieldDecimal,
	@FieldDate,
	@FieldTime,
	@FieldEnumString,
	@FieldEnumNumber
)

-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @FieldInt32 Int -- Int32
SET     @FieldInt32 = -123
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = 987
DECLARE @FieldBoolean Bit -- Boolean
SET     @FieldBoolean = NULL
DECLARE @FieldString NVarChar(4000) -- String
SET     @FieldString = N'<>?/.,;''zZ":'
DECLARE @FieldNString NVarChar(4000) -- String
SET     @FieldNString = N'`~!@#$%^&*()_+{}|[]\'
DECLARE @FieldChar NChar(1) -- StringFixedLength
SET     @FieldChar = N''
DECLARE @FieldNChar NChar(1) -- StringFixedLength
SET     @FieldNChar = N''
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = -1.17549996E-38
DECLARE @FieldDouble Float -- Double
SET     @FieldDouble = 2.2250738585072014E-308
DECLARE @FieldDateTime DateTime2
SET     @FieldDateTime = DATETIME2FROMPARTS(2098, 10, 12, 21, 14, 15, 9070000, 7)
DECLARE @FieldDateTime2 DateTimeOffset
SET     @FieldDateTime2 = DATETIMEOFFSETFROMPARTS(2001, 11, 22, 13, 14, 14, 1233457, -1, -39, 7)
DECLARE @FieldBinary VarBinary(8000) -- Binary
SET     @FieldBinary = 0xFFC864321400
DECLARE @FieldGuid UniqueIdentifier -- Guid
SET     @FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'
DECLARE @FieldDecimal Decimal(3, 3)
SET     @FieldDecimal = -0.123
DECLARE @FieldDate DateTime2
SET     @FieldDate = DATETIME2FROMPARTS(2111, 11, 23, 0, 0, 0, 0, 7)
DECLARE @FieldTime Time
SET     @FieldTime = TIMEFROMPARTS(23, 59, 59, 9999999, 7)
DECLARE @FieldEnumString NVarChar(5) -- String
SET     @FieldEnumString = NULL
DECLARE @FieldEnumNumber Int -- Int32
SET     @FieldEnumNumber = -2147483647

INSERT INTO [TestMerge2]
(
	[Id],
	[Field1],
	[FieldInt64],
	[FieldBoolean],
	[FieldString],
	[FieldNString],
	[FieldChar],
	[FieldNChar],
	[FieldFloat],
	[FieldDouble],
	[FieldDateTime],
	[FieldDateTime2],
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
	@FieldBoolean,
	@FieldString,
	@FieldNString,
	@FieldChar,
	@FieldNChar,
	@FieldFloat,
	@FieldDouble,
	@FieldDateTime,
	@FieldDateTime2,
	@FieldBinary,
	@FieldGuid,
	@FieldDecimal,
	@FieldDate,
	@FieldTime,
	@FieldEnumString,
	@FieldEnumNumber
)

-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @FieldInt32 Int -- Int32
SET     @FieldInt32 = 2147483647
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = 9223372036854775807
DECLARE @FieldBoolean Bit -- Boolean
SET     @FieldBoolean = 0
DECLARE @FieldString NVarChar(4000) -- String
SET     @FieldString = N'test
	'
DECLARE @FieldNString NVarChar(4000) -- String
SET     @FieldNString = N'ЙЦУКЩывапрм
q'
DECLARE @FieldChar NChar(1) -- StringFixedLength
SET     @FieldChar = N'1'
DECLARE @FieldNChar NChar(1) -- StringFixedLength
SET     @FieldNChar = N' '
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = 3.40282002E+38
DECLARE @FieldDouble Float -- Double
SET     @FieldDouble = 1.7976931348623157E+308
DECLARE @FieldDateTime DateTime2
SET     @FieldDateTime = DATETIME2FROMPARTS(2001, 10, 12, 21, 14, 15, 1670000, 7)
DECLARE @FieldDateTime2 DateTimeOffset
SET     @FieldDateTime2 = DATETIMEOFFSETFROMPARTS(2001, 11, 22, 13, 14, 15, 3210000, 0, -15, 7)
DECLARE @FieldBinary VarBinary(8000) -- Binary
SET     @FieldBinary = 0x000102030004
DECLARE @FieldGuid UniqueIdentifier -- Guid
SET     @FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'
DECLARE @FieldDecimal Decimal(18, 10)
SET     @FieldDecimal = -99999999.9999999999
DECLARE @FieldDate DateTime2
SET     @FieldDate = DATETIME2FROMPARTS(2123, 11, 23, 0, 0, 0, 0, 7)
DECLARE @FieldTime Time
SET     @FieldTime = TIMEFROMPARTS(14, 44, 33, 2340000, 7)
DECLARE @FieldEnumString NVarChar(5) -- String
SET     @FieldEnumString = char(0)
DECLARE @FieldEnumNumber Int -- Int32
SET     @FieldEnumNumber = 0

INSERT INTO [TestMerge2]
(
	[Id],
	[Field1],
	[FieldInt64],
	[FieldBoolean],
	[FieldString],
	[FieldNString],
	[FieldChar],
	[FieldNChar],
	[FieldFloat],
	[FieldDouble],
	[FieldDateTime],
	[FieldDateTime2],
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
	@FieldBoolean,
	@FieldString,
	@FieldNString,
	@FieldChar,
	@FieldNChar,
	@FieldFloat,
	@FieldDouble,
	@FieldDateTime,
	@FieldDateTime2,
	@FieldBinary,
	@FieldGuid,
	@FieldDecimal,
	@FieldDate,
	@FieldTime,
	@FieldEnumString,
	@FieldEnumNumber
)

-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @FieldInt32 Int -- Int32
SET     @FieldInt32 = -123
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = 987
DECLARE @FieldBoolean Bit -- Boolean
SET     @FieldBoolean = NULL
DECLARE @FieldString NVarChar(4000) -- String
SET     @FieldString = N'<>?/.,;''zZ":'
DECLARE @FieldNString NVarChar(4000) -- String
SET     @FieldNString = N'`~!@#$%^&*()_+{}|[]\'
DECLARE @FieldChar NChar(1) -- StringFixedLength
SET     @FieldChar = N' '
DECLARE @FieldNChar NChar(1) -- StringFixedLength
SET     @FieldNChar = N' '
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = -1.17549996E-38
DECLARE @FieldDouble Float -- Double
SET     @FieldDouble = 2.2250738585072014E-308
DECLARE @FieldDateTime DateTime2
SET     @FieldDateTime = DATETIME2FROMPARTS(2098, 10, 12, 21, 14, 15, 9130000, 7)
DECLARE @FieldDateTime2 DateTimeOffset
SET     @FieldDateTime2 = DATETIMEOFFSETFROMPARTS(2001, 11, 22, 13, 14, 15, 0, -1, -39, 7)
DECLARE @FieldBinary VarBinary(8000) -- Binary
SET     @FieldBinary = 0xFFC864321400
DECLARE @FieldGuid UniqueIdentifier -- Guid
SET     @FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'
DECLARE @FieldDecimal Decimal(3, 3)
SET     @FieldDecimal = -0.123
DECLARE @FieldDate DateTime2
SET     @FieldDate = DATETIME2FROMPARTS(2010, 11, 23, 0, 0, 0, 0, 7)
DECLARE @FieldTime Time
SET     @FieldTime = TIMEFROMPARTS(23, 59, 59, 9999999, 7)
DECLARE @FieldEnumString NVarChar(5) -- String
SET     @FieldEnumString = NULL
DECLARE @FieldEnumNumber Int -- Int32
SET     @FieldEnumNumber = -2147483647

INSERT INTO [TestMerge2]
(
	[Id],
	[Field1],
	[FieldInt64],
	[FieldBoolean],
	[FieldString],
	[FieldNString],
	[FieldChar],
	[FieldNChar],
	[FieldFloat],
	[FieldDouble],
	[FieldDateTime],
	[FieldDateTime2],
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
	@FieldBoolean,
	@FieldString,
	@FieldNString,
	@FieldChar,
	@FieldNChar,
	@FieldFloat,
	@FieldDouble,
	@FieldDateTime,
	@FieldDateTime2,
	@FieldBinary,
	@FieldGuid,
	@FieldDecimal,
	@FieldDate,
	@FieldTime,
	@FieldEnumString,
	@FieldEnumNumber
)

-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @FieldInt32 Int -- Int32
SET     @FieldInt32 = 2147483647
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = 9223372036854775807
DECLARE @FieldBoolean Bit -- Boolean
SET     @FieldBoolean = 0
DECLARE @FieldString NVarChar(4000) -- String
SET     @FieldString = N'test
	  '
DECLARE @FieldNString NVarChar(4000) -- String
SET     @FieldNString = N'ЙЦУКЩывапрм
q  '
DECLARE @FieldChar NChar(1) -- StringFixedLength
SET     @FieldChar = N'-'
DECLARE @FieldNChar NChar(1) -- StringFixedLength
SET     @FieldNChar = N'~'
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = 3.40282002E+38
DECLARE @FieldDouble Float -- Double
SET     @FieldDouble = 1.7976931348623157E+308
DECLARE @FieldDateTime DateTime2
SET     @FieldDateTime = DATETIME2FROMPARTS(2001, 10, 12, 21, 14, 15, 1670000, 7)
DECLARE @FieldDateTime2 DateTimeOffset
SET     @FieldDateTime2 = DATETIMEOFFSETFROMPARTS(2001, 11, 22, 13, 14, 15, 9990000, 0, -15, 7)
DECLARE @FieldBinary VarBinary(8000) -- Binary
SET     @FieldBinary = 0x000102030004
DECLARE @FieldGuid UniqueIdentifier -- Guid
SET     @FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'
DECLARE @FieldDecimal Decimal(18, 10)
SET     @FieldDecimal = -99999999.9999999999
DECLARE @FieldDate DateTime2
SET     @FieldDate = DATETIME2FROMPARTS(2123, 11, 23, 0, 0, 0, 0, 7)
DECLARE @FieldTime Time
SET     @FieldTime = TIMEFROMPARTS(22, 44, 33, 0, 7)
DECLARE @FieldEnumString NVarChar(5) -- String
SET     @FieldEnumString = char(0)
DECLARE @FieldEnumNumber Int -- Int32
SET     @FieldEnumNumber = 0

INSERT INTO [TestMerge2]
(
	[Id],
	[Field1],
	[FieldInt64],
	[FieldBoolean],
	[FieldString],
	[FieldNString],
	[FieldChar],
	[FieldNChar],
	[FieldFloat],
	[FieldDouble],
	[FieldDateTime],
	[FieldDateTime2],
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
	@FieldBoolean,
	@FieldString,
	@FieldNString,
	@FieldChar,
	@FieldNChar,
	@FieldFloat,
	@FieldDouble,
	@FieldDateTime,
	@FieldDateTime2,
	@FieldBinary,
	@FieldGuid,
	@FieldDecimal,
	@FieldDate,
	@FieldTime,
	@FieldEnumString,
	@FieldEnumNumber
)

-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Field1],
	[t1].[FieldInt64],
	[t1].[FieldBoolean],
	[t1].[FieldString],
	[t1].[FieldNString],
	[t1].[FieldChar],
	[t1].[FieldNChar],
	[t1].[FieldFloat],
	[t1].[FieldDouble],
	[t1].[FieldDateTime],
	[t1].[FieldDateTime2],
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

-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Field1],
	[t1].[FieldInt64],
	[t1].[FieldBoolean],
	[t1].[FieldString],
	[t1].[FieldNString],
	[t1].[FieldChar],
	[t1].[FieldNChar],
	[t1].[FieldFloat],
	[t1].[FieldDouble],
	[t1].[FieldDateTime],
	[t1].[FieldDateTime2],
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

