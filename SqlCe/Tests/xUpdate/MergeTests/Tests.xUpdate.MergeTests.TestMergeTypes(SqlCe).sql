BeforeExecute
-- SqlCe

DELETE FROM
	[TestMerge1]

BeforeExecute
-- SqlCe

DELETE FROM
	[TestMerge2]

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @FieldInt32 Int -- Int32
SET     @FieldInt32 = NULL
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = NULL
DECLARE @FieldBoolean Bit -- Boolean
SET     @FieldBoolean = NULL
DECLARE @FieldString NVarChar -- String
SET     @FieldString = NULL
DECLARE @FieldNString NVarChar -- String
SET     @FieldNString = NULL
DECLARE @FieldChar NVarChar -- String
SET     @FieldChar = NULL
DECLARE @FieldNChar NVarChar -- String
SET     @FieldNChar = NULL
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = NULL
DECLARE @FieldDouble Float -- Double
SET     @FieldDouble = NULL
DECLARE @FieldDateTime DateTime
SET     @FieldDateTime = NULL
DECLARE @FieldBinary VarBinary -- Binary
SET     @FieldBinary = NULL
DECLARE @FieldGuid UniqueIdentifier -- Guid
SET     @FieldGuid = NULL
DECLARE @FieldDecimal Decimal
SET     @FieldDecimal = NULL
DECLARE @FieldEnumString NVarChar -- String
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
	[FieldBinary],
	[FieldGuid],
	[FieldDecimal],
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
	@FieldBinary,
	@FieldGuid,
	@FieldDecimal,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @FieldInt32 Int -- Int32
SET     @FieldInt32 = -2147483647
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = -9223372036854775807
DECLARE @FieldBoolean Bit -- Boolean
SET     @FieldBoolean = 1
DECLARE @FieldString NVarChar(13) -- String
SET     @FieldString = 'normal strinG'
DECLARE @FieldNString NVarChar(13) -- String
SET     @FieldNString = 'всЁ нормально'
DECLARE @FieldChar NVarChar -- String
SET     @FieldChar = '*'
DECLARE @FieldNChar NVarChar -- String
SET     @FieldNChar = 'ё'
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = -3.40282002E+38
DECLARE @FieldDouble Float -- Double
SET     @FieldDouble = -1.7976931348623157E+308
DECLARE @FieldDateTime DateTime
SET     @FieldDateTime = '2000-11-12 21:14:15.167'
DECLARE @FieldBinary VarBinary(0) -- Binary
SET     @FieldBinary = 0x
DECLARE @FieldGuid UniqueIdentifier -- Guid
SET     @FieldGuid = '00000000-0000-0000-0000-000000000000'
DECLARE @FieldDecimal Decimal(18, 10)
SET     @FieldDecimal = 12345678.9012345678
DECLARE @FieldEnumString NVarChar(5) -- String
SET     @FieldEnumString = 'FIRST'
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
	[FieldBinary],
	[FieldGuid],
	[FieldDecimal],
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
	@FieldBinary,
	@FieldGuid,
	@FieldDecimal,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @FieldInt32 Int -- Int32
SET     @FieldInt32 = 2147483647
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = 9223372036854775807
DECLARE @FieldBoolean Bit -- Boolean
SET     @FieldBoolean = 0
DECLARE @FieldString NVarChar(10) -- String
SET     @FieldString = 'test
	'
DECLARE @FieldNString NVarChar(14) -- String
SET     @FieldNString = 'ЙЦУКЩывапрм
q'
DECLARE @FieldChar NVarChar -- String
SET     @FieldChar = '&'
DECLARE @FieldNChar NVarChar -- String
SET     @FieldNChar = '>'
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = 3.40282002E+38
DECLARE @FieldDouble Float -- Double
SET     @FieldDouble = 1.7976931348623157E+308
DECLARE @FieldDateTime DateTime
SET     @FieldDateTime = '2001-10-12 21:14:15.167'
DECLARE @FieldBinary VarBinary(6) -- Binary
SET     @FieldBinary = 0x000102030004
DECLARE @FieldGuid UniqueIdentifier -- Guid
SET     @FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'
DECLARE @FieldDecimal Decimal(18, 10)
SET     @FieldDecimal = -99999999.9999999999
DECLARE @FieldEnumString NVarChar(1) -- String
SET     @FieldEnumString = ''
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
	[FieldBinary],
	[FieldGuid],
	[FieldDecimal],
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
	@FieldBinary,
	@FieldGuid,
	@FieldDecimal,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @FieldInt32 Int -- Int32
