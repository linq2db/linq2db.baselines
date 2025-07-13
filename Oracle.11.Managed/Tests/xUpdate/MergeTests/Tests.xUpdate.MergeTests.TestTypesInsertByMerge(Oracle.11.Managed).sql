BeforeExecute
-- Oracle.11.Managed Oracle11

DELETE FROM
	"TestMerge1" t1

BeforeExecute
-- Oracle.11.Managed Oracle11

DELETE FROM
	"TestMerge2" t1

BeforeExecute
-- Oracle.11.Managed Oracle11

MERGE INTO "TestMerge1" Target
USING (
	SELECT 1 AS "Id", NULL AS "FieldInt32", NULL AS "FieldInt64", NULL AS "FieldBoolean", NULL AS "FieldString", NULL AS "FieldNString", NULL AS "FieldChar", NULL AS "FieldNChar", NULL AS "FieldFloat", NULL AS "FieldDouble", NULL AS "FieldDateTime", NULL AS "FieldDateTime2", NULL AS "FieldGuid", NULL AS "FieldDecimal", NULL AS "FieldEnumString", NULL AS "FieldEnumNumber" FROM sys.dual
	UNION ALL
	SELECT 2, -2147483647, -9223372036854775807, 1, 'normal strinG', 'всЁ нормально', '*', 'ё', -3.40282002E+38, -1.7976931348623157E+308D, TIMESTAMP '2000-11-12 21:14:15.167000', TIMESTAMP '2000-11-22 12:59:15.1244567 +00:00', HEXTORAW('00000000000000000000000000000000'), 12345678.9012345678, 'FIRST', NULL FROM sys.dual
	UNION ALL
	SELECT 3, 2147483647, 9223372036854775807, 0, 'test
	', 'ЙЦУКЩывапрм
q', '&', '>', 3.40282002E+38, 1.7976931348623157E+308D, TIMESTAMP '2001-10-12 21:14:15.167000', TIMESTAMP '2001-11-22 13:29:15.1234567 +00:00', HEXTORAW('FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF'), -99999999.9999999999, chr(0), 0 FROM sys.dual
	UNION ALL
	SELECT 4, -123, 987, NULL, '`~!@#$%^&*()_+{}|[]\', '<>?/.,;''щЩ":', '', '
', 1.17549996E-38, -2.2250738585072014E-308D, TIMESTAMP '2098-10-12 21:14:15.997000', TIMESTAMP '2001-11-22 11:35:16.1224567 +00:00', HEXTORAW('FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF'), 99999999.9999999999, '_', 2147483647 FROM sys.dual) "Source"
ON (Target."Id" = "Source"."Id")

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
	"FieldDateTime2",
	"FieldGuid",
	"FieldDecimal",
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
	"Source"."FieldDateTime2",
	"Source"."FieldGuid",
	"Source"."FieldDecimal",
	"Source"."FieldEnumString",
	"Source"."FieldEnumNumber"
)

BeforeExecute
-- Oracle.11.Managed Oracle11

MERGE INTO "TestMerge2" Target
USING (
	SELECT 3 AS "Id", -123 AS "FieldInt32", 987 AS "FieldInt64", NULL AS "FieldBoolean", '<>?/.,;''zZ":' AS "FieldString", '`~!@#$%^&*()_+{}|[]\' AS "FieldNString", '' AS "FieldChar", '' AS "FieldNChar", -1.17549996E-38 AS "FieldFloat", 2.2250738585072014E-308D AS "FieldDouble", TIMESTAMP '2098-10-12 21:14:15.907000' AS "FieldDateTime", TIMESTAMP '2001-11-22 14:53:14.1233457 +00:00' AS "FieldDateTime2", HEXTORAW('FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF') AS "FieldGuid", -0.123 AS "FieldDecimal", NULL AS "FieldEnumString", -2147483647 AS "FieldEnumNumber" FROM sys.dual
	UNION ALL
	SELECT 4, 2147483647, 9223372036854775807, 0, 'test
	', 'ЙЦУКЩывапрм
q', '1', ' ', 3.40282002E+38, 1.7976931348623157E+308D, TIMESTAMP '2001-10-12 21:14:15.167000', TIMESTAMP '2001-11-22 13:29:15.3210000 +00:00', HEXTORAW('FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF'), -99999999.9999999999, chr(0), 0 FROM sys.dual
	UNION ALL
	SELECT 5, -123, 987, NULL, '<>?/.,;''zZ":', '`~!@#$%^&*()_+{}|[]\', ' ', ' ', -1.17549996E-38, 2.2250738585072014E-308D, TIMESTAMP '2098-10-12 21:14:15.913000', TIMESTAMP '2001-11-22 14:53:15.0000000 +00:00', HEXTORAW('FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF'), -0.123, NULL, -2147483647 FROM sys.dual
	UNION ALL
	SELECT 6, 2147483647, 9223372036854775807, 0, 'test
	  ', 'ЙЦУКЩывапрм
q  ', '-', '~', 3.40282002E+38, 1.7976931348623157E+308D, TIMESTAMP '2001-10-12 21:14:15.167000', TIMESTAMP '2001-11-22 13:29:15.9990000 +00:00', HEXTORAW('FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF'), -99999999.9999999999, chr(0), 0 FROM sys.dual) "Source"
ON (Target."Id" = "Source"."Id")

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
	"FieldDateTime2",
	"FieldGuid",
	"FieldDecimal",
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
	"Source"."FieldDateTime2",
	"Source"."FieldGuid",
	"Source"."FieldDecimal",
	"Source"."FieldEnumString",
	"Source"."FieldEnumNumber"
)

BeforeExecute
-- Oracle.11.Managed Oracle11

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
-- Oracle.11.Managed Oracle11

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

