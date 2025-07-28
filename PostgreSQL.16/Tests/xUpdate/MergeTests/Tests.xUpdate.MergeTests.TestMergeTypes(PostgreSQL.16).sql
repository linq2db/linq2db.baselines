BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DELETE FROM
	"TestMerge1" t1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DELETE FROM
	"TestMerge2" t1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @FieldInt32 Integer -- Int32
SET     @FieldInt32 = NULL
DECLARE @FieldInt64 Bigint -- Int64
SET     @FieldInt64 = NULL
DECLARE @FieldBoolean Boolean
SET     @FieldBoolean = NULL
DECLARE @FieldString Text -- String
SET     @FieldString = NULL
DECLARE @FieldNString Text -- String
SET     @FieldNString = NULL
DECLARE @FieldChar Char -- String
SET     @FieldChar = NULL
DECLARE @FieldNChar Char -- String
SET     @FieldNChar = NULL
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = NULL
DECLARE @FieldDouble Double
SET     @FieldDouble = NULL
DECLARE @FieldDateTime Timestamp -- DateTime2
SET     @FieldDateTime = NULL
DECLARE @FieldDateTime2 TimestampTz -- DateTime
SET     @FieldDateTime2 = NULL
DECLARE @FieldBinary Bytea -- Binary
SET     @FieldBinary = NULL
DECLARE @FieldGuid Uuid -- Guid
SET     @FieldGuid = NULL
DECLARE @FieldDecimal Numeric -- Decimal
SET     @FieldDecimal = NULL
DECLARE @FieldDate Timestamp -- DateTime2
SET     @FieldDate = NULL
DECLARE @FieldTime Interval -- Object
SET     @FieldTime = NULL
DECLARE @FieldEnumString Text -- String
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
	"FieldDateTime2",
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
	:FieldBinary,
	:FieldGuid,
	:FieldDecimal,
	:FieldDate,
	:FieldTime,
	:FieldEnumString,
	:FieldEnumNumber
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @FieldInt32 Integer -- Int32
SET     @FieldInt32 = -2147483647
DECLARE @FieldInt64 Bigint -- Int64
SET     @FieldInt64 = -9223372036854775807
DECLARE @FieldBoolean Boolean
SET     @FieldBoolean = True
DECLARE @FieldString Text(13) -- String
SET     @FieldString = 'normal strinG'
DECLARE @FieldNString Text(13) -- String
SET     @FieldNString = 'всЁ нормально'
DECLARE @FieldChar Char -- String
SET     @FieldChar = '*'
DECLARE @FieldNChar Char -- String
SET     @FieldNChar = 'ё'
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = -3.40282002E+38
DECLARE @FieldDouble Double
SET     @FieldDouble = -1.7976931348623157E+308
DECLARE @FieldDateTime Timestamp -- DateTime2
SET     @FieldDateTime = '2000-11-12 21:14:15.167'::timestamp
DECLARE @FieldDateTime2 TimestampTz -- DateTime
SET     @FieldDateTime2 = '2000-11-22T12:59:15.1244567+00:00'
DECLARE @FieldBinary Bytea(0) -- Binary
SET     @FieldBinary = E'\\x'::bytea
DECLARE @FieldGuid Uuid -- Guid
SET     @FieldGuid = '00000000-0000-0000-0000-000000000000'::uuid
DECLARE @FieldDecimal Numeric(18, 10) -- Decimal
SET     @FieldDecimal = 12345678.9012345678
DECLARE @FieldDate Timestamp -- DateTime2
SET     @FieldDate = '2000-11-23'::date
DECLARE @FieldTime Interval -- Object
SET     @FieldTime = 09:44:34.6534321
DECLARE @FieldEnumString Text(5) -- String
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
	"FieldDateTime2",
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
	:FieldBinary,
	:FieldGuid,
	:FieldDecimal,
	:FieldDate,
	:FieldTime,
	:FieldEnumString,
	:FieldEnumNumber
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @FieldInt32 Integer -- Int32
SET     @FieldInt32 = 2147483647
DECLARE @FieldInt64 Bigint -- Int64
SET     @FieldInt64 = 9223372036854775807
DECLARE @FieldBoolean Boolean
SET     @FieldBoolean = False
DECLARE @FieldString Text(10) -- String
SET     @FieldString = 'test
	'
