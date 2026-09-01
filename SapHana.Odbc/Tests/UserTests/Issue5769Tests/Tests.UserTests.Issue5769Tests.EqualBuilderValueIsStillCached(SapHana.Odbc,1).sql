-- SapHana.Odbc SapHanaOdbc
SELECT
	"r"."Id",
	"r"."Value"
FROM
	"JsonData" "r"
WHERE
	'sub.name' = "r"."Value"

