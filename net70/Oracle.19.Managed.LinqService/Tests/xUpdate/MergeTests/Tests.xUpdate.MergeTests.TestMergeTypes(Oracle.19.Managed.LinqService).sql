BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

DELETE FROM
	"TestMerge1" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

DELETE FROM
	"TestMerge2" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @FieldInt32 Int32
SET     @FieldInt32 = NULL
DECLARE @FieldInt64 Int64
SET     @FieldInt64 = NULL
DECLARE @FieldBoolean Int16
SET     @FieldBoolean = NULL
DECLARE @FieldString Varchar2 -- String
SET     @FieldString = NULL
DECLARE @FieldNString Varchar2 -- String
SET     @FieldNString = NULL
DECLARE @FieldChar Char -- StringFixedLength
SET     @FieldChar = NULL
DECLARE @FieldNChar Char -- StringFixedLength
SET     @FieldNChar = NULL
DECLARE @FieldFloat BinaryFloat -- Single
SET     @FieldFloat = NULL
DECLARE @FieldDouble BinaryDouble -- Double
SET     @FieldDouble = NULL
DECLARE @FieldDateTime TimeStamp -- DateTime
SET     @FieldDateTime = NULL
DECLARE @FieldDateTime2 TimeStampTZ -- DateTimeOffset
SET     @FieldDateTime2 = NULL
DECLARE @FieldGuid Raw -- Binary
SET     @FieldGuid = NULL
DECLARE @FieldDecimal Decimal
SET     @FieldDecimal = NULL
DECLARE @FieldEnumString Varchar2 -- String
SET     @FieldEnumString = NULL
DECLARE @FieldEnumNumber Int32
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
	"FieldDateTime2",
	"FieldGuid",
	"FieldDecimal",
	"FieldEnumString",
	"FieldEnumNumber"
)
VALUES
(
	:Id,
	:FieldInt32,
	:FieldInt64,
	:FieldBoolean,
	:FieldString,
	:FieldNString,
	:FieldChar,
	:FieldNChar,
	:FieldFloat,
	:FieldDouble,
	:FieldDateTime,
	:FieldDateTime2,
	:FieldGuid,
	:FieldDecimal,
	:FieldEnumString,
	:FieldEnumNumber
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @FieldInt32 Int32
SET     @FieldInt32 = -2147483647
DECLARE @FieldInt64 Int64
SET     @FieldInt64 = -9223372036854775807
DECLARE @FieldBoolean Int16
SET     @FieldBoolean = 1
DECLARE @FieldString Varchar2(13) -- String
SET     @FieldString = 'normal strinG'
DECLARE @FieldNString Varchar2(13) -- String
SET     @FieldNString = 'всЁ нормально'
DECLARE @FieldChar Char -- StringFixedLength
SET     @FieldChar = '*'
DECLARE @FieldNChar Char -- StringFixedLength
SET     @FieldNChar = 'ё'
DECLARE @FieldFloat BinaryFloat -- Single
SET     @FieldFloat = -3.40282002E+38
DECLARE @FieldDouble BinaryDouble -- Double
SET     @FieldDouble = -1.7976931348623157E+308D
DECLARE @FieldDateTime TimeStamp -- DateTime
SET     @FieldDateTime = TIMESTAMP '2000-11-12 21:14:15.167000'
DECLARE @FieldDateTime2 TimeStampTZ -- DateTimeOffset
SET     @FieldDateTime2 = 11/22/2000 13:14:15.1244567 +00:15
DECLARE @FieldGuid Raw(16) -- Binary
SET     @FieldGuid = HEXTORAW('00000000000000000000000000000000')
DECLARE @FieldDecimal Decimal(18, 10)
SET     @FieldDecimal = 12345678.9012345678
DECLARE @FieldEnumString Varchar2(5) -- String
SET     @FieldEnumString = 'FIRST'
DECLARE @FieldEnumNumber Int32
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
	"FieldDateTime2",
	"FieldGuid",
	"FieldDecimal",
	"FieldEnumString",
	"FieldEnumNumber"
)
VALUES
(
	:Id,
	:FieldInt32,
	:FieldInt64,
	:FieldBoolean,
	:FieldString,
	:FieldNString,
	:FieldChar,
	:FieldNChar,
	:FieldFloat,
	:FieldDouble,
	:FieldDateTime,
	:FieldDateTime2,
	:FieldGuid,
	:FieldDecimal,
	:FieldEnumString,
	:FieldEnumNumber
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @FieldInt32 Int32
SET     @FieldInt32 = 2147483647
DECLARE @FieldInt64 Int64
SET     @FieldInt64 = 9223372036854775807
DECLARE @FieldBoolean Int16
SET     @FieldBoolean = 0
DECLARE @FieldString Varchar2(10) -- String
SET     @FieldString = 'test
	'
DECLARE @FieldNString Varchar2(14) -- String
SET     @FieldNString = 'ЙЦУКЩывапрм
q'
DECLARE @FieldChar Char -- StringFixedLength
SET     @FieldChar = '&'
DECLARE @FieldNChar Char -- StringFixedLength
SET     @FieldNChar = '>'
DECLARE @FieldFloat BinaryFloat -- Single
SET     @FieldFloat = 3.40282002E+38
DECLARE @FieldDouble BinaryDouble -- Double
SET     @FieldDouble = 1.7976931348623157E+308D
DECLARE @FieldDateTime TimeStamp -- DateTime
SET     @FieldDateTime = TIMESTAMP '2001-10-12 21:14:15.167000'
DECLARE @FieldDateTime2 TimeStampTZ -- DateTimeOffset
SET     @FieldDateTime2 = 11/22/2001 13:14:15.1234567 -00:15
DECLARE @FieldGuid Raw(16) -- Binary
SET     @FieldGuid = HEXTORAW('FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF')
DECLARE @FieldDecimal Decimal(18, 10)
SET     @FieldDecimal = -99999999.9999999999
DECLARE @FieldEnumString Varchar2(1) -- String
SET     @FieldEnumString = chr(0)
DECLARE @FieldEnumNumber Int32
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
	"FieldDateTime2",
	"FieldGuid",
	"FieldDecimal",
	"FieldEnumString",
	"FieldEnumNumber"
)
VALUES
(
	:Id,
	:FieldInt32,
	:FieldInt64,
	:FieldBoolean,
	:FieldString,
	:FieldNString,
	:FieldChar,
	:FieldNChar,
	:FieldFloat,
	:FieldDouble,
	:FieldDateTime,
	:FieldDateTime2,
	:FieldGuid,
	:FieldDecimal,
	:FieldEnumString,
	:FieldEnumNumber
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 4
DECLARE @FieldInt32 Int32
SET     @FieldInt32 = -123
DECLARE @FieldInt64 Int64
SET     @FieldInt64 = 987
DECLARE @FieldBoolean Int16
SET     @FieldBoolean = NULL
DECLARE @FieldString Varchar2(20) -- String
SET     @FieldString = '`~!@#$%^&*()_+{}|[]\'
DECLARE @FieldNString Varchar2(12) -- String
SET     @FieldNString = '<>?/.,;''щЩ":'
DECLARE @FieldChar Char -- StringFixedLength
SET     @FieldChar = ''
DECLARE @FieldNChar Char -- StringFixedLength
SET     @FieldNChar = '
'
DECLARE @FieldFloat BinaryFloat -- Single
SET     @FieldFloat = 1.17549996E-38
DECLARE @FieldDouble BinaryDouble -- Double
SET     @FieldDouble = -2.2250738585072014E-308D
DECLARE @FieldDateTime TimeStamp -- DateTime
SET     @FieldDateTime = TIMESTAMP '2098-10-12 21:14:15.997000'
DECLARE @FieldDateTime2 TimeStampTZ -- DateTimeOffset
SET     @FieldDateTime2 = 11/22/2001 13:14:16.1224567 +01:39
DECLARE @FieldGuid Raw(16) -- Binary
SET     @FieldGuid = HEXTORAW('FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF')
DECLARE @FieldDecimal Decimal(18, 10)
SET     @FieldDecimal = 99999999.9999999999
DECLARE @FieldEnumString Varchar2(1) -- String
SET     @FieldEnumString = '_'
DECLARE @FieldEnumNumber Int32
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
	"FieldDateTime2",
	"FieldGuid",
	"FieldDecimal",
	"FieldEnumString",
	"FieldEnumNumber"
)
VALUES
(
	:Id,
	:FieldInt32,
	:FieldInt64,
	:FieldBoolean,
	:FieldString,
	:FieldNString,
	:FieldChar,
	:FieldNChar,
	:FieldFloat,
	:FieldDouble,
	:FieldDateTime,
	:FieldDateTime2,
	:FieldGuid,
	:FieldDecimal,
	:FieldEnumString,
	:FieldEnumNumber
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @FieldInt32 Int32
SET     @FieldInt32 = -123
DECLARE @FieldInt64 Int64
SET     @FieldInt64 = 987
DECLARE @FieldBoolean Int16
SET     @FieldBoolean = NULL
DECLARE @FieldString Varchar2(12) -- String
SET     @FieldString = '<>?/.,;''zZ":'
DECLARE @FieldNString Varchar2(20) -- String
SET     @FieldNString = '`~!@#$%^&*()_+{}|[]\'
DECLARE @FieldChar Char -- StringFixedLength
SET     @FieldChar = ''
DECLARE @FieldNChar Char -- StringFixedLength
SET     @FieldNChar = ''
DECLARE @FieldFloat BinaryFloat -- Single
SET     @FieldFloat = -1.17549996E-38
DECLARE @FieldDouble BinaryDouble -- Double
SET     @FieldDouble = 2.2250738585072014E-308D
DECLARE @FieldDateTime TimeStamp -- DateTime
SET     @FieldDateTime = TIMESTAMP '2098-10-12 21:14:15.907000'
DECLARE @FieldDateTime2 TimeStampTZ -- DateTimeOffset
SET     @FieldDateTime2 = 11/22/2001 13:14:14.1233457 -01:39
DECLARE @FieldGuid Raw(16) -- Binary
SET     @FieldGuid = HEXTORAW('FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF')
DECLARE @FieldDecimal Decimal(3, 3)
SET     @FieldDecimal = -0.123
DECLARE @FieldEnumString Varchar2 -- String
SET     @FieldEnumString = NULL
DECLARE @FieldEnumNumber Int32
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
	"FieldDateTime2",
	"FieldGuid",
	"FieldDecimal",
	"FieldEnumString",
	"FieldEnumNumber"
)
VALUES
(
	:Id,
	:FieldInt32,
	:FieldInt64,
	:FieldBoolean,
	:FieldString,
	:FieldNString,
	:FieldChar,
	:FieldNChar,
	:FieldFloat,
	:FieldDouble,
	:FieldDateTime,
	:FieldDateTime2,
	:FieldGuid,
	:FieldDecimal,
	:FieldEnumString,
	:FieldEnumNumber
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 4
DECLARE @FieldInt32 Int32
SET     @FieldInt32 = 2147483647
DECLARE @FieldInt64 Int64
SET     @FieldInt64 = 9223372036854775807
DECLARE @FieldBoolean Int16
SET     @FieldBoolean = 0
DECLARE @FieldString Varchar2(9) -- String
SET     @FieldString = 'test
	'
DECLARE @FieldNString Varchar2(14) -- String
SET     @FieldNString = 'ЙЦУКЩывапрм
q'
DECLARE @FieldChar Char -- StringFixedLength
SET     @FieldChar = '1'
DECLARE @FieldNChar Char -- StringFixedLength
SET     @FieldNChar = ' '
DECLARE @FieldFloat BinaryFloat -- Single
SET     @FieldFloat = 3.40282002E+38
DECLARE @FieldDouble BinaryDouble -- Double
SET     @FieldDouble = 1.7976931348623157E+308D
DECLARE @FieldDateTime TimeStamp -- DateTime
SET     @FieldDateTime = TIMESTAMP '2001-10-12 21:14:15.167000'
DECLARE @FieldDateTime2 TimeStampTZ -- DateTimeOffset
SET     @FieldDateTime2 = 11/22/2001 13:14:15.321 -00:15
DECLARE @FieldGuid Raw(16) -- Binary
SET     @FieldGuid = HEXTORAW('FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF')
DECLARE @FieldDecimal Decimal(18, 10)
SET     @FieldDecimal = -99999999.9999999999
DECLARE @FieldEnumString Varchar2(1) -- String
SET     @FieldEnumString = chr(0)
DECLARE @FieldEnumNumber Int32
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
	"FieldDateTime2",
	"FieldGuid",
	"FieldDecimal",
	"FieldEnumString",
	"FieldEnumNumber"
)
VALUES
(
	:Id,
	:FieldInt32,
	:FieldInt64,
	:FieldBoolean,
	:FieldString,
	:FieldNString,
	:FieldChar,
	:FieldNChar,
	:FieldFloat,
	:FieldDouble,
	:FieldDateTime,
	:FieldDateTime2,
	:FieldGuid,
	:FieldDecimal,
	:FieldEnumString,
	:FieldEnumNumber
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 5
DECLARE @FieldInt32 Int32
SET     @FieldInt32 = -123
DECLARE @FieldInt64 Int64
SET     @FieldInt64 = 987
DECLARE @FieldBoolean Int16
SET     @FieldBoolean = NULL
DECLARE @FieldString Varchar2(12) -- String
SET     @FieldString = '<>?/.,;''zZ":'
DECLARE @FieldNString Varchar2(20) -- String
SET     @FieldNString = '`~!@#$%^&*()_+{}|[]\'
DECLARE @FieldChar Char -- StringFixedLength
SET     @FieldChar = ' '
DECLARE @FieldNChar Char -- StringFixedLength
SET     @FieldNChar = ' '
DECLARE @FieldFloat BinaryFloat -- Single
SET     @FieldFloat = -1.17549996E-38
DECLARE @FieldDouble BinaryDouble -- Double
SET     @FieldDouble = 2.2250738585072014E-308D
DECLARE @FieldDateTime TimeStamp -- DateTime
SET     @FieldDateTime = TIMESTAMP '2098-10-12 21:14:15.913000'
DECLARE @FieldDateTime2 TimeStampTZ -- DateTimeOffset
SET     @FieldDateTime2 = 11/22/2001 13:14:15 -01:39
DECLARE @FieldGuid Raw(16) -- Binary
SET     @FieldGuid = HEXTORAW('FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF')
DECLARE @FieldDecimal Decimal(3, 3)
SET     @FieldDecimal = -0.123
DECLARE @FieldEnumString Varchar2 -- String
SET     @FieldEnumString = NULL
DECLARE @FieldEnumNumber Int32
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
	"FieldDateTime2",
	"FieldGuid",
	"FieldDecimal",
	"FieldEnumString",
	"FieldEnumNumber"
)
VALUES
(
	:Id,
	:FieldInt32,
	:FieldInt64,
	:FieldBoolean,
	:FieldString,
	:FieldNString,
	:FieldChar,
	:FieldNChar,
	:FieldFloat,
	:FieldDouble,
	:FieldDateTime,
	:FieldDateTime2,
	:FieldGuid,
	:FieldDecimal,
	:FieldEnumString,
	:FieldEnumNumber
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 6
DECLARE @FieldInt32 Int32
SET     @FieldInt32 = 2147483647
DECLARE @FieldInt64 Int64
SET     @FieldInt64 = 9223372036854775807
DECLARE @FieldBoolean Int16
SET     @FieldBoolean = 0
DECLARE @FieldString Varchar2(12) -- String
SET     @FieldString = 'test
	  '
DECLARE @FieldNString Varchar2(17) -- String
SET     @FieldNString = 'ЙЦУКЩывапрм
q  '
DECLARE @FieldChar Char -- StringFixedLength
SET     @FieldChar = '-'
DECLARE @FieldNChar Char -- StringFixedLength
SET     @FieldNChar = '~'
DECLARE @FieldFloat BinaryFloat -- Single
SET     @FieldFloat = 3.40282002E+38
DECLARE @FieldDouble BinaryDouble -- Double
SET     @FieldDouble = 1.7976931348623157E+308D
DECLARE @FieldDateTime TimeStamp -- DateTime
SET     @FieldDateTime = TIMESTAMP '2001-10-12 21:14:15.167000'
DECLARE @FieldDateTime2 TimeStampTZ -- DateTimeOffset
SET     @FieldDateTime2 = 11/22/2001 13:14:15.999 -00:15
DECLARE @FieldGuid Raw(16) -- Binary
SET     @FieldGuid = HEXTORAW('FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF')
DECLARE @FieldDecimal Decimal(18, 10)
SET     @FieldDecimal = -99999999.9999999999
DECLARE @FieldEnumString Varchar2(1) -- String
SET     @FieldEnumString = chr(0)
DECLARE @FieldEnumNumber Int32
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
	"FieldDateTime2",
	"FieldGuid",
	"FieldDecimal",
	"FieldEnumString",
	"FieldEnumNumber"
)
VALUES
(
	:Id,
	:FieldInt32,
	:FieldInt64,
	:FieldBoolean,
	:FieldString,
	:FieldNString,
	:FieldChar,
	:FieldNChar,
	:FieldFloat,
	:FieldDouble,
	:FieldDateTime,
	:FieldDateTime2,
	:FieldGuid,
	:FieldDecimal,
	:FieldEnumString,
	:FieldEnumNumber
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Field1",
	t1."FieldInt64",
	t1."FieldBoolean",
	t1."FieldString",
	t1."FieldNString",
	t1."FieldChar",
	t1."FieldNChar",
	t1."FieldFloat",
	t1."FieldDouble",
	t1."FieldDateTime",
	t1."FieldDateTime2",
	t1."FieldGuid",
	t1."FieldDecimal",
	t1."FieldEnumString",
	t1."FieldEnumNumber"
FROM
	"TestMerge1" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Field1",
	t1."FieldInt64",
	t1."FieldBoolean",
	t1."FieldString",
	t1."FieldNString",
	t1."FieldChar",
	t1."FieldNChar",
	t1."FieldFloat",
	t1."FieldDouble",
	t1."FieldDateTime",
	t1."FieldDateTime2",
	t1."FieldGuid",
	t1."FieldDecimal",
	t1."FieldEnumString",
	t1."FieldEnumNumber"
FROM
	"TestMerge2" t1
ORDER BY
	t1."Id"

