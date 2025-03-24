﻿BeforeExecute
--  PostgreSQL.15 PostgreSQL

DELETE FROM
	"TestMerge1" t1

BeforeExecute
--  PostgreSQL.15 PostgreSQL

DELETE FROM
	"TestMerge2" t1

BeforeExecute
--  PostgreSQL.15 PostgreSQL
DECLARE @value TimestampTz -- DateTime
SET     @value = '2000-11-22T12:59:15.1244567+00:00'
DECLARE @value_1 Interval -- Object
SET     @value_1 = 09:44:34.6534321
DECLARE @value_2 TimestampTz -- DateTime
SET     @value_2 = '2001-11-22T13:29:15.1234567+00:00'
DECLARE @value_3 Interval -- Object
SET     @value_3 = 00:44:34.6414321
DECLARE @value_4 TimestampTz -- DateTime
SET     @value_4 = '2001-11-22T11:35:16.1224567+00:00'
DECLARE @value_5 Interval -- Object
SET     @value_5 = 00:00:00

MERGE INTO "TestMerge1" "Target"
USING (VALUES
	(1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(2,-2147483647,-9223372036854775807,True,'normal strinG','всЁ нормально','*','ё',-3.40282002E+38,-1.7976931348623157E+308,'2000-11-12 21:14:15.167'::timestamp,:value,E'\\x'::bytea,'00000000-0000-0000-0000-000000000000'::uuid,12345678.9012345678,'2000-11-23'::date,:value_1,'FIRST',NULL),
	(3,2147483647,9223372036854775807,False,'test
	','ЙЦУКЩывапрм
q','&','>',3.40282002E+38,1.7976931348623157E+308,'2001-10-12 21:14:15.167'::timestamp,:value_2,E'\\x000102030004'::bytea,'ffffffff-ffff-ffff-ffff-ffffffffffff'::uuid,-99999999.9999999999,'2123-11-23'::date,:value_3,'',0),
	(4,-123,987,NULL,'`~!@#$%^&*()_+{}|[]\','<>?/.,;''щЩ":','','
',1.17549996E-38,-2.2250738585072014E-308,'2098-10-12 21:14:15.997'::timestamp,:value_4,E'\\xFFC864321400'::bytea,'ffffffff-ffff-ffff-ffff-ffffffffffff'::uuid,99999999.9999999999,'2110-11-23'::date,:value_5,'',2147483647)
) "Source"
(
	"source_Id",
	"source_FieldInt32",
	"source_FieldInt64",
	"source_FieldBoolean",
	"source_FieldString",
	"source_FieldNString",
	"source_FieldChar",
	"source_FieldNChar",
	"source_FieldFloat",
	"source_FieldDouble",
	"source_FieldDateTime",
	"source_FieldDateTime2",
	"source_FieldBinary",
	"source_FieldGuid",
	"source_FieldDecimal",
	"source_FieldDate",
	"source_FieldTime",
	"source_FieldEnumString",
	"source_FieldEnumNumber"
)
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
	"Source"."source_FieldBinary",
	"Source"."source_FieldGuid",
	"Source"."source_FieldDecimal",
	"Source"."source_FieldDate",
	"Source"."source_FieldTime",
	"Source"."source_FieldEnumString",
	"Source"."source_FieldEnumNumber"
)

BeforeExecute
--  PostgreSQL.15 PostgreSQL
DECLARE @value TimestampTz -- DateTime
SET     @value = '2001-11-22T14:53:14.1233457+00:00'
DECLARE @value_1 Interval -- Object
SET     @value_1 = 23:59:59.9999999
DECLARE @value_2 TimestampTz -- DateTime
SET     @value_2 = '2001-11-22T13:29:15.3210000+00:00'
DECLARE @value_3 Interval -- Object
SET     @value_3 = 14:44:33.2340000
DECLARE @value_4 TimestampTz -- DateTime
SET     @value_4 = '2001-11-22T14:53:15.0000000+00:00'
DECLARE @value_5 TimestampTz -- DateTime
SET     @value_5 = '2001-11-22T13:29:15.9990000+00:00'
DECLARE @value_6 Interval -- Object
SET     @value_6 = 22:44:33

MERGE INTO "TestMerge2" "Target"
USING (VALUES
	(3,-123,987,NULL,'<>?/.,;''zZ":','`~!@#$%^&*()_+{}|[]\','','',-1.17549996E-38,2.2250738585072014E-308,'2098-10-12 21:14:15.907'::timestamp,:value,E'\\xFFC864321400'::bytea,'ffffffff-ffff-ffff-ffff-ffffffffffff'::uuid,-0.123,'2111-11-23'::date,:value_1,NULL,-2147483647),
	(4,2147483647,9223372036854775807,False,'test
	','ЙЦУКЩывапрм
q','1',' ',3.40282002E+38,1.7976931348623157E+308,'2001-10-12 21:14:15.167'::timestamp,:value_2,E'\\x000102030004'::bytea,'ffffffff-ffff-ffff-ffff-ffffffffffff'::uuid,-99999999.9999999999,'2123-11-23'::date,:value_3,'',0),
	(5,-123,987,NULL,'<>?/.,;''zZ":','`~!@#$%^&*()_+{}|[]\',' ',' ',-1.17549996E-38,2.2250738585072014E-308,'2098-10-12 21:14:15.913'::timestamp,:value_4,E'\\xFFC864321400'::bytea,'ffffffff-ffff-ffff-ffff-ffffffffffff'::uuid,-0.123,'2010-11-23'::date,:value_1,NULL,-2147483647),
	(6,2147483647,9223372036854775807,False,'test
	  ','ЙЦУКЩывапрм
q  ','-','~',3.40282002E+38,1.7976931348623157E+308,'2001-10-12 21:14:15.167'::timestamp,:value_5,E'\\x000102030004'::bytea,'ffffffff-ffff-ffff-ffff-ffffffffffff'::uuid,-99999999.9999999999,'2123-11-23'::date,:value_6,'',0)
) "Source"
(
	"source_Id",
	"source_FieldInt32",
	"source_FieldInt64",
	"source_FieldBoolean",
	"source_FieldString",
	"source_FieldNString",
	"source_FieldChar",
	"source_FieldNChar",
	"source_FieldFloat",
	"source_FieldDouble",
	"source_FieldDateTime",
	"source_FieldDateTime2",
	"source_FieldBinary",
	"source_FieldGuid",
	"source_FieldDecimal",
	"source_FieldDate",
	"source_FieldTime",
	"source_FieldEnumString",
	"source_FieldEnumNumber"
)
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
	"Source"."source_FieldBinary",
	"Source"."source_FieldGuid",
	"Source"."source_FieldDecimal",
	"Source"."source_FieldDate",
	"Source"."source_FieldTime",
	"Source"."source_FieldEnumString",
	"Source"."source_FieldEnumNumber"
)

BeforeExecute
--  PostgreSQL.15 PostgreSQL

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

BeforeExecute
--  PostgreSQL.15 PostgreSQL

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

