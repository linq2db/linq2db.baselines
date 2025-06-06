BeforeExecute
-- Firebird.4 Firebird4

DELETE FROM
	"TestMerge1" "t1"

BeforeExecute
-- Firebird.4 Firebird4

DELETE FROM
	"TestMerge2" "t1"

BeforeExecute
-- Firebird.4 Firebird4

MERGE INTO "TestMerge1" "Target"
USING (
	SELECT 1 AS "source_Id", NULL AS "source_FieldInt32", NULL AS "source_FieldInt64", NULL AS "source_FieldBoolean", NULL AS "source_FieldString", NULL AS "source_FieldNString", NULL AS "source_FieldChar", NULL AS "source_FieldNChar", NULL AS "source_FieldFloat", NULL AS "source_FieldDateTime", NULL AS "source_FieldGuid", NULL AS "source_FieldDecimal", NULL AS "source_FieldDate", NULL AS "source_FieldEnumString", NULL AS "source_FieldEnumNumber" FROM rdb$database
	UNION ALL
	SELECT 2, -2147483647, -9223372036854775807, TRUE, CAST('normal strinG' AS VARCHAR(13)), CAST(_utf8 x'D0B2D181D08120D0BDD0BED180D0BCD0B0D0BBD18CD0BDD0BE' AS VARCHAR(25)), '*', _utf8 x'D191', -3.40282002E+38, CAST('2000-11-12 21:14:15.167' AS timestamp), X'00000000000000000000000000000000', 12345678.9012345678, CAST('2000-11-23' AS timestamp), CAST('FIRST' AS VARCHAR(5)), NULL FROM rdb$database
	UNION ALL
	SELECT 3, 2147483647, 9223372036854775807, FALSE, CAST('test
	' AS VARCHAR(10)), CAST(_utf8 x'D099D0A6D0A3D09AD0A9D18BD0B2D0B0D0BFD180D0BC0D0A71' AS VARCHAR(25)), '&', '>', 3.40282002E+38, CAST('2001-10-12 21:14:15.167' AS timestamp), X'FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF', -99999999.9999999999, CAST('2123-11-23' AS timestamp), CAST(_utf8 x'00' AS VARCHAR(1)), 0 FROM rdb$database
	UNION ALL
	SELECT 4, -123, 987, NULL, CAST('`~!@#$%^&*()_+{}|[]\' AS VARCHAR(20)), CAST(_utf8 x'3C3E3F2F2E2C3B27D189D0A9223A' AS VARCHAR(14)), '', '
', 1.17549996E-38, CAST('2098-10-12 21:14:15.997' AS timestamp), X'FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF', 99999999.9999999999, CAST('2110-11-23' AS timestamp), CAST('' AS VARCHAR(1)), 2147483647 FROM rdb$database) "Source"
ON ("Target"."Id" = "Source"."source_Id")

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
	"Source"."source_Id",
	"Source"."source_FieldInt32",
	"Source"."source_FieldInt64",
	"Source"."source_FieldBoolean",
	"Source"."source_FieldString",
	"Source"."source_FieldNString",
	"Source"."source_FieldChar",
	"Source"."source_FieldNChar",
	"Source"."source_FieldFloat",
	"Source"."source_FieldDateTime",
	"Source"."source_FieldGuid",
	"Source"."source_FieldDecimal",
	"Source"."source_FieldDate",
	"Source"."source_FieldEnumString",
	"Source"."source_FieldEnumNumber"
)

BeforeExecute
-- Firebird.4 Firebird4

MERGE INTO "TestMerge2" "Target"
USING (
	SELECT 3 AS "source_Id", -123 AS "source_FieldInt32", 987 AS "source_FieldInt64", NULL AS "source_FieldBoolean", CAST('<>?/.,;''zZ":' AS VARCHAR(12)) AS "source_FieldString", CAST('`~!@#$%^&*()_+{}|[]\' AS VARCHAR(20)) AS "source_FieldNString", '' AS "source_FieldChar", '' AS "source_FieldNChar", -1.17549996E-38 AS "source_FieldFloat", CAST('2098-10-12 21:14:15.907' AS timestamp) AS "source_FieldDateTime", X'FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF' AS "source_FieldGuid", -0.123 AS "source_FieldDecimal", CAST('2111-11-23' AS timestamp) AS "source_FieldDate", NULL AS "source_FieldEnumString", -2147483647 AS "source_FieldEnumNumber" FROM rdb$database
	UNION ALL
	SELECT 4, 2147483647, 9223372036854775807, FALSE, CAST('test
	' AS VARCHAR(9)), CAST(_utf8 x'D099D0A6D0A3D09AD0A9D18BD0B2D0B0D0BFD180D0BC0D0A71' AS VARCHAR(25)), '1', ' ', 3.40282002E+38, CAST('2001-10-12 21:14:15.167' AS timestamp), X'FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF', -99999999.9999999999, CAST('2123-11-23' AS timestamp), CAST(_utf8 x'00' AS VARCHAR(1)), 0 FROM rdb$database
	UNION ALL
	SELECT 5, -123, 987, NULL, CAST('<>?/.,;''zZ":' AS VARCHAR(12)), CAST('`~!@#$%^&*()_+{}|[]\' AS VARCHAR(20)), ' ', ' ', -1.17549996E-38, CAST('2098-10-12 21:14:15.913' AS timestamp), X'FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF', -0.123, CAST('2010-11-23' AS timestamp), NULL, -2147483647 FROM rdb$database
	UNION ALL
	SELECT 6, 2147483647, 9223372036854775807, FALSE, CAST('test
	  ' AS VARCHAR(12)), CAST(_utf8 x'D099D0A6D0A3D09AD0A9D18BD0B2D0B0D0BFD180D0BC0D0A71200D20' AS VARCHAR(28)), '-', '~', 3.40282002E+38, CAST('2001-10-12 21:14:15.167' AS timestamp), X'FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF', -99999999.9999999999, CAST('2123-11-23' AS timestamp), CAST(_utf8 x'00' AS VARCHAR(1)), 0 FROM rdb$database) "Source"
ON ("Target"."Id" = "Source"."source_Id")

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
	"Source"."source_Id",
	"Source"."source_FieldInt32",
	"Source"."source_FieldInt64",
	"Source"."source_FieldBoolean",
	"Source"."source_FieldString",
	"Source"."source_FieldNString",
	"Source"."source_FieldChar",
	"Source"."source_FieldNChar",
	"Source"."source_FieldFloat",
	"Source"."source_FieldDateTime",
	"Source"."source_FieldGuid",
	"Source"."source_FieldDecimal",
	"Source"."source_FieldDate",
	"Source"."source_FieldEnumString",
	"Source"."source_FieldEnumNumber"
)

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4

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

