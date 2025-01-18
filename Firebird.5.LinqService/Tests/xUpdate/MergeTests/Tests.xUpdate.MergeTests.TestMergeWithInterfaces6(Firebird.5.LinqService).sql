BeforeExecute
-- Firebird.5 Firebird4

MERGE INTO "ReviewIndexes" "Target"
USING (
	SELECT 1 AS "source_Id", CAST('2' AS VARCHAR(1)) AS "source_Value" FROM rdb$database) "Source"
(
	"source_Id",
	"source_Value"
)
ON ("Target"."Id" = "Source"."source_Id")

WHEN NOT MATCHED AND "Source"."source_Id" > 1 THEN
INSERT
(
	"Id",
	"Value"
)
VALUES
(
	"Source"."source_Id",
	"Source"."source_Value"
)

