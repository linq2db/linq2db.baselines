BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

DELETE FROM
	"TestMerge1" "t1"

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

DELETE FROM
	"TestMerge2" "t1"

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @FieldInt32 Integer -- Int32
SET     @FieldInt32 = NULL
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = NULL
DECLARE @FieldBoolean Boolean
SET     @FieldBoolean = NULL
DECLARE @FieldString VarChar -- String
SET     @FieldString = NULL
DECLARE @FieldNString VarChar -- String
SET     @FieldNString = NULL
DECLARE @FieldChar Char -- String
SET     @FieldChar = NULL
DECLARE @FieldNChar Char -- String
SET     @FieldNChar = NULL
DECLARE @FieldFloat Float -- Single
SET     @FieldFloat = NULL
DECLARE @FieldDateTime TimeStamp -- DateTime
SET     @FieldDateTime = NULL
DECLARE @FieldGuid Guid
SET     @FieldGuid = NULL
DECLARE @FieldDecimal Decimal
SET     @FieldDecimal = NULL
DECLARE @FieldDate TimeStamp -- DateTime
SET     @FieldDate = NULL
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
	"FieldDateTime",
	"FieldGuid",
	"FieldDecimal",
	"FieldDate",
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
	@FieldDateTime,
	@FieldGuid,
	@FieldDecimal,
	@FieldDate,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @FieldInt32 Integer -- Int32
SET     @FieldInt32 = -2147483647
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = -9223372036854775807
DECLARE @FieldBoolean Boolean
SET     @FieldBoolean = TRUE
DECLARE @FieldString VarChar(13) -- String
SET     @FieldString = 'normal strinG'
DECLARE @FieldNString VarChar(13) -- String
SET     @FieldNString = _utf8 x'D0B2D181D08120D0BDD0BED180D0BCD0B0D0BBD18CD0BDD0BE'
DECLARE @FieldChar Char -- String
SET     @FieldChar = '*'
DECLARE @FieldNChar Char -- String
SET     @FieldNChar = _utf8 x'D191'
DECLARE @FieldFloat Float -- Single
SET     @FieldFloat = -3.40282002E+38
DECLARE @FieldDateTime TimeStamp -- DateTime
SET     @FieldDateTime = CAST('2000-11-12 21:14:15.167' AS timestamp)
DECLARE @FieldGuid Guid
SET     @FieldGuid = X'00000000000000000000000000000000'
DECLARE @FieldDecimal Decimal(18, 10)
SET     @FieldDecimal = 12345678.9012345678
DECLARE @FieldDate TimeStamp -- DateTime
SET     @FieldDate = CAST('2000-11-23' AS timestamp)
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
	"FieldDateTime",
	"FieldGuid",
	"FieldDecimal",
	"FieldDate",
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
	@FieldDateTime,
	@FieldGuid,
	@FieldDecimal,
	@FieldDate,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @FieldInt32 Integer -- Int32
SET     @FieldInt32 = 2147483647
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = 9223372036854775807
DECLARE @FieldBoolean Boolean
SET     @FieldBoolean = FALSE
DECLARE @FieldString VarChar(10) -- String
SET     @FieldString = 'test
	'
DECLARE @FieldNString VarChar(14) -- String
SET     @FieldNString = _utf8 x'D099D0A6D0A3D09AD0A9D18BD0B2D0B0D0BFD180D0BC0D0A71'
DECLARE @FieldChar Char -- String
SET     @FieldChar = '&'
DECLARE @FieldNChar Char -- String
SET     @FieldNChar = '>'
DECLARE @FieldFloat Float -- Single
SET     @FieldFloat = 3.40282002E+38
DECLARE @FieldDateTime TimeStamp -- DateTime
SET     @FieldDateTime = CAST('2001-10-12 21:14:15.167' AS timestamp)
DECLARE @FieldGuid Guid
SET     @FieldGuid = X'FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF'
DECLARE @FieldDecimal Decimal(18, 10)
SET     @FieldDecimal = -99999999.9999999999
DECLARE @FieldDate TimeStamp -- DateTime
SET     @FieldDate = CAST('2123-11-23' AS timestamp)
DECLARE @FieldEnumString VarChar(1) -- String
SET     @FieldEnumString = _utf8 x'00'
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
	"FieldDateTime",
	"FieldGuid",
	"FieldDecimal",
	"FieldDate",
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
	@FieldDateTime,
	@FieldGuid,
	@FieldDecimal,
	@FieldDate,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @FieldInt32 Integer -- Int32
