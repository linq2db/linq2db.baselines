-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

MERGE INTO "UpsertTest" "Target"
USING (VALUES
	('alice',99,42,NULL::TimeStamp,NULL::text,NULL::TimeStamp,NULL::text)
) "Source"
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

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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
	r."Name" = 'alice'
LIMIT 2

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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
	r."Name" = 'bob'
LIMIT 2

