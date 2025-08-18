BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

MERGE INTO "ReviewIndexes" "Target"
USING (
	SELECT 1 AS "Id", '2' AS "Value_1" FROM DUMMY) "Source"
ON ("Target"."Id" = "Source"."Id")

WHEN NOT MATCHED AND "Source"."Id" > 1 THEN
INSERT
(
	"Id",
	"Value"
)
VALUES
(
	"Source"."Id",
	"Source"."Value_1"
)

