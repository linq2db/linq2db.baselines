-- PostgreSQL.18 PostgreSQL

MERGE INTO "ReviewIndexes" "Target"
USING (VALUES
	(1)
) "Source"
(
	"Id"
)
ON ("Target"."Id" = "Source"."Id")

WHEN MATCHED AND "Target"."Id" <> "Source"."Id" THEN
UPDATE
SET
	"Id" = 2,
	"Value" = '3'

