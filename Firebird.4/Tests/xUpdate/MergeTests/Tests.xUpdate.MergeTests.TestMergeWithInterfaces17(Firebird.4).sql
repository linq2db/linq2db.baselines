BeforeExecute
-- Firebird.4 Firebird4

MERGE INTO "ReviewIndexes" "Target"
USING (
	SELECT 1 AS "source_Id" FROM rdb$database) "Source"
(
	"source_Id"
)
ON ("Target"."Id" = "Source"."source_Id")
WHEN MATCHED AND "Target"."Id" = "Source"."source_Id" THEN DELETE