DECLARE @FieldNString Text(14) -- String
SET     @FieldNString = 'ЙЦУКЩывапрм
q'
DECLARE @FieldChar Char -- String
SET     @FieldChar = '&'
DECLARE @FieldNChar Char -- String
SET     @FieldNChar = '>'
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = 3.40282002E+38
DECLARE @FieldDouble Double
SET     @FieldDouble = 1.7976931348623157E+308
DECLARE @FieldDateTime Timestamp -- DateTime2
SET     @FieldDateTime = '2001-10-12 21:14:15.167'::timestamp
DECLARE @FieldDateTime2 TimestampTz -- DateTime
SET     @FieldDateTime2 = '2001-11-22T13:29:15.1234567+00:00'
DECLARE @FieldBinary Bytea(6) -- Binary
SET     @FieldBinary = E'\\x000102030004'::bytea
DECLARE @FieldGuid Uuid -- Guid
SET     @FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'::uuid
DECLARE @FieldDecimal Numeric(18, 10) -- Decimal
SET     @FieldDecimal = -99999999.9999999999
DECLARE @FieldDate Timestamp -- DateTime2
SET     @FieldDate = '2123-11-23'::date
DECLARE @FieldTime Interval -- Object
SET     @FieldTime = 00:44:34.6414321
DECLARE @FieldEnumString Text(1) -- String
SET     @FieldEnumString = ''
DECLARE @FieldEnumNumber Integer -- Int32
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
	:FieldBinary,
	:FieldGuid,
	:FieldDecimal,
	:FieldDate,
	:FieldTime,
	:FieldEnumString,
	:FieldEnumNumber
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @FieldInt32 Integer -- Int32
SET     @FieldInt32 = -123
DECLARE @FieldInt64 Bigint -- Int64
SET     @FieldInt64 = 987
DECLARE @FieldBoolean Boolean
SET     @FieldBoolean = NULL
DECLARE @FieldString Text(20) -- String
SET     @FieldString = '`~!@#$%^&*()_+{}|[]\'
DECLARE @FieldNString Text(12) -- String
SET     @FieldNString = '<>?/.,;''щЩ":'
DECLARE @FieldChar Char -- String
SET     @FieldChar = ''
DECLARE @FieldNChar Char -- String
SET     @FieldNChar = '
'
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = 1.17549996E-38
DECLARE @FieldDouble Double
SET     @FieldDouble = -2.2250738585072014E-308
DECLARE @FieldDateTime Timestamp -- DateTime2
SET     @FieldDateTime = '2098-10-12 21:14:15.997'::timestamp
DECLARE @FieldDateTime2 TimestampTz -- DateTime
SET     @FieldDateTime2 = '2001-11-22T11:35:16.1224567+00:00'
DECLARE @FieldBinary Bytea(6) -- Binary
SET     @FieldBinary = E'\\xFFC864321400'::bytea
DECLARE @FieldGuid Uuid -- Guid
SET     @FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'::uuid
DECLARE @FieldDecimal Numeric(18, 10) -- Decimal
SET     @FieldDecimal = 99999999.9999999999
DECLARE @FieldDate Timestamp -- DateTime2
SET     @FieldDate = '2110-11-23'::date
DECLARE @FieldTime Interval -- Object
SET     @FieldTime = 00:00:00
DECLARE @FieldEnumString Text -- String
SET     @FieldEnumString = ''
DECLARE @FieldEnumNumber Integer -- Int32
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
	:FieldBinary,
	:FieldGuid,
	:FieldDecimal,
	:FieldDate,
	:FieldTime,
	:FieldEnumString,
	:FieldEnumNumber
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @FieldInt32 Integer -- Int32
SET     @FieldInt32 = -123
DECLARE @FieldInt64 Bigint -- Int64
SET     @FieldInt64 = 987
DECLARE @FieldBoolean Boolean
SET     @FieldBoolean = NULL
DECLARE @FieldString Text(12) -- String
SET     @FieldString = '<>?/.,;''zZ":'
DECLARE @FieldNString Text(20) -- String
SET     @FieldNString = '`~!@#$%^&*()_+{}|[]\'
DECLARE @FieldChar Char -- String
SET     @FieldChar = ''
DECLARE @FieldNChar Char -- String
SET     @FieldNChar = ''
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = -1.17549996E-38
DECLARE @FieldDouble Double
SET     @FieldDouble = 2.2250738585072014E-308
DECLARE @FieldDateTime Timestamp -- DateTime2
SET     @FieldDateTime = '2098-10-12 21:14:15.907'::timestamp
DECLARE @FieldDateTime2 TimestampTz -- DateTime
SET     @FieldDateTime2 = '2001-11-22T14:53:14.1233457+00:00'
DECLARE @FieldBinary Bytea(6) -- Binary
SET     @FieldBinary = E'\\xFFC864321400'::bytea
DECLARE @FieldGuid Uuid -- Guid
SET     @FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'::uuid
DECLARE @FieldDecimal Numeric(3, 3) -- Decimal
SET     @FieldDecimal = -0.123
DECLARE @FieldDate Timestamp -- DateTime2
SET     @FieldDate = '2111-11-23'::date
DECLARE @FieldTime Interval -- Object
SET     @FieldTime = 23:59:59.9999999
DECLARE @FieldEnumString Text -- String
SET     @FieldEnumString = NULL
DECLARE @FieldEnumNumber Integer -- Int32
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
	:FieldBinary,
	:FieldGuid,
	:FieldDecimal,
	:FieldDate,
	:FieldTime,
	:FieldEnumString,
	:FieldEnumNumber
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @FieldInt32 Integer -- Int32
SET     @FieldInt32 = 2147483647
DECLARE @FieldInt64 Bigint -- Int64
SET     @FieldInt64 = 9223372036854775807
DECLARE @FieldBoolean Boolean
SET     @FieldBoolean = False
DECLARE @FieldString Text(9) -- String
SET     @FieldString = 'test
	'
