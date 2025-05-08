BeforeExecute
-- DB2 DB2.LUW DB2LUW

MERGE INTO "ReviewIndexes" "Target"
USING (VALUES
	(1)
) "Source"
(
	"source_Id"
)
ON ("Target"."Id" = "Source"."source_Id")

WHEN MATCHED AND "Target"."Id" <> "Source"."source_Id" OR "Source"."source_Id" IS NULL THEN
UPDATE
SET
	"Id" = 2,
	"Value" = '3'

