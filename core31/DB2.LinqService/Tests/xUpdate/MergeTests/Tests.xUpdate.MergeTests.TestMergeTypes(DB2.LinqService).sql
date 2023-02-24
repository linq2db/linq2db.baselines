BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"TestMerge1" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"TestMerge2" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
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
DECLARE @FieldNString VarChar -- String
SET     @FieldNString = NULL
DECLARE @FieldChar Char -- StringFixedLength
SET     @FieldChar = NULL
DECLARE @FieldNChar Char -- StringFixedLength
SET     @FieldNChar = NULL
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = NULL
DECLARE @FieldDouble Double
SET     @FieldDouble = NULL
DECLARE @FieldDateTime Timestamp -- DateTime
SET     @FieldDateTime = NULL
DECLARE @FieldBinary VarBinary -- Binary
SET     @FieldBinary = NULL
DECLARE @FieldGuid VarBinary -- Binary
SET     @FieldGuid = NULL
DECLARE @FieldDecimal Decimal
SET     @FieldDecimal = NULL
DECLARE @FieldDate Timestamp -- DateTime
SET     @FieldDate = NULL
DECLARE @FieldTime Time
SET     @FieldTime = NULL
DECLARE @FieldEnumString VarChar -- String
SET     @FieldEnumString = NULL
DECLARE @FieldEnumNumber Integer -- Int32
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
	@FieldDate,
	@FieldTime,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @FieldInt32 Integer(4) -- Int32
SET     @FieldInt32 = -2147483647
DECLARE @FieldInt64 BigInt(8) -- Int64
SET     @FieldInt64 = -9223372036854775807
DECLARE @FieldBoolean SmallInt(4) -- Int16
SET     @FieldBoolean = 1
DECLARE @FieldString VarChar(13) -- String
SET     @FieldString = 'normal strinG'
DECLARE @FieldNString VarChar(13) -- String
SET     @FieldNString = 'всЁ нормально'
DECLARE @FieldChar Char(1) -- StringFixedLength
SET     @FieldChar = '*'
DECLARE @FieldNChar Char(1) -- StringFixedLength
SET     @FieldNChar = 'ё'
DECLARE @FieldFloat Real(4) -- Single
SET     @FieldFloat = -3.40282002E+38
DECLARE @FieldDouble Double(8)
SET     @FieldDouble = -1.7976931348623157E+308
DECLARE @FieldDateTime Timestamp(20) -- DateTime
SET     @FieldDateTime = '2000-11-12-21.14.15.167000'
DECLARE @FieldBinary VarBinary(0) -- Binary
SET     @FieldBinary = BX''
DECLARE @FieldGuid VarBinary(16) -- Binary
SET     @FieldGuid = BX'00000000000000000000000000000000'
DECLARE @FieldDecimal (18, 10) -- Decimal
SET     @FieldDecimal = 12345678.9012345678
DECLARE @FieldDate Timestamp(20) -- DateTime
SET     @FieldDate = '2000-11-23-00.00.00.000000'
DECLARE @FieldTime Time(6)
SET     @FieldTime = '09:44:34'
DECLARE @FieldEnumString VarChar(5) -- String
SET     @FieldEnumString = 'FIRST'
DECLARE @FieldEnumNumber Integer -- Int32
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
	@FieldDate,
	@FieldTime,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @FieldInt32 Integer(4) -- Int32
SET     @FieldInt32 = 2147483647
DECLARE @FieldInt64 BigInt(8) -- Int64
SET     @FieldInt64 = 9223372036854775807
DECLARE @FieldBoolean SmallInt(4) -- Int16
SET     @FieldBoolean = 0
DECLARE @FieldString VarChar(10) -- String
SET     @FieldString = 'test
	'
