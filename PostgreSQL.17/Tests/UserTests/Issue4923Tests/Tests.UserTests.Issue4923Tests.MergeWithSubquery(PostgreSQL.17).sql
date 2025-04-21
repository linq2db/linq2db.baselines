BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

MERGE INTO "User" "Target"
USING (VALUES
	('U1','D1')
) "Source"
(
	"source_Name",
	"source_DepartmentName"
)
ON ("Target"."Name" = "Source"."source_Name" OR "Target"."Name" IS NULL AND "Source"."source_Name" IS NULL)

WHEN NOT MATCHED THEN
INSERT
(
	"Name",
	"DepartmentId"
)
VALUES
(
	"Source"."source_Name",
	(
		SELECT
			d."Id"
		FROM
			"Department" d
		WHERE
			d."Name" = "Source"."source_DepartmentName" OR d."Name" IS NULL AND "Source"."source_DepartmentName" IS NULL
		LIMIT 1
	)
)

WHEN MATCHED THEN
UPDATE
SET
	"DepartmentId" = (
		SELECT
			d."Id"
		FROM
			"Department" d
		WHERE
			d."Name" = "Source"."source_DepartmentName" OR d."Name" IS NULL AND "Source"."source_DepartmentName" IS NULL
		LIMIT 1
	)

