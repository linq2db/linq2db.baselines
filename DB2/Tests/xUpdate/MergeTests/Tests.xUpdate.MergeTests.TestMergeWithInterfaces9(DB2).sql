BeforeExecute
-- DB2 DB2.LUW DB2LUW

MERGE INTO "ReviewIndexes" "Target"
USING (VALUES
	(1,'2')
) "Source"
(
	"source_Id",
	"source_Value"
)
ON ("Target"."Id" = "Source"."source_Id")

WHEN MATCHED AND "Target"."Id" <> "Source"."source_Id" OR "Source"."source_Id" IS NULL THEN
UPDATE
SET
	"Value" = "Source"."source_Value"