DECLARE @FieldNString VarChar(14) -- String
SET     @FieldNString = 'ЙЦУКЩывапрм
q'
DECLARE @FieldChar Char(1) -- StringFixedLength
SET     @FieldChar = '&'
DECLARE @FieldNChar Char(1) -- StringFixedLength
SET     @FieldNChar = '>'
DECLARE @FieldFloat Real(4) -- Single
SET     @FieldFloat = 3.40282002E+38
DECLARE @FieldDouble Double(8)
SET     @FieldDouble = 1.7976931348623157E+308
DECLARE @FieldDateTime Timestamp(20) -- DateTime
SET     @FieldDateTime = '2001-10-12-21.14.15.167000'
DECLARE @FieldBinary VarBinary(6) -- Binary
SET     @FieldBinary = BX'000102030004'
DECLARE @FieldGuid VarBinary(16) -- Binary
SET     @FieldGuid = BX'FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF'
DECLARE @FieldDecimal (18, 10) -- Decimal
SET     @FieldDecimal = -99999999.9999999999
DECLARE @FieldDate Timestamp(20) -- DateTime
SET     @FieldDate = '2123-11-23-00.00.00.000000'
DECLARE @FieldTime Time(6)
SET     @FieldTime = '00:44:34'
DECLARE @FieldEnumString VarChar(1) -- String
SET     @FieldEnumString = ''
DECLARE @FieldEnumNumber Integer(4) -- Int32
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
	@FieldDate,
	@FieldTime,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
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
DECLARE @FieldNString VarChar(12) -- String
SET     @FieldNString = '<>?/.,;''щЩ":'
DECLARE @FieldChar Char(1) -- StringFixedLength
SET     @FieldChar = ''
DECLARE @FieldNChar Char(1) -- StringFixedLength
SET     @FieldNChar = '
'
DECLARE @FieldFloat Real(4) -- Single
SET     @FieldFloat = 1.17549996E-38
DECLARE @FieldDouble Double(8)
SET     @FieldDouble = -2.2250738585072014E-308
DECLARE @FieldDateTime Timestamp(20) -- DateTime
SET     @FieldDateTime = '2098-10-12-21.14.15.997000'
DECLARE @FieldBinary VarBinary(6) -- Binary
SET     @FieldBinary = BX'FFC864321400'
DECLARE @FieldGuid VarBinary(16) -- Binary
SET     @FieldGuid = BX'FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF'
DECLARE @FieldDecimal (18, 10) -- Decimal
SET     @FieldDecimal = 99999999.9999999999
DECLARE @FieldDate Timestamp(20) -- DateTime
SET     @FieldDate = '2110-11-23-00.00.00.000000'
DECLARE @FieldTime Time(6)
SET     @FieldTime = '00:00:00'
DECLARE @FieldEnumString VarChar -- String
SET     @FieldEnumString = ''
DECLARE @FieldEnumNumber Integer(4) -- Int32
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
	@FieldDate,
	@FieldTime,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
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
DECLARE @FieldNString VarChar(20) -- String
SET     @FieldNString = '`~!@#$%^&*()_+{}|[]\'
DECLARE @FieldChar Char(1) -- StringFixedLength
SET     @FieldChar = ''
DECLARE @FieldNChar Char(1) -- StringFixedLength
SET     @FieldNChar = ''
DECLARE @FieldFloat Real(4) -- Single
SET     @FieldFloat = -1.17549996E-38
DECLARE @FieldDouble Double(8)
SET     @FieldDouble = 2.2250738585072014E-308
DECLARE @FieldDateTime Timestamp(20) -- DateTime
SET     @FieldDateTime = '2098-10-12-21.14.15.907000'
DECLARE @FieldBinary VarBinary(6) -- Binary
SET     @FieldBinary = BX'FFC864321400'
DECLARE @FieldGuid VarBinary(16) -- Binary
SET     @FieldGuid = BX'FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF'
DECLARE @FieldDecimal (3, 3) -- Decimal
SET     @FieldDecimal = -0.123
DECLARE @FieldDate Timestamp(20) -- DateTime
SET     @FieldDate = '2111-11-23-00.00.00.000000'
DECLARE @FieldTime Time(6)
SET     @FieldTime = '23:59:59'
DECLARE @FieldEnumString VarChar -- String
SET     @FieldEnumString = NULL
DECLARE @FieldEnumNumber Integer(4) -- Int32
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
	@FieldDate,
	@FieldTime,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4
DECLARE @FieldInt32 Integer(4) -- Int32
SET     @FieldInt32 = 2147483647
DECLARE @FieldInt64 BigInt(8) -- Int64
SET     @FieldInt64 = 9223372036854775807
DECLARE @FieldBoolean SmallInt(4) -- Int16
SET     @FieldBoolean = 0
DECLARE @FieldString VarChar(9) -- String
SET     @FieldString = 'test
	'
