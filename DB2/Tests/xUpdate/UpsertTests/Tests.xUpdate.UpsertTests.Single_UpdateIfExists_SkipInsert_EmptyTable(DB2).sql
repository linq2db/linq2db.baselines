-- DB2 DB2.LUW DB2LUW

MERGE INTO "UpsertTest" "Target"
USING (VALUES
	(1,'x',1,CAST(NULL AS timestamp),CAST(NULL AS NVarChar(255)),CAST(NULL AS timestamp),CAST(NULL AS NVarChar(255)))
) "Source"
(
	"Id",
	"Name",
	"Version_1",
	"CreatedAt",
	"CreatedBy",
	"UpdatedAt",
	"UpdatedBy"
)
ON ("Target"."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Name" = "Source"."Name",
	"Version" = "Source"."Version_1",
	"CreatedAt" = "Source"."CreatedAt",
	"CreatedBy" = "Source"."CreatedBy",
	"UpdatedAt" = "Source"."UpdatedAt",
	"UpdatedBy" = "Source"."UpdatedBy"

-- DB2 DB2.LUW DB2LUW

SELECT
	CAST(EXISTS(
		SELECT
			*
		FROM
			"UpsertTest" "r"
		WHERE
			"r"."Id" = 1
	) AS smallint)
FROM SYSIBM.SYSDUMMY1

