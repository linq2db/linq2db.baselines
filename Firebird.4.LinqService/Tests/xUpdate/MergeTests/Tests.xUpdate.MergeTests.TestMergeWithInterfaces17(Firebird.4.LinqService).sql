BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

MERGE INTO "ReviewIndexes" "Target"
USING (
	SELECT 1 AS "Id" FROM rdb$database) "Source"
(
	"Id"
)
ON ("Target"."Id" = "Source"."Id")
WHEN MATCHED AND "Target"."Id" = "Source"."Id" THEN DELETE