DECLARE @FieldNString VarChar(14) -- String
SET     @FieldNString = 'ЙЦУКЩывапрм
q'
DECLARE @FieldChar Char(1) -- StringFixedLength
SET     @FieldChar = '1'
DECLARE @FieldNChar Char(1) -- StringFixedLength
SET     @FieldNChar = ' '
DECLARE @FieldFloat Real(4) -- Single
SET     @FieldFloat = 3.40282002E+38
DECLARE @FieldDouble Double(8)
SET     @FieldDouble = 1.7976931348623157E+308
DECLARE @FieldDateTime Timestamp(20) -- DateTime
SET     @FieldDateTime = '2001-10-12-21.14.15.167000'
DECLARE @FieldBinary VarBinary(6) -- Binary
SET     @FieldBinary = BX'000102030004'
DECLARE @FieldGuid VarBinary(16) -- Binary
SET     @FieldGuid = BX'FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF'
DECLARE @FieldDecimal (18, 10) -- Decimal
SET     @FieldDecimal = -99999999.9999999999
DECLARE @FieldDate Timestamp(20) -- DateTime
SET     @FieldDate = '2123-11-23-00.00.00.000000'
DECLARE @FieldTime Time(6)
SET     @FieldTime = '14:44:33'
DECLARE @FieldEnumString VarChar(1) -- String
SET     @FieldEnumString = ''
DECLARE @FieldEnumNumber Integer(4) -- Int32
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
	@FieldDate,
	@FieldTime,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
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
DECLARE @FieldNString VarChar(20) -- String
SET     @FieldNString = '`~!@#$%^&*()_+{}|[]\'
DECLARE @FieldChar Char(1) -- StringFixedLength
SET     @FieldChar = ' '
DECLARE @FieldNChar Char(1) -- StringFixedLength
SET     @FieldNChar = ' '
DECLARE @FieldFloat Real(4) -- Single
SET     @FieldFloat = -1.17549996E-38
DECLARE @FieldDouble Double(8)
SET     @FieldDouble = 2.2250738585072014E-308
DECLARE @FieldDateTime Timestamp(20) -- DateTime
SET     @FieldDateTime = '2098-10-12-21.14.15.913000'
DECLARE @FieldBinary VarBinary(6) -- Binary
SET     @FieldBinary = BX'FFC864321400'
DECLARE @FieldGuid VarBinary(16) -- Binary
SET     @FieldGuid = BX'FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF'
DECLARE @FieldDecimal (3, 3) -- Decimal
SET     @FieldDecimal = -0.123
DECLARE @FieldDate Timestamp(20) -- DateTime
SET     @FieldDate = '2010-11-23-00.00.00.000000'
DECLARE @FieldTime Time(6)
SET     @FieldTime = '23:59:59'
DECLARE @FieldEnumString VarChar -- String
SET     @FieldEnumString = NULL
DECLARE @FieldEnumNumber Integer(4) -- Int32
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
	@FieldDate,
	@FieldTime,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 6
DECLARE @FieldInt32 Integer(4) -- Int32
SET     @FieldInt32 = 2147483647
DECLARE @FieldInt64 BigInt(8) -- Int64
SET     @FieldInt64 = 9223372036854775807
DECLARE @FieldBoolean SmallInt(4) -- Int16
SET     @FieldBoolean = 0
DECLARE @FieldString VarChar(12) -- String
SET     @FieldString = 'test
	  '
DECLARE @FieldNString VarChar(17) -- String
SET     @FieldNString = 'ЙЦУКЩывапрм
q  '
DECLARE @FieldChar Char(1) -- StringFixedLength
SET     @FieldChar = '-'
DECLARE @FieldNChar Char(1) -- StringFixedLength
SET     @FieldNChar = '~'
DECLARE @FieldFloat Real(4) -- Single
SET     @FieldFloat = 3.40282002E+38
DECLARE @FieldDouble Double(8)
SET     @FieldDouble = 1.7976931348623157E+308
DECLARE @FieldDateTime Timestamp(20) -- DateTime
SET     @FieldDateTime = '2001-10-12-21.14.15.167000'
DECLARE @FieldBinary VarBinary(6) -- Binary
SET     @FieldBinary = BX'000102030004'
DECLARE @FieldGuid VarBinary(16) -- Binary
SET     @FieldGuid = BX'FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF'
DECLARE @FieldDecimal (18, 10) -- Decimal
SET     @FieldDecimal = -99999999.9999999999
DECLARE @FieldDate Timestamp(20) -- DateTime
SET     @FieldDate = '2123-11-23-00.00.00.000000'
DECLARE @FieldTime Time(6)
SET     @FieldTime = '22:44:33'
DECLARE @FieldEnumString VarChar(1) -- String
SET     @FieldEnumString = ''
DECLARE @FieldEnumNumber Integer(4) -- Int32
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
	@FieldDate,
	@FieldTime,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

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
-- DB2 DB2.LUW DB2LUW

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

