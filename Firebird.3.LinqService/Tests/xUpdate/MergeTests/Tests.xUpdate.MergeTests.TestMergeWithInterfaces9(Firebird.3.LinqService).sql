BeforeExecute
-- Firebird.3 Firebird3

MERGE INTO "ReviewIndexes" "Target"
USING (
	SELECT 1 AS "source_Id", CAST('2' AS VARCHAR(1)) AS "source_Value" FROM rdb$database) "Source"
(
	"source_Id",
	"source_Value"
)
ON ("Target"."Id" = "Source"."source_Id")

WHEN MATCHED AND "Target"."Id" <> "Source"."source_Id" THEN
UPDATE
SET
	"Value" = "Source"."source_Value"

