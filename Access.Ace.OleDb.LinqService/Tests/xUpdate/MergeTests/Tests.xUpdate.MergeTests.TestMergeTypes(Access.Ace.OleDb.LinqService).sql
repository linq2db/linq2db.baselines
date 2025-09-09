BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

DELETE FROM
	[TestMerge1] [t1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

DELETE FROM
	[TestMerge2] [t1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @FieldInt32 Integer -- Int32
SET     @FieldInt32 = NULL
DECLARE @FieldBoolean Boolean
SET     @FieldBoolean = NULL
DECLARE @FieldString VarWChar -- String
SET     @FieldString = NULL
DECLARE @FieldNString VarWChar -- String
SET     @FieldNString = NULL
DECLARE @FieldChar WChar -- StringFixedLength
SET     @FieldChar = NULL
DECLARE @FieldNChar WChar -- StringFixedLength
SET     @FieldNChar = NULL
DECLARE @FieldFloat Single
SET     @FieldFloat = NULL
DECLARE @FieldDouble Double
SET     @FieldDouble = NULL
DECLARE @FieldDateTime Date -- DateTime
SET     @FieldDateTime = NULL
DECLARE @FieldBinary VarBinary -- Binary
SET     @FieldBinary = NULL
DECLARE @FieldGuid Guid
SET     @FieldGuid = NULL
DECLARE @FieldDecimal VarChar -- AnsiString
SET     @FieldDecimal = NULL
DECLARE @FieldDate Date -- DateTime
SET     @FieldDate = NULL
DECLARE @FieldTime DBTime -- Time
SET     @FieldTime = NULL
DECLARE @FieldEnumString VarWChar -- String
SET     @FieldEnumString = NULL
DECLARE @FieldEnumNumber Integer -- Int32
SET     @FieldEnumNumber = NULL

INSERT INTO [TestMerge1]
(
	[Id],
	[Field1],
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
	[FieldDate],
	[FieldTime],
	[FieldEnumString],
	[FieldEnumNumber]
)
VALUES
(
	@Id,
	@FieldInt32,
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
	@FieldDate,
	@FieldTime,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @FieldInt32 Integer -- Int32
SET     @FieldInt32 = -2147483647
DECLARE @FieldBoolean Boolean
SET     @FieldBoolean = True
DECLARE @FieldString VarWChar(13) -- String
SET     @FieldString = 'normal strinG'
DECLARE @FieldNString VarWChar(13) -- String
SET     @FieldNString = 'всЁ нормально'
DECLARE @FieldChar WChar(1) -- StringFixedLength
SET     @FieldChar = '*'
DECLARE @FieldNChar WChar(1) -- StringFixedLength
SET     @FieldNChar = 'ё'
DECLARE @FieldFloat Single
SET     @FieldFloat = -3.40282002E+38
DECLARE @FieldDouble Double
SET     @FieldDouble = -1.7976931348623157E+308
DECLARE @FieldDateTime Date -- DateTime
SET     @FieldDateTime = #2000-11-12 21:14:15#
DECLARE @FieldBinary VarBinary(0) -- Binary
SET     @FieldBinary = 0x
DECLARE @FieldGuid Guid
SET     @FieldGuid = {guid {00000000-0000-0000-0000-000000000000}}
DECLARE @FieldDecimal VarChar(18, 10) -- AnsiString
SET     @FieldDecimal = 12345678.9012345678
DECLARE @FieldDate Date -- DateTime
SET     @FieldDate = #2000-11-23#
DECLARE @FieldTime DBTime -- Time
SET     @FieldTime = 09:44:34.6534321
DECLARE @FieldEnumString VarWChar(5) -- String
SET     @FieldEnumString = 'FIRST'
DECLARE @FieldEnumNumber Integer -- Int32
SET     @FieldEnumNumber = NULL

INSERT INTO [TestMerge1]
(
	[Id],
	[Field1],
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
	[FieldDate],
	[FieldTime],
	[FieldEnumString],
	[FieldEnumNumber]
)
VALUES
(
	@Id,
	@FieldInt32,
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
	@FieldDate,
	@FieldTime,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @FieldInt32 Integer -- Int32
SET     @FieldInt32 = 2147483647
DECLARE @FieldBoolean Boolean
SET     @FieldBoolean = False
DECLARE @FieldString VarWChar(10) -- String
SET     @FieldString = 'test
	'
DECLARE @FieldNString VarWChar(14) -- String
SET     @FieldNString = 'ЙЦУКЩывапрм
q'
DECLARE @FieldChar WChar(1) -- StringFixedLength
SET     @FieldChar = '&'
DECLARE @FieldNChar WChar(1) -- StringFixedLength
SET     @FieldNChar = '>'
DECLARE @FieldFloat Single
SET     @FieldFloat = 3.40282002E+38
DECLARE @FieldDouble Double
SET     @FieldDouble = 1.7976931348623157E+308
DECLARE @FieldDateTime Date -- DateTime
SET     @FieldDateTime = #2001-10-12 21:14:15#
DECLARE @FieldBinary VarBinary(6) -- Binary
SET     @FieldBinary = 0x000102030004
DECLARE @FieldGuid Guid
SET     @FieldGuid = {guid {ffffffff-ffff-ffff-ffff-ffffffffffff}}
DECLARE @FieldDecimal VarChar(18, 10) -- AnsiString
SET     @FieldDecimal = -99999999.9999999999
DECLARE @FieldDate Date -- DateTime
SET     @FieldDate = #2123-11-23#
DECLARE @FieldTime DBTime -- Time
SET     @FieldTime = 00:44:34.6414321
DECLARE @FieldEnumString VarWChar(1) -- String
SET     @FieldEnumString = chr(0)
DECLARE @FieldEnumNumber Integer -- Int32
SET     @FieldEnumNumber = 0

INSERT INTO [TestMerge1]
(
	[Id],
	[Field1],
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
	[FieldDate],
	[FieldTime],
	[FieldEnumString],
	[FieldEnumNumber]
)
VALUES
(
	@Id,
	@FieldInt32,
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
	@FieldDate,
	@FieldTime,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @FieldInt32 Integer -- Int32
SET     @FieldInt32 = -123
DECLARE @FieldBoolean Boolean
SET     @FieldBoolean = NULL
DECLARE @FieldString VarWChar(20) -- String
SET     @FieldString = '`~!@#$%^&*()_+{}|[]\'
DECLARE @FieldNString VarWChar(12) -- String
SET     @FieldNString = '<>?/.,;''щЩ":'
DECLARE @FieldChar WChar(1) -- StringFixedLength
SET     @FieldChar = ''
DECLARE @FieldNChar WChar(1) -- StringFixedLength
SET     @FieldNChar = '
'
DECLARE @FieldFloat Single
SET     @FieldFloat = 1.17549996E-38
DECLARE @FieldDouble Double
SET     @FieldDouble = -2.2250738585072014E-308
DECLARE @FieldDateTime Date -- DateTime
SET     @FieldDateTime = #2098-10-12 21:14:15#
DECLARE @FieldBinary VarBinary(6) -- Binary
SET     @FieldBinary = 0xFFC864321400
DECLARE @FieldGuid Guid
SET     @FieldGuid = {guid {ffffffff-ffff-ffff-ffff-ffffffffffff}}
DECLARE @FieldDecimal VarChar(18, 10) -- AnsiString
SET     @FieldDecimal = 99999999.9999999999
DECLARE @FieldDate Date -- DateTime
SET     @FieldDate = #2110-11-23#
DECLARE @FieldTime DBTime -- Time
SET     @FieldTime = 00:00:00
DECLARE @FieldEnumString VarWChar -- String
SET     @FieldEnumString = ''
DECLARE @FieldEnumNumber Integer -- Int32
SET     @FieldEnumNumber = 2147483647

INSERT INTO [TestMerge1]
(
	[Id],
	[Field1],
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
	[FieldDate],
	[FieldTime],
	[FieldEnumString],
	[FieldEnumNumber]
)
VALUES
(
	@Id,
	@FieldInt32,
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
	@FieldDate,
	@FieldTime,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @FieldInt32 Integer -- Int32
SET     @FieldInt32 = -123
DECLARE @FieldBoolean Boolean
SET     @FieldBoolean = NULL
DECLARE @FieldString VarWChar(12) -- String
SET     @FieldString = '<>?/.,;''zZ":'
DECLARE @FieldNString VarWChar(20) -- String
SET     @FieldNString = '`~!@#$%^&*()_+{}|[]\'
DECLARE @FieldChar WChar(1) -- StringFixedLength
SET     @FieldChar = ''
DECLARE @FieldNChar WChar(1) -- StringFixedLength
SET     @FieldNChar = ''
DECLARE @FieldFloat Single
SET     @FieldFloat = -1.17549996E-38
DECLARE @FieldDouble Double
SET     @FieldDouble = 2.2250738585072014E-308
DECLARE @FieldDateTime Date -- DateTime
SET     @FieldDateTime = #2098-10-12 21:14:15#
DECLARE @FieldBinary VarBinary(6) -- Binary
SET     @FieldBinary = 0xFFC864321400
DECLARE @FieldGuid Guid
SET     @FieldGuid = {guid {ffffffff-ffff-ffff-ffff-ffffffffffff}}
DECLARE @FieldDecimal VarChar(3, 3) -- AnsiString
SET     @FieldDecimal = -0.123
DECLARE @FieldDate Date -- DateTime
SET     @FieldDate = #2111-11-23#
DECLARE @FieldTime DBTime -- Time
SET     @FieldTime = 23:59:59.9999999
DECLARE @FieldEnumString VarWChar -- String
SET     @FieldEnumString = NULL
DECLARE @FieldEnumNumber Integer -- Int32
SET     @FieldEnumNumber = -2147483647

INSERT INTO [TestMerge2]
(
	[Id],
	[Field1],
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
	[FieldDate],
	[FieldTime],
	[FieldEnumString],
	[FieldEnumNumber]
)
VALUES
(
	@Id,
	@FieldInt32,
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
	@FieldDate,
	@FieldTime,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @FieldInt32 Integer -- Int32
SET     @FieldInt32 = 2147483647
DECLARE @FieldBoolean Boolean
SET     @FieldBoolean = False
DECLARE @FieldString VarWChar(9) -- String
SET     @FieldString = 'test
	'
DECLARE @FieldNString VarWChar(14) -- String
SET     @FieldNString = 'ЙЦУКЩывапрм
q'
DECLARE @FieldChar WChar(1) -- StringFixedLength
SET     @FieldChar = '1'
DECLARE @FieldNChar WChar(1) -- StringFixedLength
SET     @FieldNChar = ' '
DECLARE @FieldFloat Single
SET     @FieldFloat = 3.40282002E+38
DECLARE @FieldDouble Double
SET     @FieldDouble = 1.7976931348623157E+308
DECLARE @FieldDateTime Date -- DateTime
SET     @FieldDateTime = #2001-10-12 21:14:15#
DECLARE @FieldBinary VarBinary(6) -- Binary
SET     @FieldBinary = 0x000102030004
DECLARE @FieldGuid Guid
SET     @FieldGuid = {guid {ffffffff-ffff-ffff-ffff-ffffffffffff}}
DECLARE @FieldDecimal VarChar(18, 10) -- AnsiString
SET     @FieldDecimal = -99999999.9999999999
DECLARE @FieldDate Date -- DateTime
SET     @FieldDate = #2123-11-23#
DECLARE @FieldTime DBTime -- Time
SET     @FieldTime = 14:44:33.2340000
DECLARE @FieldEnumString VarWChar(1) -- String
SET     @FieldEnumString = chr(0)
DECLARE @FieldEnumNumber Integer -- Int32
SET     @FieldEnumNumber = 0

INSERT INTO [TestMerge2]
(
	[Id],
	[Field1],
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
	[FieldDate],
	[FieldTime],
	[FieldEnumString],
	[FieldEnumNumber]
)
VALUES
(
	@Id,
	@FieldInt32,
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
	@FieldDate,
	@FieldTime,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @FieldInt32 Integer -- Int32
SET     @FieldInt32 = -123
DECLARE @FieldBoolean Boolean
SET     @FieldBoolean = NULL
DECLARE @FieldString VarWChar(12) -- String
SET     @FieldString = '<>?/.,;''zZ":'
DECLARE @FieldNString VarWChar(20) -- String
SET     @FieldNString = '`~!@#$%^&*()_+{}|[]\'
DECLARE @FieldChar WChar(1) -- StringFixedLength
SET     @FieldChar = ' '
DECLARE @FieldNChar WChar(1) -- StringFixedLength
SET     @FieldNChar = ' '
DECLARE @FieldFloat Single
SET     @FieldFloat = -1.17549996E-38
DECLARE @FieldDouble Double
SET     @FieldDouble = 2.2250738585072014E-308
DECLARE @FieldDateTime Date -- DateTime
SET     @FieldDateTime = #2098-10-12 21:14:15#
DECLARE @FieldBinary VarBinary(6) -- Binary
SET     @FieldBinary = 0xFFC864321400
DECLARE @FieldGuid Guid
SET     @FieldGuid = {guid {ffffffff-ffff-ffff-ffff-ffffffffffff}}
DECLARE @FieldDecimal VarChar(3, 3) -- AnsiString
SET     @FieldDecimal = -0.123
DECLARE @FieldDate Date -- DateTime
SET     @FieldDate = #2010-11-23#
DECLARE @FieldTime DBTime -- Time
SET     @FieldTime = 23:59:59.9999999
DECLARE @FieldEnumString VarWChar -- String
SET     @FieldEnumString = NULL
DECLARE @FieldEnumNumber Integer -- Int32
SET     @FieldEnumNumber = -2147483647

INSERT INTO [TestMerge2]
(
	[Id],
	[Field1],
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
	[FieldDate],
	[FieldTime],
	[FieldEnumString],
	[FieldEnumNumber]
)
VALUES
(
	@Id,
	@FieldInt32,
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
	@FieldDate,
	@FieldTime,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @FieldInt32 Integer -- Int32
SET     @FieldInt32 = 2147483647
DECLARE @FieldBoolean Boolean
SET     @FieldBoolean = False
DECLARE @FieldString VarWChar(12) -- String
SET     @FieldString = 'test
	  '
DECLARE @FieldNString VarWChar(17) -- String
SET     @FieldNString = 'ЙЦУКЩывапрм
q  '
DECLARE @FieldChar WChar(1) -- StringFixedLength
SET     @FieldChar = '-'
DECLARE @FieldNChar WChar(1) -- StringFixedLength
SET     @FieldNChar = '~'
DECLARE @FieldFloat Single
SET     @FieldFloat = 3.40282002E+38
DECLARE @FieldDouble Double
SET     @FieldDouble = 1.7976931348623157E+308
DECLARE @FieldDateTime Date -- DateTime
SET     @FieldDateTime = #2001-10-12 21:14:15#
DECLARE @FieldBinary VarBinary(6) -- Binary
SET     @FieldBinary = 0x000102030004
DECLARE @FieldGuid Guid
SET     @FieldGuid = {guid {ffffffff-ffff-ffff-ffff-ffffffffffff}}
DECLARE @FieldDecimal VarChar(18, 10) -- AnsiString
SET     @FieldDecimal = -99999999.9999999999
DECLARE @FieldDate Date -- DateTime
SET     @FieldDate = #2123-11-23#
DECLARE @FieldTime DBTime -- Time
SET     @FieldTime = 22:44:33
DECLARE @FieldEnumString VarWChar(1) -- String
SET     @FieldEnumString = chr(0)
DECLARE @FieldEnumNumber Integer -- Int32
SET     @FieldEnumNumber = 0

INSERT INTO [TestMerge2]
(
	[Id],
	[Field1],
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
	[FieldDate],
	[FieldTime],
	[FieldEnumString],
	[FieldEnumNumber]
)
VALUES
(
	@Id,
	@FieldInt32,
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
	@FieldDate,
	@FieldTime,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Field1],
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
	[t1].[FieldDate],
	[t1].[FieldTime],
	[t1].[FieldEnumString],
	[t1].[FieldEnumNumber]
FROM
	[TestMerge1] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Field1],
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
	[t1].[FieldDate],
	[t1].[FieldTime],
	[t1].[FieldEnumString],
	[t1].[FieldEnumNumber]
FROM
	[TestMerge2] [t1]
ORDER BY
	[t1].[Id]

