-- SapHana.Odbc SapHanaOdbc
SELECT
	"i"."Id"
FROM
	"InEnumTable" "i"
WHERE
	"i"."Value" IN (1, 3)
ORDER BY
	"i"."Id"

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"InEnumTable" "t1"

