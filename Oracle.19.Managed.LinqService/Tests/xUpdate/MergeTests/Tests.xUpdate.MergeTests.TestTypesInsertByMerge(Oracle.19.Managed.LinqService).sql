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

MERGE INTO "TestMerge1" Target
USING (
	SELECT 1 AS "source_Id", NULL AS "source_FieldInt32", NULL AS "source_FieldInt64", NULL AS "source_FieldBoolean", NULL AS "source_FieldString", NULL AS "source_FieldNString", NULL AS "source_FieldChar", NULL AS "source_FieldNChar", NULL AS "source_FieldFloat", NULL AS "source_FieldDouble", NULL AS "source_FieldDateTime", NULL AS "source_FieldDateTime2", NULL AS "source_FieldGuid", NULL AS "source_FieldDecimal", NULL AS "source_FieldEnumString", NULL AS "source_FieldEnumNumber" FROM sys.dual
	UNION ALL
	SELECT 2, -2147483647, -9223372036854775807, 1, 'normal strinG', 'всЁ нормально', '*', 'ё', -3.40282002E+38, -1.7976931348623157E+308D, TIMESTAMP '2000-11-12 21:14:15.167000', TIMESTAMP '2000-11-22 12:59:15.1244567 +00:00', HEXTORAW('00000000000000000000000000000000'), 12345678.9012345678, 'FIRST', NULL FROM sys.dual
	UNION ALL
	SELECT 3, 2147483647, 9223372036854775807, 0, 'test
	', 'ЙЦУКЩывапрм
q', '&', '>', 3.40282002E+38, 1.7976931348623157E+308D, TIMESTAMP '2001-10-12 21:14:15.167000', TIMESTAMP '2001-11-22 13:29:15.1234567 +00:00', HEXTORAW('FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF'), -99999999.9999999999, chr(0), 0 FROM sys.dual
	UNION ALL
	SELECT 4, -123, 987, NULL, '`~!@#$%^&*()_+{}|[]\', '<>?/.,;''щЩ":', '', '
', 1.17549996E-38, -2.2250738585072014E-308D, TIMESTAMP '2098-10-12 21:14:15.997000', TIMESTAMP '2001-11-22 11:35:16.1224567 +00:00', HEXTORAW('FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF'), 99999999.9999999999, '_', 2147483647 FROM sys.dual) "Source"
ON (Target."Id" = "Source"."source_Id")

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
	"Source"."source_FieldDateTime2",
	"Source"."source_FieldGuid",
	"Source"."source_FieldDecimal",
	"Source"."source_FieldEnumString",
	"Source"."source_FieldEnumNumber"
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

MERGE INTO "TestMerge2" Target
USING (
	SELECT 3 AS "source_Id", -123 AS "source_FieldInt32", 987 AS "source_FieldInt64", NULL AS "source_FieldBoolean", '<>?/.,;''zZ":' AS "source_FieldString", '`~!@#$%^&*()_+{}|[]\' AS "source_FieldNString", '' AS "source_FieldChar", '' AS "source_FieldNChar", -1.17549996E-38 AS "source_FieldFloat", 2.2250738585072014E-308D AS "source_FieldDouble", TIMESTAMP '2098-10-12 21:14:15.907000' AS "source_FieldDateTime", TIMESTAMP '2001-11-22 14:53:14.1233457 +00:00' AS "source_FieldDateTime2", HEXTORAW('FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF') AS "source_FieldGuid", -0.123 AS "source_FieldDecimal", NULL AS "source_FieldEnumString", -2147483647 AS "source_FieldEnumNumber" FROM sys.dual
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
ON (Target."Id" = "Source"."source_Id")

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
	"Source"."source_FieldDateTime2",
	"Source"."source_FieldGuid",
	"Source"."source_FieldDecimal",
	"Source"."source_FieldEnumString",
	"Source"."source_FieldEnumNumber"
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