DECLARE @FieldNString Text(14) -- String
SET     @FieldNString = 'ЙЦУКЩывапрм
q'
DECLARE @FieldChar Char -- String
SET     @FieldChar = '1'
DECLARE @FieldNChar Char -- String
SET     @FieldNChar = ' '
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = 3.40282002E+38
DECLARE @FieldDouble Double
SET     @FieldDouble = 1.7976931348623157E+308
DECLARE @FieldDateTime Timestamp -- DateTime2
SET     @FieldDateTime = '2001-10-12 21:14:15.167'::timestamp
DECLARE @FieldDateTime2 TimestampTz -- DateTime
SET     @FieldDateTime2 = '2001-11-22T13:29:15.3210000+00:00'
DECLARE @FieldBinary Bytea(6) -- Binary
SET     @FieldBinary = E'\\x000102030004'::bytea
DECLARE @FieldGuid Uuid -- Guid
SET     @FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'::uuid
DECLARE @FieldDecimal Numeric(18, 10) -- Decimal
SET     @FieldDecimal = -99999999.9999999999
DECLARE @FieldDate Timestamp -- DateTime2
SET     @FieldDate = '2123-11-23'::date
DECLARE @FieldTime Interval -- Object
SET     @FieldTime = 14:44:33.2340000
DECLARE @FieldEnumString Text(1) -- String
SET     @FieldEnumString = ''
DECLARE @FieldEnumNumber Integer -- Int32
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
	:FieldBinary,
	:FieldGuid,
	:FieldDecimal,
	:FieldDate,
	:FieldTime,
	:FieldEnumString,
	:FieldEnumNumber
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @FieldInt32 Integer -- Int32
SET     @FieldInt32 = -123
DECLARE @FieldInt64 Bigint -- Int64
SET     @FieldInt64 = 987
DECLARE @FieldBoolean Boolean
SET     @FieldBoolean = NULL
DECLARE @FieldString Text(12) -- String
SET     @FieldString = '<>?/.,;''zZ":'
DECLARE @FieldNString Text(20) -- String
SET     @FieldNString = '`~!@#$%^&*()_+{}|[]\'
DECLARE @FieldChar Char -- String
SET     @FieldChar = ' '
DECLARE @FieldNChar Char -- String
SET     @FieldNChar = ' '
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = -1.17549996E-38
DECLARE @FieldDouble Double
SET     @FieldDouble = 2.2250738585072014E-308
DECLARE @FieldDateTime Timestamp -- DateTime2
SET     @FieldDateTime = '2098-10-12 21:14:15.913'::timestamp
DECLARE @FieldDateTime2 TimestampTz -- DateTime
SET     @FieldDateTime2 = '2001-11-22T14:53:15.0000000+00:00'
DECLARE @FieldBinary Bytea(6) -- Binary
SET     @FieldBinary = E'\\xFFC864321400'::bytea
DECLARE @FieldGuid Uuid -- Guid
SET     @FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'::uuid
DECLARE @FieldDecimal Numeric(3, 3) -- Decimal
SET     @FieldDecimal = -0.123
DECLARE @FieldDate Timestamp -- DateTime2
SET     @FieldDate = '2010-11-23'::date
DECLARE @FieldTime Interval -- Object
SET     @FieldTime = 23:59:59.9999999
DECLARE @FieldEnumString Text -- String
SET     @FieldEnumString = NULL
DECLARE @FieldEnumNumber Integer -- Int32
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
	:FieldBinary,
	:FieldGuid,
	:FieldDecimal,
	:FieldDate,
	:FieldTime,
	:FieldEnumString,
	:FieldEnumNumber
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @FieldInt32 Integer -- Int32
SET     @FieldInt32 = 2147483647
DECLARE @FieldInt64 Bigint -- Int64
SET     @FieldInt64 = 9223372036854775807
DECLARE @FieldBoolean Boolean
SET     @FieldBoolean = False
DECLARE @FieldString Text(12) -- String
SET     @FieldString = 'test
	  '
