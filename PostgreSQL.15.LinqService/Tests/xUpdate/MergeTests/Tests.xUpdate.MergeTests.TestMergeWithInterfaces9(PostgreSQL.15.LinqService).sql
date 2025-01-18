BeforeExecute
-- PostgreSQL.15 PostgreSQL

MERGE INTO "ReviewIndexes" "Target"
USING (VALUES
	(1,'2')
) "Source"
(
	"source_Id",
	"source_Value"
)
ON ("Target"."Id" = "Source"."source_Id")

WHEN MATCHED AND "Target"."Id" <> "Source"."source_Id" THEN
UPDATE
SET
	"Value" = "Source"."source_Value"

