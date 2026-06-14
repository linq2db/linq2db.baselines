-- Oracle.18.Managed Oracle.Managed Oracle12

MERGE INTO "UpsertTest" Target
USING (
	SELECT 'alice' AS "Name", 99 AS "Id", 42 AS "Version_1", NULL AS "CreatedAt", NULL AS "CreatedBy", NULL AS "UpdatedAt", NULL AS "UpdatedBy" FROM sys.dual) "Source"
ON (Target."Name" = "Source"."Name" OR Target."Name" IS NULL AND "Source"."Name" IS NULL)

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

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Name",
	r."Version" as "Version_1",
	r."CreatedAt",
	r."CreatedBy",
	r."UpdatedAt",
	r."UpdatedBy"
FROM
	"UpsertTest" r
WHERE
	r."Name" = 'alice'
FETCH NEXT 2 ROWS ONLY

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Name",
	r."Version" as "Version_1",
	r."CreatedAt",
	r."CreatedBy",
	r."UpdatedAt",
	r."UpdatedBy"
FROM
	"UpsertTest" r
WHERE
	r."Name" = 'bob'
FETCH NEXT 2 ROWS ONLY

