BeforeExecute
-- Firebird

DELETE FROM
	"TestMerge1" "t1"

BeforeExecute
-- Firebird

DELETE FROM
	"TestMerge2" "t1"

BeforeExecute
-- Firebird

MERGE INTO "TestMerge1" "Target"
USING (	SELECT 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL FROM rdb$database
	UNION ALL
	SELECT 2, -2147483647, -9223372036854775807, 1, CAST('normal strinG' AS VARCHAR(13)), CAST(_utf8 x'D0B2D181D08120D0BDD0BED180D0BCD0B0D0BBD18CD0BDD0BE' AS VARCHAR(25)), '*', _utf8 x'D191', -3.40282E+38, CAST('2000-11-12 21:14:15.167' AS timestamp), '00000000-0000-0000-0000-000000000000', 12345678.9012345678, CAST('2000-11-23' AS timestamp), CAST('FIRST' AS VARCHAR(5)), NULL FROM rdb$database
	UNION ALL
	SELECT 3, 2147483647, 9223372036854775807, 0, CAST('test
	' AS VARCHAR(10)), CAST(_utf8 x'D099D0A6D0A3D09AD0A9D18BD0B2D0B0D0BFD180D0BC0D0A71' AS VARCHAR(25)), '&', '>', 3.40282E+38, CAST('2001-10-12 21:14:15.167' AS timestamp), 'ffffffff-ffff-ffff-ffff-ffffffffffff', -99999999.9999999999, CAST('2123-11-23' AS timestamp), CAST(_utf8 x'00' AS VARCHAR(1)), 0 FROM rdb$database
	UNION ALL
	SELECT 4, -123, 987, NULL, CAST('`~!@#$%^&*()_+{}|[]\' AS VARCHAR(20)), CAST(_utf8 x'3C3E3F2F2E2C3B27D189D0A9223A' AS VARCHAR(14)), '', '
', 1.1755E-38, CAST('2098-10-12 21:14:15.997' AS timestamp), 'ffffffff-ffff-ffff-ffff-ffffffffffff', 99999999.9999999999, CAST('3210-11-23' AS timestamp), CAST('' AS VARCHAR(1)), 2147483647 FROM rdb$database) "Source"
(
	"Id",
	"FieldInt32",
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
ON ("Target"."Id" = "Source"."Id")

WHEN NOT MATCHED THEN
INSERT
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
	"Source"."Id",
	"Source"."FieldInt32",
	"Source"."FieldInt64",
	"Source"."FieldBoolean",
	"Source"."FieldString",
	"Source"."FieldNString",
	"Source"."FieldChar",
	"Source"."FieldNChar",
	"Source"."FieldFloat",
	"Source"."FieldDateTime",
	"Source"."FieldGuid",
	"Source"."FieldDecimal",
	"Source"."FieldDate",
	"Source"."FieldEnumString",
	"Source"."FieldEnumNumber"
)

BeforeExecute
-- Firebird

MERGE INTO "TestMerge2" "Target"
USING (	SELECT 3, -123, 987, NULL, CAST('<>?/.,;''zZ":' AS VARCHAR(12)), CAST('`~!@#$%^&*()_+{}|[]\' AS VARCHAR(20)), '', '', -1.1755E-38, CAST('2098-10-12 21:14:15.907' AS timestamp), 'ffffffff-ffff-ffff-ffff-ffffffffffff', -0.123, CAST('3210-11-23' AS timestamp), NULL, -2147483647 FROM rdb$database
	UNION ALL
	SELECT 4, 2147483647, 9223372036854775807, 0, CAST('test
	' AS VARCHAR(9)), CAST(_utf8 x'D099D0A6D0A3D09AD0A9D18BD0B2D0B0D0BFD180D0BC0D0A71' AS VARCHAR(25)), '1', ' ', 3.40282E+38, CAST('2001-10-12 21:14:15.167' AS timestamp), 'ffffffff-ffff-ffff-ffff-ffffffffffff', -99999999.9999999999, CAST('2123-11-23' AS timestamp), CAST(_utf8 x'00' AS VARCHAR(1)), 0 FROM rdb$database
	UNION ALL
	SELECT 5, -123, 987, NULL, CAST('<>?/.,;''zZ":' AS VARCHAR(12)), CAST('`~!@#$%^&*()_+{}|[]\' AS VARCHAR(20)), ' ', ' ', -1.1755E-38, CAST('2098-10-12 21:14:15.913' AS timestamp), 'ffffffff-ffff-ffff-ffff-ffffffffffff', -0.123, CAST('3210-11-23' AS timestamp), NULL, -2147483647 FROM rdb$database
	UNION ALL
	SELECT 6, 2147483647, 9223372036854775807, 0, CAST('test
	  ' AS VARCHAR(12)), CAST(_utf8 x'D099D0A6D0A3D09AD0A9D18BD0B2D0B0D0BFD180D0BC0D0A71200D20' AS VARCHAR(28)), '-', '~', 3.40282E+38, CAST('2001-10-12 21:14:15.167' AS timestamp), 'ffffffff-ffff-ffff-ffff-ffffffffffff', -99999999.9999999999, CAST('2123-11-23' AS timestamp), CAST(_utf8 x'00' AS VARCHAR(1)), 0 FROM rdb$database) "Source"
(
	"Id",
	"FieldInt32",
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
ON ("Target"."Id" = "Source"."Id")

WHEN NOT MATCHED THEN
INSERT
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
	"Source"."Id",
	"Source"."FieldInt32",
	"Source"."FieldInt64",
	"Source"."FieldBoolean",
	"Source"."FieldString",
	"Source"."FieldNString",
	"Source"."FieldChar",
	"Source"."FieldNChar",
	"Source"."FieldFloat",
	"Source"."FieldDateTime",
	"Source"."FieldGuid",
	"Source"."FieldDecimal",
	"Source"."FieldDate",
	"Source"."FieldEnumString",
	"Source"."FieldEnumNumber"
)

BeforeExecute
-- Firebird

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
-- Firebird

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

