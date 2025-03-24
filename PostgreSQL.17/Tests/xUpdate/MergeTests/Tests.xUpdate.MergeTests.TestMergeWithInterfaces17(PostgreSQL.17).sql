BeforeExecute
--  PostgreSQL.17 PostgreSQL.15 PostgreSQL

MERGE INTO "ReviewIndexes" "Target"
USING (VALUES
	(1)
) "Source"
(
	"source_Id"
)
ON ("Target"."Id" = "Source"."source_Id")
WHEN MATCHED AND "Target"."Id" = "Source"."source_Id" THEN DELETE

