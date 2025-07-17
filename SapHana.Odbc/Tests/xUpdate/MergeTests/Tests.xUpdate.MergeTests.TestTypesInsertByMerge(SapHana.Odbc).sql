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
DECLARE @value Time
SET     @value = 09:44:34.6534321
DECLARE @value Time
SET     @value = 00:44:34.6414321
DECLARE @value Time
SET     @value = 00:00:00

MERGE INTO "TestMerge1" "Target"
USING (
	SELECT 1 AS "Id", NULL AS "FieldInt32", NULL AS "FieldInt64", NULL AS "FieldBoolean", NULL AS "FieldString", NULL AS "FieldNString", NULL AS "FieldChar", NULL AS "FieldNChar", NULL AS "FieldFloat", NULL AS "FieldDouble", NULL AS "FieldDateTime", NULL AS "FieldBinary", NULL AS "FieldGuid", NULL AS "FieldDecimal", NULL AS "FieldDate", NULL AS "FieldTime", NULL AS "FieldEnumString", NULL AS "FieldEnumNumber" FROM DUMMY
	UNION ALL
	SELECT 2, -2147483647, -9223372036854775807, 1, 'normal strinG', 'всЁ нормально', '*', 'ё', -3.40282002E+38, -1.7976931348623157E+308, '2000-11-12 21:14:15.167', x'', '00000000-0000-0000-0000-000000000000', 12345678.9012345678, '2000-11-23', ?, 'FIRST', NULL FROM DUMMY
	UNION ALL
	SELECT 3, 2147483647, 9223372036854775807, 0, 'test
	', 'ЙЦУКЩывапрм
q', '&', '>', 3.40282002E+38, 1.7976931348623157E+308, '2001-10-12 21:14:15.167', x'000102030004', 'ffffffff-ffff-ffff-ffff-ffffffffffff', -99999999.9999999999, '2123-11-23', ?, '', 0 FROM DUMMY
	UNION ALL
	SELECT 4, -123, 987, NULL, '`~!@#$%^&*()_+{}|[]\', '<>?/.,;''щЩ":', '', '
', 1.17549996E-38, -2.2250738585072014E-308, '2098-10-12 21:14:15.997', x'FFC864321400', 'ffffffff-ffff-ffff-ffff-ffffffffffff', 99999999.9999999999, '2110-11-23', ?, '', 2147483647 FROM DUMMY) "Source"
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
	"Source"."Id",
	"Source"."FieldInt32",
	"Source"."FieldInt64",
	"Source"."FieldBoolean",
	"Source"."FieldString",
	"Source"."FieldNString",
	"Source"."FieldChar",
	"Source"."FieldNChar",
	"Source"."FieldFloat",
	"Source"."FieldDouble",
	"Source"."FieldDateTime",
	"Source"."FieldBinary",
	"Source"."FieldGuid",
	"Source"."FieldDecimal",
	"Source"."FieldDate",
	"Source"."FieldTime",
	"Source"."FieldEnumString",
	"Source"."FieldEnumNumber"
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @value Time
SET     @value = 23:59:59.9999999
DECLARE @value Time
SET     @value = 14:44:33.2340000
DECLARE @value Time
SET     @value = 23:59:59.9999999
DECLARE @value Time
SET     @value = 22:44:33

MERGE INTO "TestMerge2" "Target"
USING (
	SELECT 3 AS "Id", -123 AS "FieldInt32", 987 AS "FieldInt64", NULL AS "FieldBoolean", '<>?/.,;''zZ":' AS "FieldString", '`~!@#$%^&*()_+{}|[]\' AS "FieldNString", '' AS "FieldChar", '' AS "FieldNChar", -1.17549996E-38 AS "FieldFloat", 2.2250738585072014E-308 AS "FieldDouble", '2098-10-12 21:14:15.907' AS "FieldDateTime", x'FFC864321400' AS "FieldBinary", 'ffffffff-ffff-ffff-ffff-ffffffffffff' AS "FieldGuid", -0.123 AS "FieldDecimal", '2111-11-23' AS "FieldDate", ? AS "FieldTime", NULL AS "FieldEnumString", -2147483647 AS "FieldEnumNumber" FROM DUMMY
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
	"Source"."Id",
	"Source"."FieldInt32",
	"Source"."FieldInt64",
	"Source"."FieldBoolean",
	"Source"."FieldString",
	"Source"."FieldNString",
	"Source"."FieldChar",
	"Source"."FieldNChar",
	"Source"."FieldFloat",
	"Source"."FieldDouble",
	"Source"."FieldDateTime",
	"Source"."FieldBinary",
	"Source"."FieldGuid",
	"Source"."FieldDecimal",
	"Source"."FieldDate",
	"Source"."FieldTime",
	"Source"."FieldEnumString",
	"Source"."FieldEnumNumber"
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