SET     @FieldInt32 = -123
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = 987
DECLARE @FieldBoolean Bit -- Boolean
SET     @FieldBoolean = NULL
DECLARE @FieldString NVarChar(20) -- String
SET     @FieldString = '`~!@#$%^&*()_+{}|[]\'
DECLARE @FieldNString NVarChar(12) -- String
SET     @FieldNString = '<>?/.,;''щЩ":'
DECLARE @FieldChar NVarChar -- String
SET     @FieldChar = ''
DECLARE @FieldNChar NVarChar -- String
SET     @FieldNChar = '
'
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = 1.17549996E-38
DECLARE @FieldDouble Float -- Double
SET     @FieldDouble = -2.2250738585072014E-308
DECLARE @FieldDateTime DateTime
SET     @FieldDateTime = '2098-10-12 21:14:15.997'
DECLARE @FieldBinary VarBinary(6) -- Binary
SET     @FieldBinary = 0xFFC864321400
DECLARE @FieldGuid UniqueIdentifier -- Guid
SET     @FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'
DECLARE @FieldDecimal Decimal(18, 10)
SET     @FieldDecimal = 99999999.9999999999
DECLARE @FieldEnumString NVarChar -- String
SET     @FieldEnumString = ''
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
	[FieldBinary],
	[FieldGuid],
	[FieldDecimal],
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
	@FieldBinary,
	@FieldGuid,
	@FieldDecimal,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @FieldInt32 Int -- Int32
SET     @FieldInt32 = -123
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = 987
DECLARE @FieldBoolean Bit -- Boolean
SET     @FieldBoolean = NULL
DECLARE @FieldString NVarChar(12) -- String
SET     @FieldString = '<>?/.,;''zZ":'
DECLARE @FieldNString NVarChar(20) -- String
SET     @FieldNString = '`~!@#$%^&*()_+{}|[]\'
DECLARE @FieldChar NVarChar -- String
SET     @FieldChar = ''
DECLARE @FieldNChar NVarChar -- String
SET     @FieldNChar = ''
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = -1.17549996E-38
DECLARE @FieldDouble Float -- Double
SET     @FieldDouble = 2.2250738585072014E-308
DECLARE @FieldDateTime DateTime
SET     @FieldDateTime = '2098-10-12 21:14:15.907'
DECLARE @FieldBinary VarBinary(6) -- Binary
SET     @FieldBinary = 0xFFC864321400
DECLARE @FieldGuid UniqueIdentifier -- Guid
SET     @FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'
DECLARE @FieldDecimal Decimal(3, 3)
SET     @FieldDecimal = -0.123
DECLARE @FieldEnumString NVarChar -- String
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
	[FieldBinary],
	[FieldGuid],
	[FieldDecimal],
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
	@FieldBinary,
	@FieldGuid,
	@FieldDecimal,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @FieldInt32 Int -- Int32
SET     @FieldInt32 = 2147483647
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = 9223372036854775807
DECLARE @FieldBoolean Bit -- Boolean
SET     @FieldBoolean = 0
DECLARE @FieldString NVarChar(9) -- String
SET     @FieldString = 'test
	'
