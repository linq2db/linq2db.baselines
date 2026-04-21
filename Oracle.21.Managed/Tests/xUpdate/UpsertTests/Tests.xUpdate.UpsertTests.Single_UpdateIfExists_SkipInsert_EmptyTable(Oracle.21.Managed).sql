-- Oracle.21.Managed Oracle.Managed Oracle12

MERGE INTO "UpsertTest" Target
USING (
	SELECT 1 AS "Id", 'x' AS "Name", 1 AS "Version_1", NULL AS "CreatedAt", NULL AS "CreatedBy", NULL AS "UpdatedAt", NULL AS "UpdatedBy" FROM sys.dual) "Source"
ON (Target."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Name" = "Source"."Name",
	"Version" = "Source"."Version_1",
	"CreatedAt" = "Source"."CreatedAt",
	"CreatedBy" = "Source"."CreatedBy",
	"UpdatedAt" = "Source"."UpdatedAt",
	"UpdatedBy" = "Source"."UpdatedBy"

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"UpsertTest" r
			WHERE
				r."Id" = 1
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

