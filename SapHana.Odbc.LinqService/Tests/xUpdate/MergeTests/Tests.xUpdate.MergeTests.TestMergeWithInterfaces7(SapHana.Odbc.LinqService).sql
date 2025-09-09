BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

MERGE INTO "ReviewIndexes" "Target"
USING (
	SELECT 1 AS "Id" FROM DUMMY) "Source"
ON ("Target"."Id" = "Source"."Id")

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Value"
)
VALUES
(
	2,
	'3'
)

