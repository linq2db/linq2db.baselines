BeforeExecute
-- DB2 DB2.LUW DB2LUW

MERGE INTO "TestMerge1" "Target"
USING (VALUES
	(1,CAST(NULL AS Int),CAST(NULL AS BigInt),CAST(NULL AS smallint),CAST(NULL AS NVarChar(255)),CAST(NULL AS NVarChar(255)),CAST(NULL AS NChar(1)),CAST(NULL AS NChar(1)),CAST(NULL AS Real),CAST(NULL AS Float),CAST(NULL AS timestamp),CAST(NULL AS VARBINARY(32672)),CAST(NULL AS char(16) for bit data),CAST(NULL AS Decimal(18, 10)),CAST(NULL AS timestamp),CAST(NULL AS Time),CAST(NULL AS NVarChar(5)),CAST(NULL AS Int)),
	(2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)
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

