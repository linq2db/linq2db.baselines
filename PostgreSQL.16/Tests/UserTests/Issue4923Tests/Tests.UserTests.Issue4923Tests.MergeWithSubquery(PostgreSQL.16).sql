-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

MERGE INTO "User" "Target"
USING (
	SELECT
		t1."Name",
		t1."DepartmentName",
		(
			SELECT
				d."Id"
			FROM
				"Department" d
			WHERE
				d."Name" = t1."DepartmentName" OR d."Name" IS NULL AND t1."DepartmentName" IS NULL
			LIMIT 1
		) as "Id"
	FROM
		(VALUES
			('U1','D1')
		) t1("Name", "DepartmentName")
) "Source"
(
	"Name",
	"DepartmentName",
	"Id"
)
ON ("Target"."Name" = "Source"."Name" OR "Target"."Name" IS NULL AND "Source"."Name" IS NULL)

WHEN NOT MATCHED THEN
INSERT
(
	"Name",
	"DepartmentId"
)
VALUES
(
	"Source"."Name",
	"Source"."Id"
)

WHEN MATCHED THEN
UPDATE
SET
	"DepartmentId" = "Source"."Id"