SET     @FieldInt32 = -123
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = 987
DECLARE @FieldBoolean Boolean
SET     @FieldBoolean = NULL
DECLARE @FieldString VarChar(20) -- String
SET     @FieldString = '`~!@#$%^&*()_+{}|[]\'
DECLARE @FieldNString VarChar(12) -- String
SET     @FieldNString = _utf8 x'3C3E3F2F2E2C3B27D189D0A9223A'
DECLARE @FieldChar Char -- String
SET     @FieldChar = ''
DECLARE @FieldNChar Char -- String
SET     @FieldNChar = '
'
DECLARE @FieldFloat Float -- Single
SET     @FieldFloat = 1.17549996E-38
DECLARE @FieldDateTime TimeStamp -- DateTime
SET     @FieldDateTime = CAST('2098-10-12 21:14:15.997' AS timestamp)
DECLARE @FieldGuid Guid
SET     @FieldGuid = X'FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF'
DECLARE @FieldDecimal Decimal(18, 10)
SET     @FieldDecimal = 99999999.9999999999
DECLARE @FieldDate TimeStamp -- DateTime
SET     @FieldDate = CAST('2110-11-23' AS timestamp)
DECLARE @FieldEnumString VarChar -- String
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
	"FieldDateTime",
	"FieldGuid",
	"FieldDecimal",
	"FieldDate",
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
	@FieldDateTime,
	@FieldGuid,
	@FieldDecimal,
	@FieldDate,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @FieldInt32 Integer -- Int32
SET     @FieldInt32 = -123
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = 987
DECLARE @FieldBoolean Boolean
SET     @FieldBoolean = NULL
DECLARE @FieldString VarChar(12) -- String
SET     @FieldString = '<>?/.,;''zZ":'
DECLARE @FieldNString VarChar(20) -- String
SET     @FieldNString = '`~!@#$%^&*()_+{}|[]\'
DECLARE @FieldChar Char -- String
SET     @FieldChar = ''
DECLARE @FieldNChar Char -- String
SET     @FieldNChar = ''
DECLARE @FieldFloat Float -- Single
SET     @FieldFloat = -1.17549996E-38
DECLARE @FieldDateTime TimeStamp -- DateTime
SET     @FieldDateTime = CAST('2098-10-12 21:14:15.907' AS timestamp)
DECLARE @FieldGuid Guid
SET     @FieldGuid = X'FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF'
DECLARE @FieldDecimal Decimal(3, 3)
SET     @FieldDecimal = -0.123
DECLARE @FieldDate TimeStamp -- DateTime
SET     @FieldDate = CAST('2111-11-23' AS timestamp)
DECLARE @FieldEnumString VarChar -- String
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
	"FieldDateTime",
	"FieldGuid",
	"FieldDecimal",
	"FieldDate",
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
	@FieldDateTime,
	@FieldGuid,
	@FieldDecimal,
	@FieldDate,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @FieldInt32 Integer -- Int32
SET     @FieldInt32 = 2147483647
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = 9223372036854775807
DECLARE @FieldBoolean Boolean
SET     @FieldBoolean = FALSE
DECLARE @FieldString VarChar(9) -- String
SET     @FieldString = 'test
	'
DECLARE @FieldNString VarChar(14) -- String
SET     @FieldNString = _utf8 x'D099D0A6D0A3D09AD0A9D18BD0B2D0B0D0BFD180D0BC0D0A71'
DECLARE @FieldChar Char -- String
SET     @FieldChar = '1'
DECLARE @FieldNChar Char -- String
SET     @FieldNChar = ' '
DECLARE @FieldFloat Float -- Single
SET     @FieldFloat = 3.40282002E+38
DECLARE @FieldDateTime TimeStamp -- DateTime
SET     @FieldDateTime = CAST('2001-10-12 21:14:15.167' AS timestamp)
DECLARE @FieldGuid Guid
SET     @FieldGuid = X'FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF'
DECLARE @FieldDecimal Decimal(18, 10)
SET     @FieldDecimal = -99999999.9999999999
DECLARE @FieldDate TimeStamp -- DateTime
SET     @FieldDate = CAST('2123-11-23' AS timestamp)
DECLARE @FieldEnumString VarChar(1) -- String
SET     @FieldEnumString = _utf8 x'00'
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
	"FieldDateTime",
	"FieldGuid",
	"FieldDecimal",
	"FieldDate",
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
	@FieldDateTime,
	@FieldGuid,
	@FieldDecimal,
	@FieldDate,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @FieldInt32 Integer -- Int32