DECLARE @FieldNString NVarChar(14) -- String
SET     @FieldNString = 'ЙЦУКЩывапрм
q'
DECLARE @FieldChar NVarChar -- String
SET     @FieldChar = '1'
DECLARE @FieldNChar NVarChar -- String
SET     @FieldNChar = ' '
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = 3.40282002E+38
DECLARE @FieldDouble Float -- Double
SET     @FieldDouble = 1.7976931348623157E+308
DECLARE @FieldDateTime DateTime
SET     @FieldDateTime = '2001-10-12 21:14:15.167'
DECLARE @FieldBinary VarBinary(6) -- Binary
SET     @FieldBinary = 0x000102030004
DECLARE @FieldGuid UniqueIdentifier -- Guid
SET     @FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'
DECLARE @FieldDecimal Decimal(18, 10)
SET     @FieldDecimal = -99999999.9999999999
DECLARE @FieldEnumString NVarChar(1) -- String
SET     @FieldEnumString = ''
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
	[FieldBinary],
	[FieldGuid],
	[FieldDecimal],
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
	@FieldBinary,
	@FieldGuid,
	@FieldDecimal,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @FieldInt32 Int -- Int32
SET     @FieldInt32 = -123
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = 987
DECLARE @FieldBoolean Bit -- Boolean
SET     @FieldBoolean = NULL
DECLARE @FieldString NVarChar(12) -- String
SET     @FieldString = '<>?/.,;''zZ":'
DECLARE @FieldNString NVarChar(20) -- String
SET     @FieldNString = '`~!@#$%^&*()_+{}|[]\'
DECLARE @FieldChar NVarChar -- String
SET     @FieldChar = ' '
DECLARE @FieldNChar NVarChar -- String
SET     @FieldNChar = ' '
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = -1.17549996E-38
DECLARE @FieldDouble Float -- Double
SET     @FieldDouble = 2.2250738585072014E-308
DECLARE @FieldDateTime DateTime
SET     @FieldDateTime = '2098-10-12 21:14:15.913'
DECLARE @FieldBinary VarBinary(6) -- Binary
SET     @FieldBinary = 0xFFC864321400
DECLARE @FieldGuid UniqueIdentifier -- Guid
SET     @FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'
DECLARE @FieldDecimal Decimal(3, 3)
SET     @FieldDecimal = -0.123
DECLARE @FieldEnumString NVarChar -- String
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
	[FieldBinary],
	[FieldGuid],
	[FieldDecimal],
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
	@FieldBinary,
	@FieldGuid,
	@FieldDecimal,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @FieldInt32 Int -- Int32
SET     @FieldInt32 = 2147483647
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = 9223372036854775807
DECLARE @FieldBoolean Bit -- Boolean
SET     @FieldBoolean = 0
DECLARE @FieldString NVarChar(12) -- String
SET     @FieldString = 'test
	  '
DECLARE @FieldNString NVarChar(17) -- String
SET     @FieldNString = 'ЙЦУКЩывапрм
q  '
DECLARE @FieldChar NVarChar -- String
SET     @FieldChar = '-'
DECLARE @FieldNChar NVarChar -- String
SET     @FieldNChar = '~'
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = 3.40282002E+38
DECLARE @FieldDouble Float -- Double
SET     @FieldDouble = 1.7976931348623157E+308
DECLARE @FieldDateTime DateTime
SET     @FieldDateTime = '2001-10-12 21:14:15.167'
DECLARE @FieldBinary VarBinary(6) -- Binary
SET     @FieldBinary = 0x000102030004
DECLARE @FieldGuid UniqueIdentifier -- Guid
SET     @FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'
DECLARE @FieldDecimal Decimal(18, 10)
SET     @FieldDecimal = -99999999.9999999999
DECLARE @FieldEnumString NVarChar(1) -- String
SET     @FieldEnumString = ''
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
	[FieldBinary],
	[FieldGuid],
	[FieldDecimal],
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
	@FieldBinary,
	@FieldGuid,
	@FieldDecimal,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Field1] as [FieldInt32],
	[t1].[FieldInt64],
	[t1].[FieldBoolean],
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
	[t1].[FieldEnumString],
	[t1].[FieldEnumNumber]
FROM
	[TestMerge1] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Field1] as [FieldInt32],
	[t1].[FieldInt64],
	[t1].[FieldBoolean],
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
	[t1].[FieldEnumString],
	[t1].[FieldEnumNumber]
FROM
	[TestMerge2] [t1]
ORDER BY
	[t1].[Id]

