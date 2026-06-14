-- Firebird.2.5 Firebird

MERGE INTO "UpsertTest" "Target"
USING (
	SELECT 1 AS "Id", CAST('x' AS VARCHAR(1)) AS "Name", 1 AS "Version_1", CAST(NULL AS TimeStamp) AS "CreatedAt", CAST(NULL AS VARCHAR(1)) AS "CreatedBy", CAST(NULL AS TimeStamp) AS "UpdatedAt", CAST(NULL AS VARCHAR(1)) AS "UpdatedBy" FROM rdb$database) "Source"
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

-- Firebird.2.5 Firebird

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"UpsertTest" "r"
			WHERE
				"r"."Id" = 1
		)
			THEN '1'
		ELSE '0'
	END
FROM rdb$database

