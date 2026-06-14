-- Firebird.2.5 Firebird

MERGE INTO "UpsertTest" "Target"
USING (
	SELECT CAST('alice' AS VARCHAR(5)) AS "Name", 99 AS "Id", 42 AS "Version_1", CAST(NULL AS TimeStamp) AS "CreatedAt", CAST(NULL AS VARCHAR(1)) AS "CreatedBy", CAST(NULL AS TimeStamp) AS "UpdatedAt", CAST(NULL AS VARCHAR(1)) AS "UpdatedBy" FROM rdb$database) "Source"
(
	"Name",
	"Id",
	"Version_1",
	"CreatedAt",
	"CreatedBy",
	"UpdatedAt",
	"UpdatedBy"
)
ON ("Target"."Name" = "Source"."Name" OR "Target"."Name" IS NULL AND "Source"."Name" IS NULL)

WHEN NOT MATCHED THEN
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
	"Version" = "Source"."Version_1",
	"CreatedAt" = "Source"."CreatedAt",
	"CreatedBy" = "Source"."CreatedBy",
	"UpdatedAt" = "Source"."UpdatedAt",
	"UpdatedBy" = "Source"."UpdatedBy"

-- Firebird.2.5 Firebird

SELECT FIRST 2
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
	"r"."Name" = 'alice'

-- Firebird.2.5 Firebird

SELECT FIRST 2
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
	"r"."Name" = 'bob'