SET     @FieldInt32 = -123
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = 987
DECLARE @FieldBoolean Boolean
SET     @FieldBoolean = NULL
DECLARE @FieldString VarChar(12) -- String
SET     @FieldString = '<>?/.,;''zZ":'
DECLARE @FieldNString VarChar(20) -- String
SET     @FieldNString = '`~!@#$%^&*()_+{}|[]\'
DECLARE @FieldChar Char -- String
SET     @FieldChar = ' '
DECLARE @FieldNChar Char -- String
SET     @FieldNChar = ' '
DECLARE @FieldFloat Float -- Single
SET     @FieldFloat = -1.17549996E-38
DECLARE @FieldDateTime TimeStamp -- DateTime
SET     @FieldDateTime = CAST('2098-10-12 21:14:15.913' AS timestamp)
DECLARE @FieldGuid Guid
SET     @FieldGuid = X'FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF'
DECLARE @FieldDecimal Decimal(3, 3)
SET     @FieldDecimal = -0.123
DECLARE @FieldDate TimeStamp -- DateTime
SET     @FieldDate = CAST('2010-11-23' AS timestamp)
DECLARE @FieldEnumString VarChar -- String
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
	"FieldDateTime",
	"FieldGuid",
	"FieldDecimal",
	"FieldDate",
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
	@FieldDateTime,
	@FieldGuid,
	@FieldDecimal,
	@FieldDate,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @FieldInt32 Integer -- Int32
SET     @FieldInt32 = 2147483647
DECLARE @FieldInt64 BigInt -- Int64
SET     @FieldInt64 = 9223372036854775807
DECLARE @FieldBoolean Boolean
SET     @FieldBoolean = FALSE
DECLARE @FieldString VarChar(12) -- String
SET     @FieldString = 'test
	  '
DECLARE @FieldNString VarChar(17) -- String
SET     @FieldNString = _utf8 x'D099D0A6D0A3D09AD0A9D18BD0B2D0B0D0BFD180D0BC0D0A71200D20'
DECLARE @FieldChar Char -- String
SET     @FieldChar = '-'
DECLARE @FieldNChar Char -- String
SET     @FieldNChar = '~'
DECLARE @FieldFloat Float -- Single
SET     @FieldFloat = 3.40282002E+38
DECLARE @FieldDateTime TimeStamp -- DateTime
SET     @FieldDateTime = CAST('2001-10-12 21:14:15.167' AS timestamp)
DECLARE @FieldGuid Guid
SET     @FieldGuid = X'FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF'
DECLARE @FieldDecimal Decimal(18, 10)
SET     @FieldDecimal = -99999999.9999999999
DECLARE @FieldDate TimeStamp -- DateTime
SET     @FieldDate = CAST('2123-11-23' AS timestamp)
DECLARE @FieldEnumString VarChar(1) -- String
SET     @FieldEnumString = _utf8 x'00'
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
	"FieldDateTime",
	"FieldGuid",
	"FieldDecimal",
	"FieldDate",
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
	@FieldDateTime,
	@FieldGuid,
	@FieldDecimal,
	@FieldDate,
	@FieldEnumString,
	@FieldEnumNumber
)

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

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
	"t1"."FieldDateTime",
	"t1"."FieldGuid",
	"t1"."FieldDecimal",
	"t1"."FieldDate",
	"t1"."FieldEnumString",
	"t1"."FieldEnumNumber"
FROM
	"TestMerge1" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

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
	"t1"."FieldDateTime",
	"t1"."FieldGuid",
	"t1"."FieldDecimal",
	"t1"."FieldDate",
	"t1"."FieldEnumString",
	"t1"."FieldEnumNumber"
FROM
	"TestMerge2" "t1"
ORDER BY
	"t1"."Id"

