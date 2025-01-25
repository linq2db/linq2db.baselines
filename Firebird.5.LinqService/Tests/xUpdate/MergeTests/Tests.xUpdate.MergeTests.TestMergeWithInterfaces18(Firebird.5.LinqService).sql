BeforeExecute
-- Firebird.5 Firebird4

MERGE INTO "ReviewIndexes" "Target"
USING (
	SELECT 1 AS "source_Id" FROM rdb$database) "Source"
(
	"source_Id"
)
ON ("Target"."Id" = "Source"."source_Id")

WHEN NOT MATCHED BY SOURCE THEN UPDATE
SET
	"Id" = 2,
	"Value" = '3'

