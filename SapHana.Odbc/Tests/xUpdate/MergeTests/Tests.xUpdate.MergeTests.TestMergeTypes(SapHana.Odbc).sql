BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"TestMerge1" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"TestMerge2" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @FieldInt32 Int -- Int32
SET     @FieldInt32 = NULL
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = NULL
DECLARE @FieldBoolean TinyInt -- Byte
SET     @FieldBoolean = NULL
DECLARE @FieldString NVarChar -- String
SET     @FieldString = NULL
DECLARE @FieldNString NVarChar -- String
SET     @FieldNString = NULL
DECLARE @FieldChar NChar -- StringFixedLength
SET     @FieldChar = NULL
DECLARE @FieldNChar NChar -- StringFixedLength
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
DECLARE @FieldDate DateTime
SET     @FieldDate = NULL
DECLARE @FieldTime Time
SET     @FieldTime = NULL
DECLARE @FieldEnumString NVarChar -- String
SET     @FieldEnumString = NULL
DECLARE @FieldEnumNumber Int -- Int32
SET     @FieldEnumNumber = NULL

INSERT INTO "TestMerge1"
(
	"Id",
	"Field1",
	"FieldInt64",
	"FieldBoolean",
	"FieldString",
	"FieldNString",
	"FieldChar",
	"FieldNChar",
	"FieldFloat",
	"FieldDouble",
	"FieldDateTime",
	"FieldBinary",
	"FieldGuid",
	"FieldDecimal",
	"FieldDate",
	"FieldTime",
	"FieldEnumString",
	"FieldEnumNumber"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @FieldInt32 Int -- Int32
SET     @FieldInt32 = -2147483647
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = -9223372036854775807
DECLARE @FieldBoolean TinyInt(1) -- Byte
SET     @FieldBoolean = 1
DECLARE @FieldString NVarChar(13) -- String
SET     @FieldString = 'normal strinG'
DECLARE @FieldNString NVarChar(13) -- String
SET     @FieldNString = 'всЁ нормально'
DECLARE @FieldChar NChar(1) -- StringFixedLength
SET     @FieldChar = '*'
DECLARE @FieldNChar NChar(1) -- StringFixedLength
SET     @FieldNChar = 'ё'
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = -3.40282002E+38
DECLARE @FieldDouble Double
SET     @FieldDouble = -1.7976931348623157E+308
DECLARE @FieldDateTime DateTime
SET     @FieldDateTime = '2000-11-12 21:14:15.167'
DECLARE @FieldBinary VarBinary(0) -- Binary
SET     @FieldBinary = x''
DECLARE @FieldGuid Char(36) -- AnsiStringFixedLength
SET     @FieldGuid = '00000000-0000-0000-0000-000000000000'
DECLARE @FieldDecimal Decimal(18, 10)
SET     @FieldDecimal = 12345678.9012345678
DECLARE @FieldDate DateTime
SET     @FieldDate = '2000-11-23'
DECLARE @FieldTime Time
SET     @FieldTime = 09:44:34.6534321
DECLARE @FieldEnumString NVarChar(5) -- String
SET     @FieldEnumString = 'FIRST'
DECLARE @FieldEnumNumber Int -- Int32
SET     @FieldEnumNumber = NULL

INSERT INTO "TestMerge1"
(
	"Id",
	"Field1",
	"FieldInt64",
	"FieldBoolean",
	"FieldString",
	"FieldNString",
	"FieldChar",
	"FieldNChar",
	"FieldFloat",
	"FieldDouble",
	"FieldDateTime",
	"FieldBinary",
	"FieldGuid",
	"FieldDecimal",
	"FieldDate",
	"FieldTime",
	"FieldEnumString",
	"FieldEnumNumber"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @FieldInt32 Int -- Int32
SET     @FieldInt32 = 2147483647
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = 9223372036854775807
DECLARE @FieldBoolean TinyInt(1) -- Byte
SET     @FieldBoolean = 0
DECLARE @FieldString NVarChar(10) -- String
SET     @FieldString = 'test
	'
DECLARE @FieldNString NVarChar(14) -- String
SET     @FieldNString = 'ЙЦУКЩывапрм
q'
DECLARE @FieldChar NChar(1) -- StringFixedLength
SET     @FieldChar = '&'
DECLARE @FieldNChar NChar(1) -- StringFixedLength
SET     @FieldNChar = '>'
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = 3.40282002E+38
DECLARE @FieldDouble Double
SET     @FieldDouble = 1.7976931348623157E+308
DECLARE @FieldDateTime DateTime
SET     @FieldDateTime = '2001-10-12 21:14:15.167'
DECLARE @FieldBinary VarBinary(6) -- Binary
SET     @FieldBinary = x'000102030004'
DECLARE @FieldGuid Char(36) -- AnsiStringFixedLength
SET     @FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'
DECLARE @FieldDecimal Decimal(18, 10)
SET     @FieldDecimal = -99999999.9999999999
DECLARE @FieldDate DateTime
SET     @FieldDate = '2123-11-23'
DECLARE @FieldTime Time
SET     @FieldTime = 00:44:34.6414321
DECLARE @FieldEnumString NVarChar(1) -- String
SET     @FieldEnumString = ''
DECLARE @FieldEnumNumber Int -- Int32
SET     @FieldEnumNumber = 0

INSERT INTO "TestMerge1"
(
	"Id",
	"Field1",
	"FieldInt64",
	"FieldBoolean",
	"FieldString",
	"FieldNString",
	"FieldChar",
	"FieldNChar",
	"FieldFloat",
	"FieldDouble",
	"FieldDateTime",
	"FieldBinary",
	"FieldGuid",
	"FieldDecimal",
	"FieldDate",
	"FieldTime",
	"FieldEnumString",
	"FieldEnumNumber"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @FieldInt32 Int -- Int32
SET     @FieldInt32 = -123
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = 987
DECLARE @FieldBoolean TinyInt -- Byte
SET     @FieldBoolean = NULL
DECLARE @FieldString NVarChar(20) -- String
SET     @FieldString = '`~!@#$%^&*()_+{}|[]\'
DECLARE @FieldNString NVarChar(12) -- String
SET     @FieldNString = '<>?/.,;''щЩ":'
DECLARE @FieldChar NChar(1) -- StringFixedLength
SET     @FieldChar = ''
DECLARE @FieldNChar NChar(1) -- StringFixedLength
SET     @FieldNChar = '
'
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = 1.17549996E-38
DECLARE @FieldDouble Double
SET     @FieldDouble = -2.2250738585072014E-308
DECLARE @FieldDateTime DateTime
SET     @FieldDateTime = '2098-10-12 21:14:15.997'
DECLARE @FieldBinary VarBinary(6) -- Binary
SET     @FieldBinary = x'FFC864321400'
DECLARE @FieldGuid Char(36) -- AnsiStringFixedLength
SET     @FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'
DECLARE @FieldDecimal Decimal(18, 10)
SET     @FieldDecimal = 99999999.9999999999
DECLARE @FieldDate DateTime
SET     @FieldDate = '2110-11-23'
DECLARE @FieldTime Time
SET     @FieldTime = 00:00:00
DECLARE @FieldEnumString NVarChar -- String
SET     @FieldEnumString = ''
DECLARE @FieldEnumNumber Int -- Int32
SET     @FieldEnumNumber = 2147483647

INSERT INTO "TestMerge1"
(
	"Id",
	"Field1",
	"FieldInt64",
	"FieldBoolean",
	"FieldString",
	"FieldNString",
	"FieldChar",
	"FieldNChar",
	"FieldFloat",
	"FieldDouble",
	"FieldDateTime",
	"FieldBinary",
	"FieldGuid",
	"FieldDecimal",
	"FieldDate",
	"FieldTime",
	"FieldEnumString",
	"FieldEnumNumber"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @FieldInt32 Int -- Int32
SET     @FieldInt32 = -123
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = 987
DECLARE @FieldBoolean TinyInt -- Byte
SET     @FieldBoolean = NULL
DECLARE @FieldString NVarChar(12) -- String
SET     @FieldString = '<>?/.,;''zZ":'
DECLARE @FieldNString NVarChar(20) -- String
SET     @FieldNString = '`~!@#$%^&*()_+{}|[]\'
DECLARE @FieldChar NChar(1) -- StringFixedLength
SET     @FieldChar = ''
DECLARE @FieldNChar NChar(1) -- StringFixedLength
SET     @FieldNChar = ''
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = -1.17549996E-38
DECLARE @FieldDouble Double
SET     @FieldDouble = 2.2250738585072014E-308
DECLARE @FieldDateTime DateTime
SET     @FieldDateTime = '2098-10-12 21:14:15.907'
DECLARE @FieldBinary VarBinary(6) -- Binary
SET     @FieldBinary = x'FFC864321400'
DECLARE @FieldGuid Char(36) -- AnsiStringFixedLength
SET     @FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'
DECLARE @FieldDecimal Decimal(3, 3)
SET     @FieldDecimal = -0.123
DECLARE @FieldDate DateTime
SET     @FieldDate = '2111-11-23'
DECLARE @FieldTime Time
SET     @FieldTime = 23:59:59.9999999
DECLARE @FieldEnumString NVarChar -- String
SET     @FieldEnumString = NULL
DECLARE @FieldEnumNumber Int -- Int32
SET     @FieldEnumNumber = -2147483647

INSERT INTO "TestMerge2"
(
	"Id",
	"Field1",
	"FieldInt64",
	"FieldBoolean",
	"FieldString",
	"FieldNString",
	"FieldChar",
	"FieldNChar",
	"FieldFloat",
	"FieldDouble",
	"FieldDateTime",
	"FieldBinary",
	"FieldGuid",
	"FieldDecimal",
	"FieldDate",
	"FieldTime",
	"FieldEnumString",
	"FieldEnumNumber"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @FieldInt32 Int -- Int32
SET     @FieldInt32 = 2147483647
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = 9223372036854775807
DECLARE @FieldBoolean TinyInt(1) -- Byte
SET     @FieldBoolean = 0
DECLARE @FieldString NVarChar(9) -- String
SET     @FieldString = 'test
	'
DECLARE @FieldNString NVarChar(14) -- String
SET     @FieldNString = 'ЙЦУКЩывапрм
q'
DECLARE @FieldChar NChar(1) -- StringFixedLength
SET     @FieldChar = '1'
DECLARE @FieldNChar NChar(1) -- StringFixedLength
SET     @FieldNChar = ' '
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = 3.40282002E+38
DECLARE @FieldDouble Double
SET     @FieldDouble = 1.7976931348623157E+308
DECLARE @FieldDateTime DateTime
SET     @FieldDateTime = '2001-10-12 21:14:15.167'
DECLARE @FieldBinary VarBinary(6) -- Binary
SET     @FieldBinary = x'000102030004'
DECLARE @FieldGuid Char(36) -- AnsiStringFixedLength
SET     @FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'
DECLARE @FieldDecimal Decimal(18, 10)
SET     @FieldDecimal = -99999999.9999999999
DECLARE @FieldDate DateTime
SET     @FieldDate = '2123-11-23'
DECLARE @FieldTime Time
SET     @FieldTime = 14:44:33.2340000
DECLARE @FieldEnumString NVarChar(1) -- String
SET     @FieldEnumString = ''
DECLARE @FieldEnumNumber Int -- Int32
SET     @FieldEnumNumber = 0

INSERT INTO "TestMerge2"
(
	"Id",
	"Field1",
	"FieldInt64",
	"FieldBoolean",
	"FieldString",
	"FieldNString",
	"FieldChar",
	"FieldNChar",
	"FieldFloat",
	"FieldDouble",
	"FieldDateTime",
	"FieldBinary",
	"FieldGuid",
	"FieldDecimal",
	"FieldDate",
	"FieldTime",
	"FieldEnumString",
	"FieldEnumNumber"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @FieldInt32 Int -- Int32
SET     @FieldInt32 = -123
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = 987
DECLARE @FieldBoolean TinyInt -- Byte
SET     @FieldBoolean = NULL
DECLARE @FieldString NVarChar(12) -- String
SET     @FieldString = '<>?/.,;''zZ":'
DECLARE @FieldNString NVarChar(20) -- String
SET     @FieldNString = '`~!@#$%^&*()_+{}|[]\'
DECLARE @FieldChar NChar(1) -- StringFixedLength
SET     @FieldChar = ' '
DECLARE @FieldNChar NChar(1) -- StringFixedLength
SET     @FieldNChar = ' '
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = -1.17549996E-38
DECLARE @FieldDouble Double
SET     @FieldDouble = 2.2250738585072014E-308
DECLARE @FieldDateTime DateTime
SET     @FieldDateTime = '2098-10-12 21:14:15.913'
DECLARE @FieldBinary VarBinary(6) -- Binary
SET     @FieldBinary = x'FFC864321400'
DECLARE @FieldGuid Char(36) -- AnsiStringFixedLength
SET     @FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'
DECLARE @FieldDecimal Decimal(3, 3)
SET     @FieldDecimal = -0.123
DECLARE @FieldDate DateTime
SET     @FieldDate = '2010-11-23'
DECLARE @FieldTime Time
SET     @FieldTime = 23:59:59.9999999
DECLARE @FieldEnumString NVarChar -- String
SET     @FieldEnumString = NULL
DECLARE @FieldEnumNumber Int -- Int32
SET     @FieldEnumNumber = -2147483647

INSERT INTO "TestMerge2"
(
	"Id",
	"Field1",
	"FieldInt64",
	"FieldBoolean",
	"FieldString",
	"FieldNString",
	"FieldChar",
	"FieldNChar",
	"FieldFloat",
	"FieldDouble",
	"FieldDateTime",
	"FieldBinary",
	"FieldGuid",
	"FieldDecimal",
	"FieldDate",
	"FieldTime",
	"FieldEnumString",
	"FieldEnumNumber"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @FieldInt32 Int -- Int32
SET     @FieldInt32 = 2147483647
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = 9223372036854775807
DECLARE @FieldBoolean TinyInt(1) -- Byte
SET     @FieldBoolean = 0
DECLARE @FieldString NVarChar(12) -- String
SET     @FieldString = 'test
	  '
DECLARE @FieldNString NVarChar(17) -- String
SET     @FieldNString = 'ЙЦУКЩывапрм
q  '
DECLARE @FieldChar NChar(1) -- StringFixedLength
SET     @FieldChar = '-'
DECLARE @FieldNChar NChar(1) -- StringFixedLength
SET     @FieldNChar = '~'
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = 3.40282002E+38
DECLARE @FieldDouble Double
SET     @FieldDouble = 1.7976931348623157E+308
DECLARE @FieldDateTime DateTime
SET     @FieldDateTime = '2001-10-12 21:14:15.167'
DECLARE @FieldBinary VarBinary(6) -- Binary
SET     @FieldBinary = x'000102030004'
DECLARE @FieldGuid Char(36) -- AnsiStringFixedLength
SET     @FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'
DECLARE @FieldDecimal Decimal(18, 10)
SET     @FieldDecimal = -99999999.9999999999
DECLARE @FieldDate DateTime
SET     @FieldDate = '2123-11-23'
DECLARE @FieldTime Time
SET     @FieldTime = 22:44:33
DECLARE @FieldEnumString NVarChar(1) -- String
SET     @FieldEnumString = ''
DECLARE @FieldEnumNumber Int -- Int32
SET     @FieldEnumNumber = 0

INSERT INTO "TestMerge2"
(
	"Id",
	"Field1",
	"FieldInt64",
	"FieldBoolean",
	"FieldString",
	"FieldNString",
	"FieldChar",
	"FieldNChar",
	"FieldFloat",
	"FieldDouble",
	"FieldDateTime",
	"FieldBinary",
	"FieldGuid",
	"FieldDecimal",
	"FieldDate",
	"FieldTime",
	"FieldEnumString",
	"FieldEnumNumber"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Field1",
	"t1"."FieldInt64",
	"t1"."FieldBoolean",
	"t1"."FieldString",
	"t1"."FieldNString",
	"t1"."FieldChar",
	"t1"."FieldNChar",
	"t1"."FieldFloat",
	"t1"."FieldDouble",
	"t1"."FieldDateTime",
	"t1"."FieldBinary",
	"t1"."FieldGuid",
	"t1"."FieldDecimal",
	"t1"."FieldDate",
	"t1"."FieldTime",
	"t1"."FieldEnumString",
	"t1"."FieldEnumNumber"
FROM
	"TestMerge1" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Field1",
	"t1"."FieldInt64",
	"t1"."FieldBoolean",
	"t1"."FieldString",
	"t1"."FieldNString",
	"t1"."FieldChar",
	"t1"."FieldNChar",
	"t1"."FieldFloat",
	"t1"."FieldDouble",
	"t1"."FieldDateTime",
	"t1"."FieldBinary",
	"t1"."FieldGuid",
	"t1"."FieldDecimal",
	"t1"."FieldDate",
	"t1"."FieldTime",
	"t1"."FieldEnumString",
	"t1"."FieldEnumNumber"
FROM
	"TestMerge2" "t1"
ORDER BY
	"t1"."Id"

