-- SapHana.Odbc SapHanaOdbc

MERGE INTO "ReviewIndexes" "Target"
USING (
	SELECT 1 AS "Id" FROM DUMMY) "Source"
ON ("Target"."Id" = "Source"."Id")

WHEN NOT MATCHED AND "Source"."Id" > 1 THEN
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

