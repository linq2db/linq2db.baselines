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
DECLARE @value  -- Time
SET     @value = 09:44:34.6534321
DECLARE @value  -- Time
SET     @value = 00:44:34.6414321
DECLARE @value  -- Time
SET     @value = 00:00:00

MERGE INTO "TestMerge1" "Target"
USING (
	SELECT 1 AS "source_Id", NULL AS "source_FieldInt32", NULL AS "source_FieldInt64", NULL AS "source_FieldBoolean", NULL AS "source_FieldString", NULL AS "source_FieldNString", NULL AS "source_FieldChar", NULL AS "source_FieldNChar", NULL AS "source_FieldFloat", NULL AS "source_FieldDouble", NULL AS "source_FieldDateTime", NULL AS "source_FieldBinary", NULL AS "source_FieldGuid", NULL AS "source_FieldDecimal", NULL AS "source_FieldDate", NULL AS "source_FieldTime", NULL AS "source_FieldEnumString", NULL AS "source_FieldEnumNumber" FROM DUMMY
	UNION ALL
	SELECT 2, -2147483647, -9223372036854775807, 1, 'normal strinG', 'всЁ нормально', '*', 'ё', -3.40282002E+38, -1.7976931348623157E+308, '2000-11-12 21:14:15.167', x'', '00000000-0000-0000-0000-000000000000', 12345678.9012345678, '2000-11-23', ?, 'FIRST', NULL FROM DUMMY
	UNION ALL
	SELECT 3, 2147483647, 9223372036854775807, 0, 'test
	', 'ЙЦУКЩывапрм
q', '&', '>', 3.40282002E+38, 1.7976931348623157E+308, '2001-10-12 21:14:15.167', x'000102030004', 'ffffffff-ffff-ffff-ffff-ffffffffffff', -99999999.9999999999, '2123-11-23', ?, '', 0 FROM DUMMY
	UNION ALL
	SELECT 4, -123, 987, NULL, '`~!@#$%^&*()_+{}|[]\', '<>?/.,;''щЩ":', '', '
', 1.17549996E-38, -2.2250738585072014E-308, '2098-10-12 21:14:15.997', x'FFC864321400', 'ffffffff-ffff-ffff-ffff-ffffffffffff', 99999999.9999999999, '2110-11-23', ?, '', 2147483647 FROM DUMMY) "Source"
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
	"Source"."source_Id",
	"Source"."source_FieldInt32",
	"Source"."source_FieldInt64",
	"Source"."source_FieldBoolean",
	"Source"."source_FieldString",
	"Source"."source_FieldNString",
	"Source"."source_FieldChar",
	"Source"."source_FieldNChar",
	"Source"."source_FieldFloat",
	"Source"."source_FieldDouble",
	"Source"."source_FieldDateTime",
	"Source"."source_FieldBinary",
	"Source"."source_FieldGuid",
	"Source"."source_FieldDecimal",
	"Source"."source_FieldDate",
	"Source"."source_FieldTime",
	"Source"."source_FieldEnumString",
	"Source"."source_FieldEnumNumber"
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @value  -- Time
SET     @value = 23:59:59.9999999
DECLARE @value  -- Time
SET     @value = 14:44:33.2340000
DECLARE @value  -- Time
SET     @value = 23:59:59.9999999
DECLARE @value  -- Time
SET     @value = 22:44:33

MERGE INTO "TestMerge2" "Target"
USING (
	SELECT 3 AS "source_Id", -123 AS "source_FieldInt32", 987 AS "source_FieldInt64", NULL AS "source_FieldBoolean", '<>?/.,;''zZ":' AS "source_FieldString", '`~!@#$%^&*()_+{}|[]\' AS "source_FieldNString", '' AS "source_FieldChar", '' AS "source_FieldNChar", -1.17549996E-38 AS "source_FieldFloat", 2.2250738585072014E-308 AS "source_FieldDouble", '2098-10-12 21:14:15.907' AS "source_FieldDateTime", x'FFC864321400' AS "source_FieldBinary", 'ffffffff-ffff-ffff-ffff-ffffffffffff' AS "source_FieldGuid", -0.123 AS "source_FieldDecimal", '2111-11-23' AS "source_FieldDate", ? AS "source_FieldTime", NULL AS "source_FieldEnumString", -2147483647 AS "source_FieldEnumNumber" FROM DUMMY
	UNION ALL
	SELECT 4, 2147483647, 9223372036854775807, 0, 'test
	', 'ЙЦУКЩывапрм
q', '1', ' ', 3.40282002E+38, 1.7976931348623157E+308, '2001-10-12 21:14:15.167', x'000102030004', 'ffffffff-ffff-ffff-ffff-ffffffffffff', -99999999.9999999999, '2123-11-23', ?, '', 0 FROM DUMMY
	UNION ALL
	SELECT 5, -123, 987, NULL, '<>?/.,;''zZ":', '`~!@#$%^&*()_+{}|[]\', ' ', ' ', -1.17549996E-38, 2.2250738585072014E-308, '2098-10-12 21:14:15.913', x'FFC864321400', 'ffffffff-ffff-ffff-ffff-ffffffffffff', -0.123, '2010-11-23', ?, NULL, -2147483647 FROM DUMMY
	UNION ALL
	SELECT 6, 2147483647, 9223372036854775807, 0, 'test
	  ', 'ЙЦУКЩывапрм
q  ', '-', '~', 3.40282002E+38, 1.7976931348623157E+308, '2001-10-12 21:14:15.167', x'000102030004', 'ffffffff-ffff-ffff-ffff-ffffffffffff', -99999999.9999999999, '2123-11-23', ?, '', 0 FROM DUMMY) "Source"
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
	"Source"."source_Id",
	"Source"."source_FieldInt32",
	"Source"."source_FieldInt64",
	"Source"."source_FieldBoolean",
	"Source"."source_FieldString",
	"Source"."source_FieldNString",
	"Source"."source_FieldChar",
	"Source"."source_FieldNChar",
	"Source"."source_FieldFloat",
	"Source"."source_FieldDouble",
	"Source"."source_FieldDateTime",
	"Source"."source_FieldBinary",
	"Source"."source_FieldGuid",
	"Source"."source_FieldDecimal",
	"Source"."source_FieldDate",
	"Source"."source_FieldTime",
	"Source"."source_FieldEnumString",
	"Source"."source_FieldEnumNumber"
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

