BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"TestMerge1" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"TestMerge2" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

MERGE INTO "TestMerge1" "Target"
USING (	VALUES
		(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
		(2, -2147483647, -9223372036854775807, 1, 'normal strinG', 'всЁ нормально', '*', 'ё', -3.40282E+38, -1.7976931348623157E+308, '2000-11-12-21.14.15.167000', BX'', Cast(x'00000000000000000000000000000000' as char(16) for bit data), 12345678.9012345678, '2000-11-23-00.00.00.000000', '09:44:34', 'FIRST', NULL),
		(3, 2147483647, 9223372036854775807, 0, 'test
	', 'ЙЦУКЩывапрм
q', '&', '>', 3.40282E+38, 1.7976931348623157E+308, '2001-10-12-21.14.15.167000', BX'000102030004', Cast(x'ffffffffffffffffffffffffffffffff' as char(16) for bit data), -99999999.9999999999, '2123-11-23-00.00.00.000000', '00:44:34', '', 0),
		(4, -123, 987, NULL, '`~!@#$%^&*()_+{}|[]\', '<>?/.,;''щЩ":', '', '
', 1.1755E-38, -2.2250738585072014E-308, '2098-10-12-21.14.15.997000', BX'FFC864321400', Cast(x'ffffffffffffffffffffffffffffffff' as char(16) for bit data), 99999999.9999999999, '3210-11-23-00.00.00.000000', '00:00:00', '', 2147483647)) "Source"
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
-- DB2 DB2.LUW DB2LUW

MERGE INTO "TestMerge2" "Target"
USING (	VALUES
		(3, -123, 987, NULL, '<>?/.,;''zZ":', '`~!@#$%^&*()_+{}|[]\', '', '', -1.1755E-38, 2.2250738585072014E-308, '2098-10-12-21.14.15.907000', BX'FFC864321400', Cast(x'ffffffffffffffffffffffffffffffff' as char(16) for bit data), -0.123, '3210-11-23-00.00.00.000000', '23:59:59', NULL, -2147483647),
		(4, 2147483647, 9223372036854775807, 0, 'test
	', 'ЙЦУКЩывапрм
q', '1', ' ', 3.40282E+38, 1.7976931348623157E+308, '2001-10-12-21.14.15.167000', BX'000102030004', Cast(x'ffffffffffffffffffffffffffffffff' as char(16) for bit data), -99999999.9999999999, '2123-11-23-00.00.00.000000', '14:44:33', '', 0),
		(5, -123, 987, NULL, '<>?/.,;''zZ":', '`~!@#$%^&*()_+{}|[]\', ' ', ' ', -1.1755E-38, 2.2250738585072014E-308, '2098-10-12-21.14.15.913000', BX'FFC864321400', Cast(x'ffffffffffffffffffffffffffffffff' as char(16) for bit data), -0.123, '3210-11-23-00.00.00.000000', '23:59:59', NULL, -2147483647),
		(6, 2147483647, 9223372036854775807, 0, 'test
	  ', 'ЙЦУКЩывапрм
q  ', '-', '~', 3.40282E+38, 1.7976931348623157E+308, '2001-10-12-21.14.15.167000', BX'000102030004', Cast(x'ffffffffffffffffffffffffffffffff' as char(16) for bit data), -99999999.9999999999, '2123-11-23-00.00.00.000000', '22:44:33', '', 0)) "Source"
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

