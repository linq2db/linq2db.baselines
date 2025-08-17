BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

MERGE INTO "ReviewIndexes" "Target"
USING (VALUES
	(1)
) "Source"
(
	"Id"
)
ON ("Target"."Id" = "Source"."Id")

WHEN NOT MATCHED BY SOURCE AND "Target"."Id" = 3 THEN UPDATE
SET
	"Id" = 2,
	"Value" = '3'

