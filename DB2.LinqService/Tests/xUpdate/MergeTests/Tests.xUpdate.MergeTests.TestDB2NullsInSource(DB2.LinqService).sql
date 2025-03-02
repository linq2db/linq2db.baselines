BeforeExecute
-- DB2 DB2.LUW DB2LUW

MERGE INTO "TestMerge1" "Target"
USING (VALUES
	(1,CAST(NULL AS Int),CAST(NULL AS BigInt),CAST(NULL AS smallint),CAST(NULL AS NVarChar(255)),CAST(NULL AS NVarChar(255)),CAST(NULL AS NChar(1)),CAST(NULL AS NChar(1)),CAST(NULL AS Real),CAST(NULL AS Float),CAST(NULL AS timestamp),CAST(NULL AS VARBINARY(32672)),CAST(NULL AS char(16) for bit data),CAST(NULL AS Decimal(18, 10)),CAST(NULL AS timestamp),CAST(NULL AS Time),CAST(NULL AS NVarChar(5)),CAST(NULL AS Int)),
	(2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)
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

