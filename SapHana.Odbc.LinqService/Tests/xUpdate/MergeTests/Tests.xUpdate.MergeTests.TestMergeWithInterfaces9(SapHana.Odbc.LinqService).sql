BeforeExecute
-- SapHana.Odbc SapHanaOdbc

MERGE INTO "ReviewIndexes" "Target"
USING (
	SELECT 1 AS "source_Id", '2' AS "source_Value" FROM DUMMY) "Source"
ON ("Target"."Id" = "Source"."source_Id")

WHEN MATCHED AND "Target"."Id" <> "Source"."source_Id" OR "Source"."source_Id" IS NULL THEN
UPDATE
SET
	"Value" = "Source"."source_Value"

