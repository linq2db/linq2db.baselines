-- PostgreSQL.18 PostgreSQL12
DELETE FROM
	"TestMerge1" t1

-- PostgreSQL.18 PostgreSQL12
DELETE FROM
	"TestMerge2" t1

-- PostgreSQL.18 PostgreSQL12
DECLARE @value Interval -- Object
SET     @value = 09:44:34.6534321
DECLARE @value_1 Interval -- Object
SET     @value_1 = 00:44:34.6414321
DECLARE @value_2 Interval -- Object
SET     @value_2 = 00:00:00

MERGE INTO "TestMerge1" "Target"
USING (VALUES
	(1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(2,-2147483647,-9223372036854775807,True,'normal strinG','всЁ нормально','*','ё',-3.40282002E+38,-1.7976931348623157E+308,'2000-11-12 21:14:15.167'::timestamp,'2000-11-22 13:14:15.124456+00:15'::timestamptz,E'\\x'::bytea,'00000000-0000-0000-0000-000000000000'::uuid,12345678.9012345678,'2000-11-23'::date,:value,'FIRST',NULL),
	(3,2147483647,9223372036854775807,False,'test
	','ЙЦУКЩывапрм
q','&','>',3.40282002E+38,1.7976931348623157E+308,'2001-10-12 21:14:15.167'::timestamp,'2001-11-22 13:14:15.123456-00:15'::timestamptz,E'\\x000102030004'::bytea,'ffffffff-ffff-ffff-ffff-ffffffffffff'::uuid,-99999999.9999999999,'2123-11-23'::date,:value_1,'',0),
	(4,-123,987,NULL,'`~!@#$%^&*()_+{}|[]\','<>?/.,;''щЩ":','','
',1.17549996E-38,-2.2250738585072014E-308,'2098-10-12 21:14:15.997'::timestamp,'2001-11-22 13:14:16.122456+01:39'::timestamptz,E'\\xFFC864321400'::bytea,'ffffffff-ffff-ffff-ffff-ffffffffffff'::uuid,99999999.9999999999,'2110-11-23'::date,:value_2,'',2147483647)
) "Source"
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
	"FieldDateTime2",
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
	"Source"."FieldBinary",
	"Source"."FieldGuid",
	"Source"."FieldDecimal",
	"Source"."FieldDate",
	"Source"."FieldTime",
	"Source"."FieldEnumString",
	"Source"."FieldEnumNumber"
)

-- PostgreSQL.18 PostgreSQL12
DECLARE @value Interval -- Object
SET     @value = 23:59:59.9999999
DECLARE @value_1 Interval -- Object
SET     @value_1 = 14:44:33.2340000
DECLARE @value_2 Interval -- Object
SET     @value_2 = 23:59:59.9999999
DECLARE @value_3 Interval -- Object
SET     @value_3 = 22:44:33

MERGE INTO "TestMerge2" "Target"
USING (VALUES
	(3,-123,987::BigInt,NULL,'<>?/.,;''zZ":','`~!@#$%^&*()_+{}|[]\','','',-1.17549996E-38::Real,2.2250738585072014E-308::Float,'2098-10-12 21:14:15.907'::timestamp,'2001-11-22 13:14:14.123345-01:39'::timestamptz,E'\\xFFC864321400'::bytea,'ffffffff-ffff-ffff-ffff-ffffffffffff'::uuid,-0.123::decimal,'2111-11-23'::date,:value,NULL,-2147483647),
	(4,2147483647,9223372036854775807,False,'test
	','ЙЦУКЩывапрм
q','1',' ',3.40282002E+38,1.7976931348623157E+308,'2001-10-12 21:14:15.167'::timestamp,'2001-11-22 13:14:15.321000-00:15'::timestamptz,E'\\x000102030004'::bytea,'ffffffff-ffff-ffff-ffff-ffffffffffff'::uuid,-99999999.9999999999,'2123-11-23'::date,:value_1,'',0),
	(5,-123,987,NULL,'<>?/.,;''zZ":','`~!@#$%^&*()_+{}|[]\',' ',' ',-1.17549996E-38,2.2250738585072014E-308,'2098-10-12 21:14:15.913'::timestamp,'2001-11-22 13:14:15.000000-01:39'::timestamptz,E'\\xFFC864321400'::bytea,'ffffffff-ffff-ffff-ffff-ffffffffffff'::uuid,-0.123,'2010-11-23'::date,:value_2,NULL,-2147483647),
	(6,2147483647,9223372036854775807,False,'test
	  ','ЙЦУКЩывапрм
q  ','-','~',3.40282002E+38,1.7976931348623157E+308,'2001-10-12 21:14:15.167'::timestamp,'2001-11-22 13:14:15.999000-00:15'::timestamptz,E'\\x000102030004'::bytea,'ffffffff-ffff-ffff-ffff-ffffffffffff'::uuid,-99999999.9999999999,'2123-11-23'::date,:value_3,'',0)
) "Source"
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
	"FieldDateTime2",
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
	"Source"."FieldBinary",
	"Source"."FieldGuid",
	"Source"."FieldDecimal",
	"Source"."FieldDate",
	"Source"."FieldTime",
	"Source"."FieldEnumString",
	"Source"."FieldEnumNumber"
)

-- PostgreSQL.18 PostgreSQL12
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

-- PostgreSQL.18 PostgreSQL12
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

