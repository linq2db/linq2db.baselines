-- Oracle.11.Managed Oracle11

MERGE INTO "UpsertTest" Target
USING (
	SELECT 1 AS "Id", 'updated' AS "Name", 2 AS "Version_1", NULL AS "CreatedAt", NULL AS "CreatedBy", NULL AS "UpdatedAt", NULL AS "UpdatedBy" FROM sys.dual) "Source"
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

-- Oracle.11.Managed Oracle11

SELECT
	r."Id",
	r."Name",
	r."Version",
	r."CreatedAt",
	r."CreatedBy",
	r."UpdatedAt",
	r."UpdatedBy"
FROM
	"UpsertTest" r
WHERE
	r."Id" = 1 AND ROWNUM <= 2

