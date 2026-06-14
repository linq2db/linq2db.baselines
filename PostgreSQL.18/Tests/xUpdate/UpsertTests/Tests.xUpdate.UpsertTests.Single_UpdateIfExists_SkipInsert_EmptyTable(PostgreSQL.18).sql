-- PostgreSQL.18 PostgreSQL

MERGE INTO "UpsertTest" "Target"
USING (VALUES
	(1,'x',1,NULL::TimeStamp,NULL::text,NULL::TimeStamp,NULL::text)
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

WHEN MATCHED THEN
UPDATE
SET
	"Name" = "Source"."Name",
	"Version" = "Source"."Version_1",
	"CreatedAt" = "Source"."CreatedAt",
	"CreatedBy" = "Source"."CreatedBy",
	"UpdatedAt" = "Source"."UpdatedAt",
	"UpdatedBy" = "Source"."UpdatedBy"

-- PostgreSQL.18 PostgreSQL

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"UpsertTest" r
		WHERE
			r."Id" = 1
	)