DECLARE @FieldNString Text(17) -- String
SET     @FieldNString = 'ЙЦУКЩывапрм
q  '
DECLARE @FieldChar Char -- String
SET     @FieldChar = '-'
DECLARE @FieldNChar Char -- String
SET     @FieldNChar = '~'
DECLARE @FieldFloat Real -- Single
SET     @FieldFloat = 3.40282002E+38
DECLARE @FieldDouble Double
SET     @FieldDouble = 1.7976931348623157E+308
DECLARE @FieldDateTime Timestamp -- DateTime2
SET     @FieldDateTime = '2001-10-12 21:14:15.167'::timestamp
DECLARE @FieldDateTime2 TimestampTz -- DateTime
SET     @FieldDateTime2 = '2001-11-22T13:29:15.9990000+00:00'
DECLARE @FieldBinary Bytea(6) -- Binary
SET     @FieldBinary = E'\\x000102030004'::bytea
DECLARE @FieldGuid Uuid -- Guid
SET     @FieldGuid = 'ffffffff-ffff-ffff-ffff-ffffffffffff'::uuid
DECLARE @FieldDecimal Numeric(18, 10) -- Decimal
SET     @FieldDecimal = -99999999.9999999999
DECLARE @FieldDate Timestamp -- DateTime2
SET     @FieldDate = '2123-11-23'::date
DECLARE @FieldTime Interval -- Object
SET     @FieldTime = 22:44:33
DECLARE @FieldEnumString Text(1) -- String
SET     @FieldEnumString = ''
DECLARE @FieldEnumNumber Integer -- Int32
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
	:FieldBinary,
	:FieldGuid,
	:FieldDecimal,
	:FieldDate,
	:FieldTime,
	:FieldEnumString,
	:FieldEnumNumber
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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
	t1."FieldBinary",
	t1."FieldGuid",
	t1."FieldDecimal",
	t1."FieldDate",
	t1."FieldTime",
	t1."FieldEnumString",
	t1."FieldEnumNumber"
FROM
	"TestMerge1" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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
	t1."FieldBinary",
	t1."FieldGuid",
	t1."FieldDecimal",
	t1."FieldDate",
	t1."FieldTime",
	t1."FieldEnumString",
	t1."FieldEnumNumber"
FROM
	"TestMerge2" t1
ORDER BY
	t1."Id"

