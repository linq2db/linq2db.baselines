BeforeExecute
-- Firebird.5 Firebird4

MERGE INTO "ReviewIndexes" "Target"
USING (
	SELECT 1 AS "Id" FROM rdb$database) "Source"
(
	"Id"
)
ON ("Target"."Id" = "Source"."Id")
WHEN MATCHED THEN DELETE

