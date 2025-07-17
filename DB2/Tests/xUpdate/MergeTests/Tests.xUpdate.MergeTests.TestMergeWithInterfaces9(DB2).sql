BeforeExecute
-- DB2 DB2.LUW DB2LUW

MERGE INTO "ReviewIndexes" "Target"
USING (VALUES
	(1,'2')
) "Source"
(
	"Id",
	"Value_1"
)
ON ("Target"."Id" = "Source"."Id")

WHEN MATCHED AND "Target"."Id" <> "Source"."Id" THEN
UPDATE
SET
	"Value" = "Source"."Value_1"

