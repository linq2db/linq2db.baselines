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
DECLARE @FieldTime  -- Time
SET     @FieldTime = 09:44:34.6534321
DECLARE @FieldTime_1  -- Time
SET     @FieldTime_1 = 00:44:34.6414321
DECLARE @FieldTime_2  -- Time
SET     @FieldTime_2 = 00:00:00

MERGE INTO "TestMerge1" "Target"
USING (	SELECT 1 "Id", NULL "FieldInt32", NULL "FieldInt64", NULL "FieldBoolean", NULL "FieldString", NULL "FieldNString", NULL "FieldChar", NULL "FieldNChar", NULL "FieldFloat", NULL "FieldDouble", NULL "FieldDateTime", NULL "FieldBinary", NULL "FieldGuid", NULL "FieldDecimal", NULL "FieldDate", NULL "FieldTime", NULL "FieldEnumString", NULL "FieldEnumNumber" FROM DUMMY
	UNION ALL
	SELECT 2, -2147483647, -9223372036854775807, 1, 'normal strinG', 'всЁ нормально', '*', 'ё', -3.40282E+38, -1.7976931348623157E+308, '2000-11-12 21:14:15.167', x'', '00000000-0000-0000-0000-000000000000', 12345678.9012345678, '2000-11-23', ?, 'FIRST', NULL FROM DUMMY
	UNION ALL
	SELECT 3, 2147483647, 9223372036854775807, 0, 'test
	', 'ЙЦУКЩывапрм
q', '&', '>', 3.40282E+38, 1.7976931348623157E+308, '2001-10-12 21:14:15.167', x'000102030004', 'ffffffff-ffff-ffff-ffff-ffffffffffff', -99999999.9999999999, '2123-11-23', ?, '', 0 FROM DUMMY
	UNION ALL
	SELECT 4, -123, 987, NULL, '`~!@#$%^&*()_+{}|[]\', '<>?/.,;''щЩ":', '', '
', 1.1755E-38, -2.2250738585072014E-308, '2098-10-12 21:14:15.997', x'FFC864321400', 'ffffffff-ffff-ffff-ffff-ffffffffffff', 99999999.9999999999, '3210-11-23', ?, '', 2147483647 FROM DUMMY) "Source"
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
DECLARE @FieldTime  -- Time
SET     @FieldTime = 23:59:59.9999999
DECLARE @FieldTime_1  -- Time
SET     @FieldTime_1 = 14:44:33.2340000
DECLARE @FieldTime_2  -- Time
SET     @FieldTime_2 = 23:59:59.9999999
DECLARE @FieldTime_3  -- Time
SET     @FieldTime_3 = 22:44:33

MERGE INTO "TestMerge2" "Target"
USING (	SELECT 3 "Id", -123 "FieldInt32", 987 "FieldInt64", NULL "FieldBoolean", '<>?/.,;''zZ":' "FieldString", '`~!@#$%^&*()_+{}|[]\' "FieldNString", '' "FieldChar", '' "FieldNChar", -1.1755E-38 "FieldFloat", 2.2250738585072014E-308 "FieldDouble", '2098-10-12 21:14:15.907' "FieldDateTime", x'FFC864321400' "FieldBinary", 'ffffffff-ffff-ffff-ffff-ffffffffffff' "FieldGuid", -0.123 "FieldDecimal", '3210-11-23' "FieldDate", ? "FieldTime", NULL "FieldEnumString", -2147483647 "FieldEnumNumber" FROM DUMMY
	UNION ALL
	SELECT 4, 2147483647, 9223372036854775807, 0, 'test
	', 'ЙЦУКЩывапрм
q', '1', ' ', 3.40282E+38, 1.7976931348623157E+308, '2001-10-12 21:14:15.167', x'000102030004', 'ffffffff-ffff-ffff-ffff-ffffffffffff', -99999999.9999999999, '2123-11-23', ?, '', 0 FROM DUMMY
	UNION ALL
	SELECT 5, -123, 987, NULL, '<>?/.,;''zZ":', '`~!@#$%^&*()_+{}|[]\', ' ', ' ', -1.1755E-38, 2.2250738585072014E-308, '2098-10-12 21:14:15.913', x'FFC864321400', 'ffffffff-ffff-ffff-ffff-ffffffffffff', -0.123, '3210-11-23', ?, NULL, -2147483647 FROM DUMMY
	UNION ALL
	SELECT 6, 2147483647, 9223372036854775807, 0, 'test
	  ', 'ЙЦУКЩывапрм
q  ', '-', '~', 3.40282E+38, 1.7976931348623157E+308, '2001-10-12 21:14:15.167', x'000102030004', 'ffffffff-ffff-ffff-ffff-ffffffffffff', -99999999.9999999999, '2123-11-23', ?, '', 0 FROM DUMMY) "Source"
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

