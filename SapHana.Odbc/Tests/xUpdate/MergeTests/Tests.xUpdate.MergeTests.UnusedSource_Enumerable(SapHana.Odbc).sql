-- SapHana.Odbc SapHanaOdbc

MERGE INTO "UnusedSourceTable" "Target"
USING (
	SELECT 1 FROM DUMMY) "Source"
ON ("Target"."Value" = 5)

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Value"
)
VALUES
(
	2,
	5
)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"r"."Id",
	"r"."Value"
FROM
	"UnusedSourceTable" "r"
WHERE
	"r"."Id" <> 1
LIMIT 2

