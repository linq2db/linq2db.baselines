-- Oracle.12.Managed Oracle.Managed Oracle12

MERGE INTO "UpsertTest" Target
USING (
	SELECT 1 AS "Id", 'one' AS "Name", 2 AS "Version_1", NULL AS "CreatedAt", NULL AS "CreatedBy", NULL AS "UpdatedAt", NULL AS "UpdatedBy" FROM sys.dual
	UNION ALL
	SELECT 2, 'two', 1, NULL, NULL, NULL, NULL FROM sys.dual) "Source"
ON (Target."Id" = "Source"."Id")

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
	"Name" = "Source"."Name",
	"Version" = "Source"."Version_1",
	"CreatedAt" = "Source"."CreatedAt",
	"CreatedBy" = "Source"."CreatedBy",
	"UpdatedAt" = "Source"."UpdatedAt",
	"UpdatedBy" = "Source"."UpdatedBy"

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name",
	t1."Version",
	t1."CreatedAt",
	t1."CreatedBy",
	t1."UpdatedAt",
	t1."UpdatedBy"
FROM
	"UpsertTest" t1
ORDER BY
	t1."Id"

