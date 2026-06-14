-- Firebird.5 Firebird4

MERGE INTO "UpsertTest" "Target"
USING (
	SELECT 2 AS "Id", CAST('ignored' AS VARCHAR(7)) AS "Name", 1 AS "Version_1", CAST(NULL AS TimeStamp) AS "CreatedAt", CAST(NULL AS VARCHAR(1)) AS "CreatedBy", CAST(NULL AS TimeStamp) AS "UpdatedAt", CAST(NULL AS VARCHAR(1)) AS "UpdatedBy" FROM rdb$database) "Source"
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

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"UpsertTest" "t1"

-- Firebird.5 Firebird4

SELECT
	"r"."Id",
	"r"."Name",
	"r"."Version",
	"r"."CreatedAt",
	"r"."CreatedBy",
	"r"."UpdatedAt",
	"r"."UpdatedBy"
FROM
	"UpsertTest" "r"
WHERE
	"r"."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Firebird.5 Firebird4

MERGE INTO "UpsertTest" "Target"
USING (
	SELECT 1 AS "Id", CAST('updated' AS VARCHAR(7)) AS "Name", 2 AS "Version_1", CAST(NULL AS TimeStamp) AS "CreatedAt", CAST(NULL AS VARCHAR(1)) AS "CreatedBy", CAST(NULL AS TimeStamp) AS "UpdatedAt", CAST(NULL AS VARCHAR(1)) AS "UpdatedBy" FROM rdb$database) "Source"
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

-- Firebird.5 Firebird4

SELECT
	"r"."Id",
	"r"."Name",
	"r"."Version",
	"r"."CreatedAt",
	"r"."CreatedBy",
	"r"."UpdatedAt",
	"r"."UpdatedBy"
FROM
	"UpsertTest" "r"
WHERE
	"r"."Id" = 1
FETCH NEXT 2 ROWS ONLY

