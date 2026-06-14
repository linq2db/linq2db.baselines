-- DB2 DB2.LUW DB2LUW

MERGE INTO "UpsertTest" "Target"
USING (VALUES
	(1,'skip',0,CAST(NULL AS timestamp),CAST(NULL AS NVarChar(255)),CAST(NULL AS timestamp),CAST(NULL AS NVarChar(255)))
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

WHEN NOT MATCHED AND "Source"."Version_1" > 0 THEN
INSERT
(
	"Id",
	"Name",
	"Version",
	"CreatedAt",
	"CreatedBy",
	"UpdatedAt",
	"UpdatedBy"
)
VALUES
(
	"Source"."Id",
	"Source"."Name",
	"Source"."Version_1",
	"Source"."CreatedAt",
	"Source"."CreatedBy",
	"Source"."UpdatedAt",
	"Source"."UpdatedBy"
)

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
			"UpsertTest" "t1"
	) AS smallint)
FROM SYSIBM.SYSDUMMY1

-- DB2 DB2.LUW DB2LUW

MERGE INTO "UpsertTest" "Target"
USING (VALUES
	(2,'keep',5,CAST(NULL AS timestamp),CAST(NULL AS NVarChar(255)),CAST(NULL AS timestamp),CAST(NULL AS NVarChar(255)))
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

WHEN NOT MATCHED AND "Source"."Version_1" > 0 THEN
INSERT
(
	"Id",
	"Name",
	"Version",
	"CreatedAt",
	"CreatedBy",
	"UpdatedAt",
	"UpdatedBy"
)
VALUES
(
	"Source"."Id",
	"Source"."Name",
	"Source"."Version_1",
	"Source"."CreatedAt",
	"Source"."CreatedBy",
	"Source"."UpdatedAt",
	"Source"."UpdatedBy"
)

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
	"t1"."Id",
	"t1"."Name",
	"t1"."Version",
	"t1"."CreatedAt",
	"t1"."CreatedBy",
	"t1"."UpdatedAt",
	"t1"."UpdatedBy"
FROM
	"UpsertTest" "t1"
FETCH NEXT 2 ROWS ONLY

